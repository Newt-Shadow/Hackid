package io.sentry.cache;

import io.sentry.cache.tape.c;
import io.sentry.cache.tape.d;
import io.sentry.f3;
import io.sentry.j5;
import io.sentry.l6;
import io.sentry.protocol.b0;
import io.sentry.s5;
import io.sentry.u0;
import io.sentry.util.m;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.Map;
/* loaded from: classes2.dex */
public final class t extends f3 {

    /* renamed from: c  reason: collision with root package name */
    private static final Charset f22957c = Charset.forName("UTF-8");

    /* renamed from: a  reason: collision with root package name */
    private s5 f22958a;

    /* renamed from: b  reason: collision with root package name */
    private final io.sentry.util.m f22959b = new io.sentry.util.m(new m.a() { // from class: io.sentry.cache.i
        @Override // io.sentry.util.m.a
        public final Object a() {
            io.sentry.cache.tape.c B;
            B = t.this.B();
            return B;
        }
    });

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements c.a {
        a() {
        }

        @Override // io.sentry.cache.tape.c.a
        /* renamed from: c */
        public io.sentry.e b(byte[] bArr) {
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new ByteArrayInputStream(bArr), t.f22957c));
                io.sentry.e eVar = (io.sentry.e) t.this.f22958a.getSerializer().c(bufferedReader, io.sentry.e.class);
                bufferedReader.close();
                return eVar;
            } catch (Throwable th) {
                t.this.f22958a.getLogger().a(j5.ERROR, th, "Error reading entity from scope cache", new Object[0]);
                return null;
            }
        }

        @Override // io.sentry.cache.tape.c.a
        /* renamed from: d */
        public void a(io.sentry.e eVar, OutputStream outputStream) {
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream, t.f22957c));
            try {
                t.this.f22958a.getSerializer().a(eVar, bufferedWriter);
                bufferedWriter.close();
            } catch (Throwable th) {
                try {
                    bufferedWriter.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
    }

    public t(s5 s5Var) {
        this.f22958a = s5Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void A(io.sentry.e eVar) {
        try {
            ((io.sentry.cache.tape.c) this.f22959b.a()).g(eVar);
        } catch (IOException e10) {
            this.f22958a.getLogger().b(j5.ERROR, "Failed to add breadcrumb to file queue", e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ io.sentry.cache.tape.c B() {
        io.sentry.cache.tape.d a10;
        File b10 = d.b(this.f22958a, ".scope-cache");
        if (b10 == null) {
            this.f22958a.getLogger().c(j5.INFO, "Cache dir is not set, cannot store in scope cache", new Object[0]);
            return io.sentry.cache.tape.c.q0();
        }
        File file = new File(b10, "breadcrumbs.json");
        try {
            try {
                a10 = new d.a(file).b(this.f22958a.getMaxBreadcrumbs()).a();
            } catch (IOException e10) {
                this.f22958a.getLogger().b(j5.ERROR, "Failed to create breadcrumbs queue", e10);
                return io.sentry.cache.tape.c.q0();
            }
        } catch (IOException unused) {
            file.delete();
            a10 = new d.a(file).b(this.f22958a.getMaxBreadcrumbs()).a();
        }
        return io.sentry.cache.tape.c.o0(a10, new a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void C(Runnable runnable) {
        try {
            runnable.run();
        } catch (Throwable th) {
            this.f22958a.getLogger().b(j5.ERROR, "Serialization task failed", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void D() {
        try {
            ((io.sentry.cache.tape.c) this.f22959b.a()).clear();
        } catch (IOException e10) {
            this.f22958a.getLogger().b(j5.ERROR, "Failed to clear breadcrumbs from file queue", e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void E(io.sentry.protocol.c cVar) {
        P(cVar, "contexts.json");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void F(Map map) {
        P(map, "extras.json");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void G(io.sentry.protocol.r rVar) {
        P(rVar, "replay.json");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void H(Map map) {
        P(map, "tags.json");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void I(l6 l6Var, u0 u0Var) {
        if (l6Var == null) {
            P(u0Var.t().h(), "trace.json");
        } else {
            P(l6Var, "trace.json");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void J(String str) {
        if (str == null) {
            z("transaction.json");
        } else {
            P(str, "transaction.json");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void K(b0 b0Var) {
        if (b0Var == null) {
            z("user.json");
        } else {
            P(b0Var, "user.json");
        }
    }

    private void N(final Runnable runnable) {
        if (!this.f22958a.isEnableScopePersistence()) {
            return;
        }
        if (Thread.currentThread().getName().contains("SentryExecutor")) {
            try {
                runnable.run();
                return;
            } catch (Throwable th) {
                this.f22958a.getLogger().b(j5.ERROR, "Serialization task failed", th);
                return;
            }
        }
        try {
            this.f22958a.getExecutorService().submit(new Runnable() { // from class: io.sentry.cache.s
                @Override // java.lang.Runnable
                public final void run() {
                    t.this.C(runnable);
                }
            });
        } catch (Throwable th2) {
            this.f22958a.getLogger().b(j5.ERROR, "Serialization task could not be scheduled", th2);
        }
    }

    public static void O(s5 s5Var, Object obj, String str) {
        d.d(s5Var, obj, ".scope-cache", str);
    }

    private void P(Object obj, String str) {
        O(this.f22958a, obj, str);
    }

    private void z(String str) {
        d.a(this.f22958a, ".scope-cache", str);
    }

    public Object L(s5 s5Var, String str, Class cls) {
        if (str.equals("breadcrumbs.json")) {
            try {
                return cls.cast(((io.sentry.cache.tape.c) this.f22959b.a()).s());
            } catch (IOException unused) {
                s5Var.getLogger().c(j5.ERROR, "Unable to read serialized breadcrumbs from QueueFile", new Object[0]);
                return null;
            }
        }
        return d.c(s5Var, ".scope-cache", str, cls, null);
    }

    public void M() {
        try {
            ((io.sentry.cache.tape.c) this.f22959b.a()).clear();
        } catch (IOException e10) {
            this.f22958a.getLogger().b(j5.ERROR, "Failed to clear breadcrumbs from file queue", e10);
        }
        z("user.json");
        z("level.json");
        z("request.json");
        z("fingerprint.json");
        z("contexts.json");
        z("extras.json");
        z("tags.json");
        z("trace.json");
        z("transaction.json");
    }

    @Override // io.sentry.f3, io.sentry.v0
    public void e(final Map map) {
        N(new Runnable() { // from class: io.sentry.cache.m
            @Override // java.lang.Runnable
            public final void run() {
                t.this.H(map);
            }
        });
    }

    @Override // io.sentry.f3, io.sentry.v0
    public void f(Collection collection) {
        if (collection.isEmpty()) {
            N(new Runnable() { // from class: io.sentry.cache.q
                @Override // java.lang.Runnable
                public final void run() {
                    t.this.D();
                }
            });
        }
    }

    @Override // io.sentry.f3, io.sentry.v0
    public void g(final io.sentry.protocol.r rVar) {
        N(new Runnable() { // from class: io.sentry.cache.l
            @Override // java.lang.Runnable
            public final void run() {
                t.this.G(rVar);
            }
        });
    }

    @Override // io.sentry.f3, io.sentry.v0
    public void h(final l6 l6Var, final u0 u0Var) {
        N(new Runnable() { // from class: io.sentry.cache.r
            @Override // java.lang.Runnable
            public final void run() {
                t.this.I(l6Var, u0Var);
            }
        });
    }

    @Override // io.sentry.f3, io.sentry.v0
    public void i(final io.sentry.protocol.c cVar) {
        N(new Runnable() { // from class: io.sentry.cache.n
            @Override // java.lang.Runnable
            public final void run() {
                t.this.E(cVar);
            }
        });
    }

    @Override // io.sentry.f3, io.sentry.v0
    public void j(final String str) {
        N(new Runnable() { // from class: io.sentry.cache.j
            @Override // java.lang.Runnable
            public final void run() {
                t.this.J(str);
            }
        });
    }

    @Override // io.sentry.v0
    public void n(final b0 b0Var) {
        N(new Runnable() { // from class: io.sentry.cache.o
            @Override // java.lang.Runnable
            public final void run() {
                t.this.K(b0Var);
            }
        });
    }

    @Override // io.sentry.f3, io.sentry.v0
    public void setExtras(final Map map) {
        N(new Runnable() { // from class: io.sentry.cache.k
            @Override // java.lang.Runnable
            public final void run() {
                t.this.F(map);
            }
        });
    }

    @Override // io.sentry.v0
    public void t(final io.sentry.e eVar) {
        N(new Runnable() { // from class: io.sentry.cache.p
            @Override // java.lang.Runnable
            public final void run() {
                t.this.A(eVar);
            }
        });
    }
}
