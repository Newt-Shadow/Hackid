package io.sentry.android.core;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.app.ApplicationExitInfo;
import android.content.Context;
import io.sentry.ILogger;
import io.sentry.j5;
import io.sentry.s5;
import io.sentry.z4;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
@SuppressLint({"NewApi"})
/* loaded from: classes2.dex */
public class AnrV2Integration implements io.sentry.e1, Closeable {

    /* renamed from: d  reason: collision with root package name */
    static final long f22043d = TimeUnit.DAYS.toMillis(91);

    /* renamed from: a  reason: collision with root package name */
    private final Context f22044a;

    /* renamed from: b  reason: collision with root package name */
    private final io.sentry.transport.p f22045b;

    /* renamed from: c  reason: collision with root package name */
    private SentryAndroidOptions f22046c;

    /* loaded from: classes2.dex */
    static class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final Context f22047a;

        /* renamed from: b  reason: collision with root package name */
        private final io.sentry.o0 f22048b;

        /* renamed from: c  reason: collision with root package name */
        private final SentryAndroidOptions f22049c;

        /* renamed from: d  reason: collision with root package name */
        private final long f22050d;

        a(Context context, io.sentry.o0 o0Var, SentryAndroidOptions sentryAndroidOptions, io.sentry.transport.p pVar) {
            this.f22047a = context;
            this.f22048b = o0Var;
            this.f22049c = sentryAndroidOptions;
            this.f22050d = pVar.a() - AnrV2Integration.f22043d;
        }

        private byte[] a(InputStream inputStream) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = inputStream.read(bArr, 0, 1024);
                    if (read != -1) {
                        byteArrayOutputStream.write(bArr, 0, read);
                    } else {
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        byteArrayOutputStream.close();
                        return byteArray;
                    }
                }
            } catch (Throwable th) {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }

        private c b(ApplicationExitInfo applicationExitInfo, boolean z10) {
            InputStream traceInputStream;
            try {
                traceInputStream = applicationExitInfo.getTraceInputStream();
                if (traceInputStream == null) {
                    c cVar = new c(c.a.NO_DUMP);
                    if (traceInputStream != null) {
                        traceInputStream.close();
                    }
                    return cVar;
                }
                byte[] a10 = a(traceInputStream);
                traceInputStream.close();
                try {
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new ByteArrayInputStream(a10)));
                    List f10 = new io.sentry.android.core.internal.threaddump.c(this.f22049c, z10).f(io.sentry.android.core.internal.threaddump.b.c(bufferedReader));
                    if (f10.isEmpty()) {
                        c cVar2 = new c(c.a.NO_DUMP);
                        bufferedReader.close();
                        return cVar2;
                    }
                    c cVar3 = new c(c.a.DUMP, a10, f10);
                    bufferedReader.close();
                    return cVar3;
                } catch (Throwable th) {
                    this.f22049c.getLogger().b(j5.WARNING, "Failed to parse ANR thread dump", th);
                    return new c(c.a.ERROR, a10);
                }
            } catch (Throwable th2) {
                this.f22049c.getLogger().b(j5.WARNING, "Failed to read ANR thread dump", th2);
                return new c(c.a.NO_DUMP);
            }
        }

        private void c(ApplicationExitInfo applicationExitInfo, boolean z10) {
            long timestamp;
            int importance;
            boolean z11;
            byte[] bArr;
            String applicationExitInfo2;
            timestamp = applicationExitInfo.getTimestamp();
            importance = applicationExitInfo.getImportance();
            if (importance != 100) {
                z11 = true;
            } else {
                z11 = false;
            }
            boolean z12 = z11;
            c b10 = b(applicationExitInfo, z12);
            if (b10.f22054a == c.a.NO_DUMP) {
                ILogger logger = this.f22049c.getLogger();
                j5 j5Var = j5.WARNING;
                applicationExitInfo2 = applicationExitInfo.toString();
                logger.c(j5Var, "Not reporting ANR event as there was no thread dump for the ANR %s", applicationExitInfo2);
                return;
            }
            b bVar = new b(this.f22049c.getFlushTimeoutMillis(), this.f22049c.getLogger(), timestamp, z10, z12);
            io.sentry.c0 e10 = io.sentry.util.j.e(bVar);
            z4 z4Var = new z4();
            c.a aVar = b10.f22054a;
            if (aVar == c.a.ERROR) {
                io.sentry.protocol.j jVar = new io.sentry.protocol.j();
                jVar.d("Sentry Android SDK failed to parse system thread dump for this ANR. We recommend enabling [SentryOptions.isAttachAnrThreadDump] option to attach the thread dump as plain text and report this issue on GitHub.");
                z4Var.C0(jVar);
            } else if (aVar == c.a.DUMP) {
                z4Var.E0(b10.f22056c);
            }
            z4Var.B0(j5.FATAL);
            z4Var.F0(io.sentry.j.d(timestamp));
            if (this.f22049c.isAttachAnrThreadDump() && (bArr = b10.f22055b) != null) {
                e10.n(io.sentry.b.b(bArr));
            }
            if (!this.f22048b.D(z4Var, e10).equals(io.sentry.protocol.r.f23462b) && !bVar.e()) {
                this.f22049c.getLogger().c(j5.WARNING, "Timed out waiting to flush ANR event to disk. Event: %s", z4Var.G());
            }
        }

        private void d(List list, Long l10) {
            int reason;
            long timestamp;
            long timestamp2;
            Collections.reverse(list);
            for (Object obj : list) {
                ApplicationExitInfo a10 = q7.d1.a(obj);
                reason = a10.getReason();
                if (reason == 6) {
                    timestamp = a10.getTimestamp();
                    if (timestamp < this.f22050d) {
                        this.f22049c.getLogger().c(j5.DEBUG, "ANR happened too long ago %s.", a10);
                    } else {
                        if (l10 != null) {
                            timestamp2 = a10.getTimestamp();
                            if (timestamp2 <= l10.longValue()) {
                                this.f22049c.getLogger().c(j5.DEBUG, "ANR has already been reported %s.", a10);
                            }
                        }
                        c(a10, false);
                    }
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            List historicalProcessExitReasons;
            long timestamp;
            long timestamp2;
            int reason;
            ApplicationExitInfo applicationExitInfo = null;
            historicalProcessExitReasons = ((ActivityManager) this.f22047a.getSystemService("activity")).getHistoricalProcessExitReasons(null, 0, 0);
            if (historicalProcessExitReasons.size() == 0) {
                this.f22049c.getLogger().c(j5.DEBUG, "No records in historical exit reasons.", new Object[0]);
                return;
            }
            io.sentry.cache.g envelopeDiskCache = this.f22049c.getEnvelopeDiskCache();
            if ((envelopeDiskCache instanceof io.sentry.cache.f) && this.f22049c.isEnableAutoSessionTracking()) {
                io.sentry.cache.f fVar = (io.sentry.cache.f) envelopeDiskCache;
                if (!fVar.R()) {
                    this.f22049c.getLogger().c(j5.WARNING, "Timed out waiting to flush previous session to its own file.", new Object[0]);
                    fVar.J();
                }
            }
            List arrayList = new ArrayList(historicalProcessExitReasons);
            Long a02 = io.sentry.android.core.cache.b.a0(this.f22049c);
            Iterator it = arrayList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                ApplicationExitInfo a10 = q7.d1.a(it.next());
                reason = a10.getReason();
                if (reason == 6) {
                    arrayList.remove(a10);
                    applicationExitInfo = a10;
                    break;
                }
            }
            if (applicationExitInfo != null) {
                timestamp = applicationExitInfo.getTimestamp();
                if (timestamp < this.f22050d) {
                    this.f22049c.getLogger().c(j5.DEBUG, "Latest ANR happened too long ago, returning early.", new Object[0]);
                    return;
                }
                if (a02 != null) {
                    timestamp2 = applicationExitInfo.getTimestamp();
                    if (timestamp2 <= a02.longValue()) {
                        this.f22049c.getLogger().c(j5.DEBUG, "Latest ANR has already been reported, returning early.", new Object[0]);
                        return;
                    }
                }
                if (this.f22049c.isReportHistoricalAnrs()) {
                    d(arrayList, a02);
                }
                c(applicationExitInfo, true);
                return;
            }
            this.f22049c.getLogger().c(j5.DEBUG, "No ANRs have been found in the historical exit reasons list.", new Object[0]);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends io.sentry.hints.d implements io.sentry.hints.c, io.sentry.hints.a {

        /* renamed from: d  reason: collision with root package name */
        private final long f22051d;

        /* renamed from: e  reason: collision with root package name */
        private final boolean f22052e;

        /* renamed from: f  reason: collision with root package name */
        private final boolean f22053f;

        public b(long j10, ILogger iLogger, long j11, boolean z10, boolean z11) {
            super(j10, iLogger);
            this.f22051d = j11;
            this.f22052e = z10;
            this.f22053f = z11;
        }

        @Override // io.sentry.hints.c
        public boolean a() {
            return this.f22052e;
        }

        @Override // io.sentry.hints.a
        public Long c() {
            return Long.valueOf(this.f22051d);
        }

        @Override // io.sentry.hints.a
        public boolean d() {
            return false;
        }

        @Override // io.sentry.hints.f
        public boolean f(io.sentry.protocol.r rVar) {
            return true;
        }

        @Override // io.sentry.hints.a
        public String g() {
            if (this.f22053f) {
                return "anr_background";
            }
            return "anr_foreground";
        }

        @Override // io.sentry.hints.f
        public void h(io.sentry.protocol.r rVar) {
        }
    }

    public AnrV2Integration(Context context) {
        this(context, io.sentry.transport.n.b());
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        SentryAndroidOptions sentryAndroidOptions = this.f22046c;
        if (sentryAndroidOptions != null) {
            sentryAndroidOptions.getLogger().c(j5.DEBUG, "AnrV2Integration removed.", new Object[0]);
        }
    }

    @Override // io.sentry.e1
    public void f(io.sentry.o0 o0Var, s5 s5Var) {
        SentryAndroidOptions sentryAndroidOptions;
        if (s5Var instanceof SentryAndroidOptions) {
            sentryAndroidOptions = (SentryAndroidOptions) s5Var;
        } else {
            sentryAndroidOptions = null;
        }
        SentryAndroidOptions sentryAndroidOptions2 = (SentryAndroidOptions) io.sentry.util.q.c(sentryAndroidOptions, "SentryAndroidOptions is required");
        this.f22046c = sentryAndroidOptions2;
        sentryAndroidOptions2.getLogger().c(j5.DEBUG, "AnrIntegration enabled: %s", Boolean.valueOf(this.f22046c.isAnrEnabled()));
        if (this.f22046c.getCacheDirPath() == null) {
            this.f22046c.getLogger().c(j5.INFO, "Cache dir is not set, unable to process ANRs", new Object[0]);
        } else if (this.f22046c.isAnrEnabled()) {
            try {
                s5Var.getExecutorService().submit(new a(this.f22044a, o0Var, this.f22046c, this.f22045b));
            } catch (Throwable th) {
                s5Var.getLogger().b(j5.DEBUG, "Failed to start AnrProcessor.", th);
            }
            s5Var.getLogger().c(j5.DEBUG, "AnrV2Integration installed.", new Object[0]);
            io.sentry.util.k.a("AnrV2");
        }
    }

    AnrV2Integration(Context context, io.sentry.transport.p pVar) {
        this.f22044a = x0.h(context);
        this.f22045b = pVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        final a f22054a;

        /* renamed from: b  reason: collision with root package name */
        final byte[] f22055b;

        /* renamed from: c  reason: collision with root package name */
        final List f22056c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public enum a {
            DUMP,
            NO_DUMP,
            ERROR
        }

        c(a aVar) {
            this.f22054a = aVar;
            this.f22055b = null;
            this.f22056c = null;
        }

        c(a aVar, byte[] bArr) {
            this.f22054a = aVar;
            this.f22055b = bArr;
            this.f22056c = null;
        }

        c(a aVar, byte[] bArr, List list) {
            this.f22054a = aVar;
            this.f22055b = bArr;
            this.f22056c = list;
        }
    }
}
