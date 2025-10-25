package m6;

import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class n0 extends Task {

    /* renamed from: a  reason: collision with root package name */
    private final Object f25941a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private final j0 f25942b = new j0();

    /* renamed from: c  reason: collision with root package name */
    private boolean f25943c;

    /* renamed from: d  reason: collision with root package name */
    private volatile boolean f25944d;

    /* renamed from: e  reason: collision with root package name */
    private Object f25945e;

    /* renamed from: f  reason: collision with root package name */
    private Exception f25946f;

    private final void A() {
        synchronized (this.f25941a) {
            if (!this.f25943c) {
                return;
            }
            this.f25942b.b(this);
        }
    }

    private final void x() {
        n5.q.o(this.f25943c, "Task is not yet complete");
    }

    private final void y() {
        if (!this.f25944d) {
            return;
        }
        throw new CancellationException("Task is already canceled.");
    }

    private final void z() {
        if (!this.f25943c) {
            return;
        }
        throw d.a(this);
    }

    @Override // m6.Task
    public final Task a(Executor executor, e eVar) {
        this.f25942b.a(new z(executor, eVar));
        A();
        return this;
    }

    @Override // m6.Task
    public final Task b(Executor executor, f fVar) {
        this.f25942b.a(new b0(executor, fVar));
        A();
        return this;
    }

    @Override // m6.Task
    public final Task c(f fVar) {
        this.f25942b.a(new b0(m.f25938a, fVar));
        A();
        return this;
    }

    @Override // m6.Task
    public final Task d(Executor executor, g gVar) {
        this.f25942b.a(new d0(executor, gVar));
        A();
        return this;
    }

    @Override // m6.Task
    public final Task e(g gVar) {
        d(m.f25938a, gVar);
        return this;
    }

    @Override // m6.Task
    public final Task f(Executor executor, h hVar) {
        this.f25942b.a(new f0(executor, hVar));
        A();
        return this;
    }

    @Override // m6.Task
    public final Task g(Executor executor, c cVar) {
        n0 n0Var = new n0();
        this.f25942b.a(new v(executor, cVar, n0Var));
        A();
        return n0Var;
    }

    @Override // m6.Task
    public final Task h(c cVar) {
        return g(m.f25938a, cVar);
    }

    @Override // m6.Task
    public final Task i(Executor executor, c cVar) {
        n0 n0Var = new n0();
        this.f25942b.a(new x(executor, cVar, n0Var));
        A();
        return n0Var;
    }

    @Override // m6.Task
    public final Task j(c cVar) {
        return i(m.f25938a, cVar);
    }

    @Override // m6.Task
    public final Exception k() {
        Exception exc;
        synchronized (this.f25941a) {
            exc = this.f25946f;
        }
        return exc;
    }

    @Override // m6.Task
    public final Object l() {
        Object obj;
        synchronized (this.f25941a) {
            x();
            y();
            Exception exc = this.f25946f;
            if (exc == null) {
                obj = this.f25945e;
            } else {
                throw new j(exc);
            }
        }
        return obj;
    }

    @Override // m6.Task
    public final Object m(Class cls) {
        Object obj;
        synchronized (this.f25941a) {
            x();
            y();
            if (!cls.isInstance(this.f25946f)) {
                Exception exc = this.f25946f;
                if (exc == null) {
                    obj = this.f25945e;
                } else {
                    throw new j(exc);
                }
            } else {
                throw ((Throwable) cls.cast(this.f25946f));
            }
        }
        return obj;
    }

    @Override // m6.Task
    public final boolean n() {
        return this.f25944d;
    }

    @Override // m6.Task
    public final boolean o() {
        boolean z10;
        synchronized (this.f25941a) {
            z10 = this.f25943c;
        }
        return z10;
    }

    @Override // m6.Task
    public final boolean p() {
        boolean z10;
        synchronized (this.f25941a) {
            z10 = false;
            if (this.f25943c && !this.f25944d && this.f25946f == null) {
                z10 = true;
            }
        }
        return z10;
    }

    @Override // m6.Task
    public final Task q(Executor executor, k kVar) {
        n0 n0Var = new n0();
        this.f25942b.a(new h0(executor, kVar, n0Var));
        A();
        return n0Var;
    }

    @Override // m6.Task
    public final Task r(k kVar) {
        Executor executor = m.f25938a;
        n0 n0Var = new n0();
        this.f25942b.a(new h0(executor, kVar, n0Var));
        A();
        return n0Var;
    }

    public final void s(Exception exc) {
        n5.q.l(exc, "Exception must not be null");
        synchronized (this.f25941a) {
            z();
            this.f25943c = true;
            this.f25946f = exc;
        }
        this.f25942b.b(this);
    }

    public final void t(Object obj) {
        synchronized (this.f25941a) {
            z();
            this.f25943c = true;
            this.f25945e = obj;
        }
        this.f25942b.b(this);
    }

    public final boolean u() {
        synchronized (this.f25941a) {
            if (this.f25943c) {
                return false;
            }
            this.f25943c = true;
            this.f25944d = true;
            this.f25942b.b(this);
            return true;
        }
    }

    public final boolean v(Exception exc) {
        n5.q.l(exc, "Exception must not be null");
        synchronized (this.f25941a) {
            if (this.f25943c) {
                return false;
            }
            this.f25943c = true;
            this.f25946f = exc;
            this.f25942b.b(this);
            return true;
        }
    }

    public final boolean w(Object obj) {
        synchronized (this.f25941a) {
            if (this.f25943c) {
                return false;
            }
            this.f25943c = true;
            this.f25945e = obj;
            this.f25942b.b(this);
            return true;
        }
    }
}
