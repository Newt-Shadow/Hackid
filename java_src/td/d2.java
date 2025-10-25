package td;
/* loaded from: classes2.dex */
public abstract class d2 extends i0 {
    @Override // td.i0
    public i0 A0(int i10, String str) {
        yd.n.a(i10);
        return yd.n.b(this, str);
    }

    public abstract d2 J0();

    /* JADX INFO: Access modifiers changed from: protected */
    public final String T0() {
        d2 d2Var;
        d2 c10 = z0.c();
        if (this == c10) {
            return "Dispatchers.Main";
        }
        try {
            d2Var = c10.J0();
        } catch (UnsupportedOperationException unused) {
            d2Var = null;
        }
        if (this != d2Var) {
            return null;
        }
        return "Dispatchers.Main.immediate";
    }
}
