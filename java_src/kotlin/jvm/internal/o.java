package kotlin.jvm.internal;

import pd.i;
/* loaded from: classes2.dex */
public abstract class o extends q implements pd.g {
    public o(Object obj, Class cls, String str, String str2, int i10) {
        super(obj, cls, str, str2, i10);
    }

    @Override // pd.i
    public i.a c() {
        ((pd.g) getReflected()).c();
        return null;
    }

    @Override // kotlin.jvm.internal.d
    protected pd.b computeReflected() {
        return d0.d(this);
    }

    @Override // id.l
    public Object invoke(Object obj) {
        return get(obj);
    }
}
