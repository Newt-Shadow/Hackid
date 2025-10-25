package io.sentry;

import java.io.File;
import java.io.FilenameFilter;
import java.util.Queue;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class p {

    /* renamed from: a  reason: collision with root package name */
    private final o0 f23293a;

    /* renamed from: b  reason: collision with root package name */
    private final ILogger f23294b;

    /* renamed from: c  reason: collision with root package name */
    private final long f23295c;

    /* renamed from: d  reason: collision with root package name */
    private final Queue f23296d;

    /* loaded from: classes2.dex */
    private static final class a implements io.sentry.hints.e, io.sentry.hints.k, io.sentry.hints.p, io.sentry.hints.i, io.sentry.hints.g {

        /* renamed from: a  reason: collision with root package name */
        boolean f23297a = false;

        /* renamed from: b  reason: collision with root package name */
        boolean f23298b = false;

        /* renamed from: c  reason: collision with root package name */
        private final CountDownLatch f23299c = new CountDownLatch(1);

        /* renamed from: d  reason: collision with root package name */
        private final long f23300d;

        /* renamed from: e  reason: collision with root package name */
        private final ILogger f23301e;

        /* renamed from: f  reason: collision with root package name */
        private final String f23302f;

        /* renamed from: g  reason: collision with root package name */
        private final Queue f23303g;

        public a(long j10, ILogger iLogger, String str, Queue queue) {
            this.f23300d = j10;
            this.f23302f = str;
            this.f23303g = queue;
            this.f23301e = iLogger;
        }

        @Override // io.sentry.hints.g
        public void a() {
            this.f23303g.add(this.f23302f);
        }

        @Override // io.sentry.hints.k
        public boolean b() {
            return this.f23297a;
        }

        @Override // io.sentry.hints.p
        public void c(boolean z10) {
            this.f23298b = z10;
            this.f23299c.countDown();
        }

        @Override // io.sentry.hints.k
        public void d(boolean z10) {
            this.f23297a = z10;
        }

        @Override // io.sentry.hints.i
        public boolean e() {
            try {
                return this.f23299c.await(this.f23300d, TimeUnit.MILLISECONDS);
            } catch (InterruptedException e10) {
                Thread.currentThread().interrupt();
                this.f23301e.b(j5.ERROR, "Exception while awaiting on lock.", e10);
                return false;
            }
        }

        @Override // io.sentry.hints.p
        public boolean f() {
            return this.f23298b;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(o0 o0Var, ILogger iLogger, long j10, int i10) {
        this.f23293a = o0Var;
        this.f23294b = iLogger;
        this.f23295c = j10;
        this.f23296d = t6.i(new f(i10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean d(File file, String str) {
        return c(str);
    }

    protected abstract boolean c(String str);

    public void e(File file) {
        int i10;
        try {
            ILogger iLogger = this.f23294b;
            j5 j5Var = j5.DEBUG;
            iLogger.c(j5Var, "Processing dir. %s", file.getAbsolutePath());
            if (!file.exists()) {
                this.f23294b.c(j5.WARNING, "Directory '%s' doesn't exist. No cached events to send.", file.getAbsolutePath());
            } else if (!file.isDirectory()) {
                this.f23294b.c(j5.ERROR, "Cache dir %s is not a directory.", file.getAbsolutePath());
            } else {
                File[] listFiles = file.listFiles();
                if (listFiles == null) {
                    this.f23294b.c(j5.ERROR, "Cache dir %s is null.", file.getAbsolutePath());
                    return;
                }
                File[] listFiles2 = file.listFiles(new FilenameFilter() { // from class: io.sentry.o
                    @Override // java.io.FilenameFilter
                    public final boolean accept(File file2, String str) {
                        boolean d10;
                        d10 = p.this.d(file2, str);
                        return d10;
                    }
                });
                ILogger iLogger2 = this.f23294b;
                Object[] objArr = new Object[2];
                if (listFiles2 != null) {
                    i10 = listFiles2.length;
                } else {
                    i10 = 0;
                }
                objArr[0] = Integer.valueOf(i10);
                objArr[1] = file.getAbsolutePath();
                iLogger2.c(j5Var, "Processing %d items from cache dir %s", objArr);
                for (File file2 : listFiles) {
                    if (!file2.isFile()) {
                        this.f23294b.c(j5.DEBUG, "File %s is not a File.", file2.getAbsolutePath());
                    } else {
                        String absolutePath = file2.getAbsolutePath();
                        if (this.f23296d.contains(absolutePath)) {
                            this.f23294b.c(j5.DEBUG, "File '%s' has already been processed so it will not be processed again.", absolutePath);
                        } else {
                            io.sentry.transport.z l10 = this.f23293a.l();
                            if (l10 != null && l10.j(i.All)) {
                                this.f23294b.c(j5.INFO, "DirectoryProcessor, rate limiting active.", new Object[0]);
                                return;
                            }
                            this.f23294b.c(j5.DEBUG, "Processing file: %s", absolutePath);
                            f(file2, io.sentry.util.j.e(new a(this.f23295c, this.f23294b, absolutePath, this.f23296d)));
                            Thread.sleep(100L);
                        }
                    }
                }
            }
        } catch (Throwable th) {
            this.f23294b.a(j5.ERROR, th, "Failed processing '%s'", file.getAbsolutePath());
        }
    }

    protected abstract void f(File file, c0 c0Var);
}
