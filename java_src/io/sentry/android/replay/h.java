package io.sentry.android.replay;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import io.sentry.j5;
import io.sentry.s5;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.c0;
import rd.b0;
/* loaded from: classes2.dex */
public final class h implements Closeable {

    /* renamed from: j */
    public static final a f22732j = new a(null);

    /* renamed from: k */
    public static final int f22733k = 8;

    /* renamed from: a */
    private final s5 f22734a;

    /* renamed from: b */
    private final io.sentry.protocol.r f22735b;

    /* renamed from: c */
    private final AtomicBoolean f22736c;

    /* renamed from: d */
    private final Object f22737d;

    /* renamed from: e */
    private io.sentry.android.replay.video.c f22738e;

    /* renamed from: f */
    private final xc.d f22739f;

    /* renamed from: g */
    private final List f22740g;

    /* renamed from: h */
    private final LinkedHashMap f22741h;

    /* renamed from: i */
    private final xc.d f22742i;

    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: io.sentry.android.replay.h$a$a */
        /* loaded from: classes2.dex */
        public static final class C0203a implements Comparator {
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int a10;
                a10 = zc.b.a(Long.valueOf(((i) obj).c()), Long.valueOf(((i) obj2).c()));
                return a10;
            }
        }

        /* loaded from: classes2.dex */
        public static final class b implements Comparator {
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int a10;
                a10 = zc.b.a(Long.valueOf(((io.sentry.rrweb.b) obj).e()), Long.valueOf(((io.sentry.rrweb.b) obj2).e()));
                return a10;
            }
        }

        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static final boolean b(h cache, File file, String name) {
            boolean w10;
            String n10;
            Long o10;
            kotlin.jvm.internal.m.e(cache, "$cache");
            kotlin.jvm.internal.m.d(name, "name");
            w10 = rd.y.w(name, ".jpg", false, 2, null);
            if (w10) {
                File file2 = new File(file, name);
                n10 = gd.k.n(file2);
                o10 = rd.x.o(n10);
                if (o10 != null) {
                    h.f(cache, file2, o10.longValue(), null, 4, null);
                }
            }
            return false;
        }

        /* JADX WARN: Code restructure failed: missing block: B:198:0x0207, code lost:
            if (r7 != null) goto L77;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final io.sentry.android.replay.c c(io.sentry.s5 r26, io.sentry.protocol.r r27, id.l r28) {
            /*
                Method dump skipped, instructions count: 588
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.sentry.android.replay.h.a.c(io.sentry.s5, io.sentry.protocol.r, id.l):io.sentry.android.replay.c");
        }

        public final File d(s5 options, io.sentry.protocol.r replayId) {
            boolean z10;
            kotlin.jvm.internal.m.e(options, "options");
            kotlin.jvm.internal.m.e(replayId, "replayId");
            String cacheDirPath = options.getCacheDirPath();
            if (cacheDirPath != null && cacheDirPath.length() != 0) {
                z10 = false;
            } else {
                z10 = true;
            }
            if (z10) {
                options.getLogger().c(j5.WARNING, "SentryOptions.cacheDirPath is not set, session replay is no-op", new Object[0]);
                return null;
            }
            String cacheDirPath2 = options.getCacheDirPath();
            kotlin.jvm.internal.m.b(cacheDirPath2);
            File file = new File(cacheDirPath2, "replay_" + replayId);
            file.mkdirs();
            return file;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class b extends kotlin.jvm.internal.n implements id.a {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b() {
            super(0);
            h.this = r1;
        }

        @Override // id.a
        /* renamed from: b */
        public final File invoke() {
            if (h.this.v() == null) {
                return null;
            }
            File file = new File(h.this.v(), ".ongoing_segment");
            if (!file.exists()) {
                file.createNewFile();
            }
            return file;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class c extends kotlin.jvm.internal.n implements id.l {

        /* renamed from: e */
        public static final c f22744e = new c();

        c() {
            super(1);
        }

        @Override // id.l
        /* renamed from: a */
        public final CharSequence invoke(Map.Entry entry) {
            kotlin.jvm.internal.m.e(entry, "<name for destructuring parameter 0>");
            return ((String) entry.getKey()) + '=' + ((String) entry.getValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class d extends kotlin.jvm.internal.n implements id.a {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d() {
            super(0);
            h.this = r1;
        }

        @Override // id.a
        /* renamed from: b */
        public final File invoke() {
            return h.f22732j.d(h.this.f22734a, h.this.f22735b);
        }
    }

    /* loaded from: classes2.dex */
    public static final class e extends kotlin.jvm.internal.n implements id.l {

        /* renamed from: e */
        final /* synthetic */ long f22746e;

        /* renamed from: f */
        final /* synthetic */ h f22747f;

        /* renamed from: g */
        final /* synthetic */ c0 f22748g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(long j10, h hVar, c0 c0Var) {
            super(1);
            this.f22746e = j10;
            this.f22747f = hVar;
            this.f22748g = c0Var;
        }

        @Override // id.l
        /* renamed from: a */
        public final Boolean invoke(i it) {
            kotlin.jvm.internal.m.e(it, "it");
            if (it.c() < this.f22746e) {
                this.f22747f.k(it.b());
                return Boolean.TRUE;
            }
            c0 c0Var = this.f22748g;
            if (c0Var.f24971a == null) {
                c0Var.f24971a = it.a();
            }
            return Boolean.FALSE;
        }
    }

    public h(s5 options, io.sentry.protocol.r replayId) {
        xc.d a10;
        xc.d a11;
        kotlin.jvm.internal.m.e(options, "options");
        kotlin.jvm.internal.m.e(replayId, "replayId");
        this.f22734a = options;
        this.f22735b = replayId;
        this.f22736c = new AtomicBoolean(false);
        this.f22737d = new Object();
        a10 = xc.f.a(new d());
        this.f22739f = a10;
        this.f22740g = new ArrayList();
        this.f22741h = new LinkedHashMap();
        a11 = xc.f.a(new b());
        this.f22742i = a11;
    }

    public static /* synthetic */ void f(h hVar, File file, long j10, String str, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            str = null;
        }
        hVar.e(file, j10, str);
    }

    public static /* synthetic */ io.sentry.android.replay.b j(h hVar, long j10, long j11, int i10, int i11, int i12, int i13, int i14, File file, int i15, Object obj) {
        File file2;
        if ((i15 & 128) != 0) {
            File v10 = hVar.v();
            file2 = new File(v10, i10 + ".mp4");
        } else {
            file2 = file;
        }
        return hVar.h(j10, j11, i10, i11, i12, i13, i14, file2);
    }

    public final void k(File file) {
        try {
            if (!file.delete()) {
                this.f22734a.getLogger().c(j5.ERROR, "Failed to delete replay frame: %s", file.getAbsolutePath());
            }
        } catch (Throwable th) {
            this.f22734a.getLogger().a(j5.ERROR, th, "Failed to delete replay frame: %s", file.getAbsolutePath());
        }
    }

    private final boolean q(i iVar) {
        boolean z10 = false;
        if (iVar == null) {
            return false;
        }
        try {
            Bitmap bitmap = BitmapFactory.decodeFile(iVar.b().getAbsolutePath());
            synchronized (this.f22737d) {
                io.sentry.android.replay.video.c cVar = this.f22738e;
                if (cVar != null) {
                    kotlin.jvm.internal.m.d(bitmap, "bitmap");
                    cVar.b(bitmap);
                    xc.t tVar = xc.t.f32733a;
                }
            }
            bitmap.recycle();
            z10 = true;
            return true;
        } catch (Throwable th) {
            this.f22734a.getLogger().b(j5.WARNING, "Unable to decode bitmap and encode it into a video, skipping frame", th);
            return z10;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this.f22737d) {
            io.sentry.android.replay.video.c cVar = this.f22738e;
            if (cVar != null) {
                cVar.i();
            }
            this.f22738e = null;
            xc.t tVar = xc.t.f32733a;
        }
        this.f22736c.set(true);
    }

    public final void e(File screenshot, long j10, String str) {
        kotlin.jvm.internal.m.e(screenshot, "screenshot");
        this.f22740g.add(new i(screenshot, j10, str));
    }

    public final void g(Bitmap bitmap, long j10, String str) {
        kotlin.jvm.internal.m.e(bitmap, "bitmap");
        if (v() != null && !bitmap.isRecycled()) {
            File v10 = v();
            if (v10 != null) {
                v10.mkdirs();
            }
            File v11 = v();
            File file = new File(v11, j10 + ".jpg");
            file.createNewFile();
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                bitmap.compress(Bitmap.CompressFormat.JPEG, this.f22734a.getSessionReplay().h().screenshotQuality, fileOutputStream);
                fileOutputStream.flush();
                xc.t tVar = xc.t.f32733a;
                gd.b.a(fileOutputStream, null);
                e(file, j10, str);
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    gd.b.a(fileOutputStream, th);
                    throw th2;
                }
            }
        }
    }

    public final io.sentry.android.replay.b h(long j10, long j11, int i10, int i11, int i12, int i13, int i14, File videoFile) {
        Object obj;
        Object O;
        od.f l10;
        od.d j12;
        int i15;
        io.sentry.android.replay.video.c cVar;
        long j13;
        boolean z10;
        kotlin.jvm.internal.m.e(videoFile, "videoFile");
        if (videoFile.exists() && videoFile.length() > 0) {
            videoFile.delete();
        }
        if (this.f22740g.isEmpty()) {
            this.f22734a.getLogger().c(j5.DEBUG, "No captured frames, skipping generating a video segment", new Object[0]);
            return null;
        }
        Object obj2 = this.f22737d;
        synchronized (obj2) {
            try {
                obj = obj2;
                try {
                    io.sentry.android.replay.video.c cVar2 = new io.sentry.android.replay.video.c(this.f22734a, new io.sentry.android.replay.video.a(videoFile, i12, i11, i13, i14, null, 32, null), null, 4, null);
                    cVar2.j();
                    this.f22738e = cVar2;
                    long j14 = 1000 / i13;
                    O = yc.w.O(this.f22740g);
                    i iVar = (i) O;
                    long j15 = j11 + j10;
                    l10 = od.i.l(j11, j15);
                    j12 = od.i.j(l10, j14);
                    long g10 = j12.g();
                    long i16 = j12.i();
                    long l11 = j12.l();
                    int i17 = (l11 > 0L ? 1 : (l11 == 0L ? 0 : -1));
                    if ((i17 > 0 && g10 <= i16) || (i17 < 0 && i16 <= g10)) {
                        int i18 = 0;
                        while (true) {
                            Iterator it = this.f22740g.iterator();
                            while (true) {
                                if (!it.hasNext()) {
                                    break;
                                }
                                i iVar2 = (i) it.next();
                                long j16 = g10 + j14;
                                long c10 = iVar2.c();
                                if (g10 <= c10 && c10 <= j16) {
                                    z10 = true;
                                } else {
                                    z10 = false;
                                }
                                if (z10) {
                                    iVar = iVar2;
                                    break;
                                } else if (iVar2.c() > j16) {
                                    break;
                                }
                            }
                            if (q(iVar)) {
                                i18++;
                            } else if (iVar != null) {
                                k(iVar.b());
                                this.f22740g.remove(iVar);
                                iVar = null;
                            }
                            if (g10 == i16) {
                                break;
                            }
                            g10 += l11;
                        }
                        i15 = i18;
                    } else {
                        i15 = 0;
                    }
                    if (i15 == 0) {
                        this.f22734a.getLogger().c(j5.DEBUG, "Generated a video with no frames, not capturing a replay segment", new Object[0]);
                        k(videoFile);
                        return null;
                    }
                    synchronized (this.f22737d) {
                        io.sentry.android.replay.video.c cVar3 = this.f22738e;
                        if (cVar3 != null) {
                            cVar3.i();
                        }
                        io.sentry.android.replay.video.c cVar4 = this.f22738e;
                        if (cVar4 != null) {
                            j13 = cVar4.c();
                            cVar = null;
                        } else {
                            cVar = null;
                            j13 = 0;
                        }
                        this.f22738e = cVar;
                        xc.t tVar = xc.t.f32733a;
                    }
                    x(j15);
                    return new io.sentry.android.replay.b(videoFile, i15, j13);
                } catch (Throwable th) {
                    th = th;
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                obj = obj2;
            }
        }
    }

    public final List s() {
        return this.f22740g;
    }

    public final File u() {
        return (File) this.f22742i.getValue();
    }

    public final File v() {
        return (File) this.f22739f.getValue();
    }

    public final synchronized void w(String key, String str) {
        boolean z10;
        String X;
        File u10;
        BufferedReader bufferedReader;
        List z02;
        File u11;
        kotlin.jvm.internal.m.e(key, "key");
        if (this.f22736c.get()) {
            return;
        }
        File u12 = u();
        if (u12 != null && u12.exists()) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10 && (u11 = u()) != null) {
            u11.createNewFile();
        }
        if (this.f22741h.isEmpty() && (u10 = u()) != null) {
            InputStreamReader inputStreamReader = new InputStreamReader(new FileInputStream(u10), rd.d.f29089b);
            if (inputStreamReader instanceof BufferedReader) {
                bufferedReader = (BufferedReader) inputStreamReader;
            } else {
                bufferedReader = new BufferedReader(inputStreamReader, 8192);
            }
            qd.e<String> c10 = gd.n.c(bufferedReader);
            LinkedHashMap linkedHashMap = this.f22741h;
            for (String str2 : c10) {
                z02 = b0.z0(str2, new String[]{"="}, false, 2, 2, null);
                xc.k a10 = xc.q.a((String) z02.get(0), (String) z02.get(1));
                linkedHashMap.put(a10.c(), a10.d());
            }
            gd.b.a(bufferedReader, null);
        }
        if (str == null) {
            this.f22741h.remove(key);
        } else {
            this.f22741h.put(key, str);
        }
        File u13 = u();
        if (u13 != null) {
            Set entrySet = this.f22741h.entrySet();
            kotlin.jvm.internal.m.d(entrySet, "ongoingSegment.entries");
            X = yc.w.X(entrySet, "\n", null, null, 0, null, c.f22744e, 30, null);
            gd.i.i(u13, X, null, 2, null);
        }
    }

    public final String x(long j10) {
        c0 c0Var = new c0();
        yc.t.A(this.f22740g, new e(j10, this, c0Var));
        return (String) c0Var.f24971a;
    }
}
