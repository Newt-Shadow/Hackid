package io.sentry;

import io.sentry.util.j;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
/* loaded from: classes2.dex */
public final class q2 extends p implements n0 {

    /* renamed from: i  reason: collision with root package name */
    private static final Charset f23530i = Charset.forName("UTF-8");

    /* renamed from: e  reason: collision with root package name */
    private final o0 f23531e;

    /* renamed from: f  reason: collision with root package name */
    private final m0 f23532f;

    /* renamed from: g  reason: collision with root package name */
    private final y0 f23533g;

    /* renamed from: h  reason: collision with root package name */
    private final ILogger f23534h;

    public q2(o0 o0Var, m0 m0Var, y0 y0Var, ILogger iLogger, long j10, int i10) {
        super(o0Var, iLogger, j10, i10);
        this.f23531e = (o0) io.sentry.util.q.c(o0Var, "Hub is required.");
        this.f23532f = (m0) io.sentry.util.q.c(m0Var, "Envelope reader is required.");
        this.f23533g = (y0) io.sentry.util.q.c(y0Var, "Serializer is required.");
        this.f23534h = (ILogger) io.sentry.util.q.c(iLogger, "Logger is required.");
    }

    private x6 i(v6 v6Var) {
        String a10;
        if (v6Var != null && (a10 = v6Var.a()) != null) {
            try {
                Double valueOf = Double.valueOf(Double.parseDouble(a10));
                if (!io.sentry.util.u.e(valueOf, false)) {
                    this.f23534h.c(j5.ERROR, "Invalid sample rate parsed from TraceContext: %s", a10);
                } else {
                    return new x6(Boolean.TRUE, valueOf);
                }
            } catch (Exception unused) {
                this.f23534h.c(j5.ERROR, "Unable to parse sample rate from TraceContext: %s", a10);
            }
        }
        return new x6(Boolean.TRUE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k(File file, io.sentry.hints.k kVar) {
        if (!kVar.b()) {
            try {
                if (!file.delete()) {
                    this.f23534h.c(j5.ERROR, "Failed to delete: %s", file.getAbsolutePath());
                }
            } catch (RuntimeException e10) {
                this.f23534h.a(j5.ERROR, e10, "Failed to delete: %s", file.getAbsolutePath());
            }
        }
    }

    private void l(x4 x4Var, int i10) {
        this.f23534h.c(j5.ERROR, "Item %d of type %s returned null by the parser.", Integer.valueOf(i10), x4Var.G().b());
    }

    private void m(int i10) {
        this.f23534h.c(j5.DEBUG, "Item %d is being captured.", Integer.valueOf(i10));
    }

    private void n(io.sentry.protocol.r rVar) {
        this.f23534h.c(j5.WARNING, "Timed out waiting for event id submission: %s", rVar);
    }

    private void o(a4 a4Var, io.sentry.protocol.r rVar, int i10) {
        this.f23534h.c(j5.ERROR, "Item %d of has a different event id (%s) to the envelope header (%s)", Integer.valueOf(i10), a4Var.b().a(), rVar);
    }

    private void p(a4 a4Var, c0 c0Var) {
        Object g10;
        this.f23534h.c(j5.DEBUG, "Processing Envelope with %d item(s)", Integer.valueOf(io.sentry.util.b.e(a4Var.c())));
        int i10 = 0;
        for (x4 x4Var : a4Var.c()) {
            i10++;
            if (x4Var.G() == null) {
                this.f23534h.c(j5.ERROR, "Item %d has no header", Integer.valueOf(i10));
            } else if (i5.Event.equals(x4Var.G().b())) {
                try {
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new ByteArrayInputStream(x4Var.E()), f23530i));
                    z4 z4Var = (z4) this.f23533g.c(bufferedReader, z4.class);
                    if (z4Var == null) {
                        l(x4Var, i10);
                    } else {
                        if (z4Var.L() != null) {
                            io.sentry.util.j.s(c0Var, z4Var.L().f());
                        }
                        if (a4Var.b().a() != null && !a4Var.b().a().equals(z4Var.G())) {
                            o(a4Var, z4Var.G(), i10);
                            bufferedReader.close();
                        } else {
                            this.f23531e.D(z4Var, c0Var);
                            m(i10);
                            if (!q(c0Var)) {
                                n(z4Var.G());
                                bufferedReader.close();
                                return;
                            }
                        }
                    }
                    bufferedReader.close();
                } catch (Throwable th) {
                    this.f23534h.b(j5.ERROR, "Item failed to process.", th);
                }
                g10 = io.sentry.util.j.g(c0Var);
                if (!(g10 instanceof io.sentry.hints.p) && !((io.sentry.hints.p) g10).f()) {
                    this.f23534h.c(j5.WARNING, "Envelope had a failed capture at item %d. No more items will be sent.", Integer.valueOf(i10));
                    return;
                }
                io.sentry.util.j.o(c0Var, io.sentry.hints.j.class, new j.a() { // from class: io.sentry.p2
                    @Override // io.sentry.util.j.a
                    public final void accept(Object obj) {
                        ((io.sentry.hints.j) obj).a();
                    }
                });
            } else {
                if (i5.Transaction.equals(x4Var.G().b())) {
                    try {
                        BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(new ByteArrayInputStream(x4Var.E()), f23530i));
                        io.sentry.protocol.y yVar = (io.sentry.protocol.y) this.f23533g.c(bufferedReader2, io.sentry.protocol.y.class);
                        if (yVar == null) {
                            l(x4Var, i10);
                        } else if (a4Var.b().a() != null && !a4Var.b().a().equals(yVar.G())) {
                            o(a4Var, yVar.G(), i10);
                            bufferedReader2.close();
                        } else {
                            v6 c10 = a4Var.b().c();
                            if (yVar.C().f() != null) {
                                yVar.C().f().n(i(c10));
                            }
                            this.f23531e.x(yVar, c10, c0Var);
                            m(i10);
                            if (!q(c0Var)) {
                                n(yVar.G());
                                bufferedReader2.close();
                                return;
                            }
                        }
                        bufferedReader2.close();
                    } catch (Throwable th2) {
                        this.f23534h.b(j5.ERROR, "Item failed to process.", th2);
                    }
                } else {
                    this.f23531e.u(new a4(a4Var.b().a(), a4Var.b().b(), x4Var), c0Var);
                    this.f23534h.c(j5.DEBUG, "%s item %d is being captured.", x4Var.G().b().getItemType(), Integer.valueOf(i10));
                    if (!q(c0Var)) {
                        this.f23534h.c(j5.WARNING, "Timed out waiting for item type submission: %s", x4Var.G().b().getItemType());
                        return;
                    }
                }
                g10 = io.sentry.util.j.g(c0Var);
                if (!(g10 instanceof io.sentry.hints.p)) {
                }
                io.sentry.util.j.o(c0Var, io.sentry.hints.j.class, new j.a() { // from class: io.sentry.p2
                    @Override // io.sentry.util.j.a
                    public final void accept(Object obj) {
                        ((io.sentry.hints.j) obj).a();
                    }
                });
            }
        }
    }

    private boolean q(c0 c0Var) {
        Object g10 = io.sentry.util.j.g(c0Var);
        if (g10 instanceof io.sentry.hints.i) {
            return ((io.sentry.hints.i) g10).e();
        }
        io.sentry.util.n.a(io.sentry.hints.i.class, g10, this.f23534h);
        return true;
    }

    @Override // io.sentry.n0
    public void a(String str, c0 c0Var) {
        io.sentry.util.q.c(str, "Path is required.");
        f(new File(str), c0Var);
    }

    @Override // io.sentry.p
    protected boolean c(String str) {
        if (str != null && !str.startsWith("session") && !str.startsWith("previous_session") && !str.startsWith("startup_crash")) {
            return true;
        }
        return false;
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
        io.sentry.util.q.c(file, "File is required.");
        try {
            if (!c(file.getName())) {
                this.f23534h.c(j5.DEBUG, "File '%s' should be ignored.", file.getAbsolutePath());
                return;
            }
            try {
                bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
            } catch (IOException e10) {
                this.f23534h.b(j5.ERROR, "Error processing envelope.", e10);
                iLogger = this.f23534h;
                aVar = new j.a() { // from class: io.sentry.o2
                    @Override // io.sentry.util.j.a
                    public final void accept(Object obj) {
                        q2.this.k(file, (io.sentry.hints.k) obj);
                    }
                };
            }
            try {
                a4 a10 = this.f23532f.a(bufferedInputStream);
                if (a10 == null) {
                    this.f23534h.c(j5.ERROR, "Stream from path %s resulted in a null envelope.", file.getAbsolutePath());
                } else {
                    p(a10, c0Var);
                    this.f23534h.c(j5.DEBUG, "File '%s' is done.", file.getAbsolutePath());
                }
                bufferedInputStream.close();
                iLogger = this.f23534h;
                aVar = new j.a() { // from class: io.sentry.o2
                    @Override // io.sentry.util.j.a
                    public final void accept(Object obj) {
                        q2.this.k(file, (io.sentry.hints.k) obj);
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
        } catch (Throwable th3) {
            io.sentry.util.j.q(c0Var, io.sentry.hints.k.class, this.f23534h, new j.a() { // from class: io.sentry.o2
                @Override // io.sentry.util.j.a
                public final void accept(Object obj) {
                    q2.this.k(file, (io.sentry.hints.k) obj);
                }
            });
            throw th3;
        }
    }
}
