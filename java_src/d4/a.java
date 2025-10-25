package d4;

import android.os.Handler;
import android.os.Looper;
import b3.g4;
import c3.t3;
import d4.a0;
import d4.t;
import f3.u;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
/* loaded from: classes.dex */
public abstract class a implements t {

    /* renamed from: a  reason: collision with root package name */
    private final ArrayList f14716a = new ArrayList(1);

    /* renamed from: b  reason: collision with root package name */
    private final HashSet f14717b = new HashSet(1);

    /* renamed from: c  reason: collision with root package name */
    private final a0.a f14718c = new a0.a();

    /* renamed from: d  reason: collision with root package name */
    private final u.a f14719d = new u.a();

    /* renamed from: e  reason: collision with root package name */
    private Looper f14720e;

    /* renamed from: f  reason: collision with root package name */
    private g4 f14721f;

    /* renamed from: g  reason: collision with root package name */
    private t3 f14722g;

    /* JADX INFO: Access modifiers changed from: protected */
    public final t3 A() {
        return (t3) y4.a.h(this.f14722g);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean B() {
        return !this.f14717b.isEmpty();
    }

    protected abstract void C(x4.m0 m0Var);

    /* JADX INFO: Access modifiers changed from: protected */
    public final void D(g4 g4Var) {
        this.f14721f = g4Var;
        Iterator it = this.f14716a.iterator();
        while (it.hasNext()) {
            ((t.c) it.next()).a(this, g4Var);
        }
    }

    protected abstract void E();

    @Override // d4.t
    public final void a(Handler handler, f3.u uVar) {
        y4.a.e(handler);
        y4.a.e(uVar);
        this.f14719d.g(handler, uVar);
    }

    @Override // d4.t
    public final void b(f3.u uVar) {
        this.f14719d.t(uVar);
    }

    @Override // d4.t
    public final void c(t.c cVar) {
        this.f14716a.remove(cVar);
        if (this.f14716a.isEmpty()) {
            this.f14720e = null;
            this.f14721f = null;
            this.f14722g = null;
            this.f14717b.clear();
            E();
            return;
        }
        p(cVar);
    }

    @Override // d4.t
    public final void e(a0 a0Var) {
        this.f14718c.C(a0Var);
    }

    @Override // d4.t
    public final void i(Handler handler, a0 a0Var) {
        y4.a.e(handler);
        y4.a.e(a0Var);
        this.f14718c.g(handler, a0Var);
    }

    @Override // d4.t
    public final void p(t.c cVar) {
        boolean z10 = !this.f14717b.isEmpty();
        this.f14717b.remove(cVar);
        if (z10 && this.f14717b.isEmpty()) {
            y();
        }
    }

    @Override // d4.t
    public final void q(t.c cVar) {
        y4.a.e(this.f14720e);
        boolean isEmpty = this.f14717b.isEmpty();
        this.f14717b.add(cVar);
        if (isEmpty) {
            z();
        }
    }

    @Override // d4.t
    public final void r(t.c cVar, x4.m0 m0Var, t3 t3Var) {
        boolean z10;
        Looper myLooper = Looper.myLooper();
        Looper looper = this.f14720e;
        if (looper != null && looper != myLooper) {
            z10 = false;
        } else {
            z10 = true;
        }
        y4.a.a(z10);
        this.f14722g = t3Var;
        g4 g4Var = this.f14721f;
        this.f14716a.add(cVar);
        if (this.f14720e == null) {
            this.f14720e = myLooper;
            this.f14717b.add(cVar);
            C(m0Var);
        } else if (g4Var != null) {
            q(cVar);
            cVar.a(this, g4Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final u.a t(int i10, t.b bVar) {
        return this.f14719d.u(i10, bVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final u.a u(t.b bVar) {
        return this.f14719d.u(0, bVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final a0.a v(int i10, t.b bVar, long j10) {
        return this.f14718c.F(i10, bVar, j10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final a0.a w(t.b bVar) {
        return this.f14718c.F(0, bVar, 0L);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final a0.a x(t.b bVar, long j10) {
        y4.a.e(bVar);
        return this.f14718c.F(0, bVar, j10);
    }

    protected void y() {
    }

    protected void z() {
    }
}
