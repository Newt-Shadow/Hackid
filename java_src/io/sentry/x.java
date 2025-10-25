package io.sentry;

import io.sentry.util.j;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
/* loaded from: classes2.dex */
public final class x extends p implements n0 {

    /* renamed from: e  reason: collision with root package name */
    private final o0 f23908e;

    /* renamed from: f  reason: collision with root package name */
    private final y0 f23909f;

    /* renamed from: g  reason: collision with root package name */
    private final ILogger f23910g;

    public x(o0 o0Var, y0 y0Var, ILogger iLogger, long j10, int i10) {
        super(o0Var, iLogger, j10, i10);
        this.f23908e = (o0) io.sentry.util.q.c(o0Var, "Hub is required.");
        this.f23909f = (y0) io.sentry.util.q.c(y0Var, "Serializer is required.");
        this.f23910g = (ILogger) io.sentry.util.q.c(iLogger, "Logger is required.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j(io.sentry.hints.i iVar) {
        if (!iVar.e()) {
            this.f23910g.c(j5.WARNING, "Timed out waiting for envelope submission.", new Object[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k(Throwable th, File file, io.sentry.hints.k kVar) {
        kVar.d(false);
        this.f23910g.a(j5.INFO, th, "File '%s' won't retry.", file.getAbsolutePath());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l(File file, io.sentry.hints.k kVar) {
        if (!kVar.b()) {
            m(file, "after trying to capture it");
            this.f23910g.c(j5.DEBUG, "Deleted file %s.", file.getAbsolutePath());
            return;
        }
        this.f23910g.c(j5.INFO, "File not deleted since retry was marked. %s.", file.getAbsolutePath());
    }

    private void m(File file, String str) {
        try {
            if (!file.delete()) {
                this.f23910g.c(j5.ERROR, "Failed to delete '%s' %s", file.getAbsolutePath(), str);
            }
        } catch (Throwable th) {
            this.f23910g.a(j5.ERROR, th, "Failed to delete '%s' %s", file.getAbsolutePath(), str);
        }
    }

    @Override // io.sentry.n0
    public void a(String str, c0 c0Var) {
        io.sentry.util.q.c(str, "Path is required.");
        f(new File(str), c0Var);
    }

    @Override // io.sentry.p
    protected boolean c(String str) {
        return str.endsWith(".envelope");
    }

    @Override // io.sentry.p
    public /* bridge */ /* synthetic */ void e(File file) {
        super.e(file);
    }

    @Override // io.sentry.p
    protected void f(final File file, c0 c0Var) {
        ILogger iLogger;
        j.a aVar;
        BufferedInputStream bufferedInputStream;
        if (!file.isFile()) {
            this.f23910g.c(j5.DEBUG, "'%s' is not a file.", file.getAbsolutePath());
        } else if (!c(file.getName())) {
            this.f23910g.c(j5.DEBUG, "File '%s' doesn't match extension expected.", file.getAbsolutePath());
        } else if (!file.getParentFile().canWrite()) {
            this.f23910g.c(j5.WARNING, "File '%s' cannot be deleted so it will not be processed.", file.getAbsolutePath());
        } else {
            try {
                try {
                    try {
                        bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
                    }
                } catch (IOException e10) {
                    this.f23910g.a(j5.ERROR, e10, "I/O on file '%s' failed.", file.getAbsolutePath());
                    iLogger = this.f23910g;
                    aVar = new j.a() { // from class: io.sentry.v
                        @Override // io.sentry.util.j.a
                        public final void accept(Object obj) {
                            x.this.l(file, (io.sentry.hints.k) obj);
                        }
                    };
                }
            } catch (FileNotFoundException e11) {
                this.f23910g.a(j5.ERROR, e11, "File '%s' cannot be found.", file.getAbsolutePath());
                iLogger = this.f23910g;
                aVar = new j.a() { // from class: io.sentry.v
                    @Override // io.sentry.util.j.a
                    public final void accept(Object obj) {
                        x.this.l(file, (io.sentry.hints.k) obj);
                    }
                };
            }
            try {
                a4 d10 = this.f23909f.d(bufferedInputStream);
                if (d10 == null) {
                    this.f23910g.c(j5.ERROR, "Failed to deserialize cached envelope %s", file.getAbsolutePath());
                } else {
                    this.f23908e.u(d10, c0Var);
                }
                io.sentry.util.j.q(c0Var, io.sentry.hints.i.class, this.f23910g, new j.a() { // from class: io.sentry.u
                    @Override // io.sentry.util.j.a
                    public final void accept(Object obj) {
                        x.this.j((io.sentry.hints.i) obj);
                    }
                });
                bufferedInputStream.close();
                iLogger = this.f23910g;
                aVar = new j.a() { // from class: io.sentry.v
                    @Override // io.sentry.util.j.a
                    public final void accept(Object obj) {
                        x.this.l(file, (io.sentry.hints.k) obj);
                    }
                };
                io.sentry.util.j.q(c0Var, io.sentry.hints.k.class, iLogger, aVar);
            } catch (Throwable th) {
                try {
                    bufferedInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
    }
}
