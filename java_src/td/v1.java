package td;
/* loaded from: classes2.dex */
public class v1 extends z1 implements y {

    /* renamed from: c  reason: collision with root package name */
    private final boolean f30699c;

    public v1(t1 t1Var) {
        super(true);
        m0(t1Var);
        this.f30699c = O0();
    }

    private final boolean O0() {
        t tVar;
        z1 t10;
        t tVar2;
        s f02 = f0();
        if (f02 instanceof t) {
            tVar = (t) f02;
        } else {
            tVar = null;
        }
        if (tVar != null && (t10 = tVar.t()) != null) {
            while (!t10.a0()) {
                s f03 = t10.f0();
                if (f03 instanceof t) {
                    tVar2 = (t) f03;
                } else {
                    tVar2 = null;
                }
                if (tVar2 != null) {
                    t10 = tVar2.t();
                    if (t10 == null) {
                    }
                }
            }
            return true;
        }
        return false;
    }

    @Override // td.z1
    public boolean a0() {
        return this.f30699c;
    }

    @Override // td.z1
    public boolean b0() {
        return true;
    }
}
