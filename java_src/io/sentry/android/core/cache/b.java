package io.sentry.android.core.cache;

import io.sentry.UncaughtExceptionHandlerIntegration;
import io.sentry.a4;
import io.sentry.android.core.AnrV2Integration;
import io.sentry.android.core.SentryAndroidOptions;
import io.sentry.android.core.performance.g;
import io.sentry.android.core.performance.h;
import io.sentry.c0;
import io.sentry.cache.f;
import io.sentry.j5;
import io.sentry.s5;
import io.sentry.transport.p;
import io.sentry.util.e;
import io.sentry.util.j;
import io.sentry.util.q;
import java.io.File;
import java.io.FileOutputStream;
/* loaded from: classes2.dex */
public final class b extends f {

    /* renamed from: h  reason: collision with root package name */
    private final p f22200h;

    public b(SentryAndroidOptions sentryAndroidOptions) {
        this(sentryAndroidOptions, io.sentry.android.core.internal.util.b.b());
    }

    public static boolean Y(s5 s5Var) {
        String outboxPath = s5Var.getOutboxPath();
        if (outboxPath == null) {
            s5Var.getLogger().c(j5.DEBUG, "Outbox path is null, the startup crash marker file does not exist", new Object[0]);
            return false;
        }
        File file = new File(outboxPath, "startup_crash");
        try {
            boolean exists = file.exists();
            if (exists && !file.delete()) {
                s5Var.getLogger().c(j5.ERROR, "Failed to delete the startup crash marker file. %s.", file.getAbsolutePath());
            }
            return exists;
        } catch (Throwable th) {
            s5Var.getLogger().b(j5.ERROR, "Error reading/deleting the startup crash marker file on the disk", th);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Z(SentryAndroidOptions sentryAndroidOptions, AnrV2Integration.b bVar) {
        Long c10 = bVar.c();
        sentryAndroidOptions.getLogger().c(j5.DEBUG, "Writing last reported ANR marker with timestamp %d", c10);
        b0(c10);
    }

    public static Long a0(s5 s5Var) {
        File file = new File((String) q.c(s5Var.getCacheDirPath(), "Cache dir path should be set for getting ANRs reported"), "last_anr_report");
        try {
        } catch (Throwable th) {
            s5Var.getLogger().b(j5.ERROR, "Error reading last ANR marker", th);
        }
        if (file.exists() && file.canRead()) {
            String c10 = e.c(file);
            if (c10.equals("null")) {
                return null;
            }
            return Long.valueOf(Long.parseLong(c10.trim()));
        }
        s5Var.getLogger().c(j5.DEBUG, "Last ANR marker does not exist. %s.", file.getAbsolutePath());
        return null;
    }

    private void b0(Long l10) {
        String cacheDirPath = this.f22928a.getCacheDirPath();
        if (cacheDirPath == null) {
            this.f22928a.getLogger().c(j5.DEBUG, "Cache dir path is null, the ANR marker will not be written", new Object[0]);
            return;
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(new File(cacheDirPath, "last_anr_report"));
            fileOutputStream.write(String.valueOf(l10).getBytes(f22927e));
            fileOutputStream.flush();
            fileOutputStream.close();
        } catch (Throwable th) {
            this.f22928a.getLogger().b(j5.ERROR, "Error writing the ANR marker to the disk", th);
        }
    }

    private void c0() {
        String outboxPath = this.f22928a.getOutboxPath();
        if (outboxPath == null) {
            this.f22928a.getLogger().c(j5.DEBUG, "Outbox path is null, the startup crash marker file will not be written", new Object[0]);
            return;
        }
        try {
            new File(outboxPath, "startup_crash").createNewFile();
        } catch (Throwable th) {
            this.f22928a.getLogger().b(j5.ERROR, "Error writing the startup crash marker file to the disk", th);
        }
    }

    @Override // io.sentry.cache.f, io.sentry.cache.g
    public void W(a4 a4Var, c0 c0Var) {
        super.W(a4Var, c0Var);
        final SentryAndroidOptions sentryAndroidOptions = (SentryAndroidOptions) this.f22928a;
        h q10 = g.p().q();
        if (j.h(c0Var, UncaughtExceptionHandlerIntegration.a.class) && q10.s()) {
            long a10 = this.f22200h.a() - q10.p();
            if (a10 <= sentryAndroidOptions.getStartupCrashDurationThresholdMillis()) {
                sentryAndroidOptions.getLogger().c(j5.DEBUG, "Startup Crash detected %d milliseconds after SDK init. Writing a startup crash marker file to disk.", Long.valueOf(a10));
                c0();
            }
        }
        j.o(c0Var, AnrV2Integration.b.class, new j.a() { // from class: io.sentry.android.core.cache.a
            @Override // io.sentry.util.j.a
            public final void accept(Object obj) {
                b.this.Z(sentryAndroidOptions, (AnrV2Integration.b) obj);
            }
        });
    }

    b(SentryAndroidOptions sentryAndroidOptions, p pVar) {
        super(sentryAndroidOptions, (String) q.c(sentryAndroidOptions.getCacheDirPath(), "cacheDirPath must not be null"), sentryAndroidOptions.getMaxCacheItems());
        this.f22200h = pVar;
    }
}
