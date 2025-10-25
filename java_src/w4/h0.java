package w4;

import b3.g4;
import b3.u3;
import d4.t;
import d4.u0;
/* loaded from: classes.dex */
public abstract class h0 {

    /* renamed from: a  reason: collision with root package name */
    private a f31839a;

    /* renamed from: b  reason: collision with root package name */
    private x4.e f31840b;

    /* loaded from: classes.dex */
    public interface a {
        void b();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final x4.e a() {
        return (x4.e) y4.a.h(this.f31840b);
    }

    public void b(a aVar, x4.e eVar) {
        this.f31839a = aVar;
        this.f31840b = eVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void c() {
        a aVar = this.f31839a;
        if (aVar != null) {
            aVar.b();
        }
    }

    public abstract boolean d();

    public abstract void e(Object obj);

    public void f() {
        this.f31839a = null;
        this.f31840b = null;
    }

    public abstract i0 g(u3[] u3VarArr, u0 u0Var, t.b bVar, g4 g4Var);

    public abstract void h(d3.e eVar);
}
