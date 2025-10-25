package kotlin.jvm.internal;

import pd.i;
/* loaded from: classes2.dex */
public abstract class u extends y implements pd.i {
    public u(Object obj, Class cls, String str, String str2, int i10) {
        super(obj, cls, str, str2, i10);
    }

    @Override // pd.i
    public i.a c() {
        ((pd.i) getReflected()).c();
        return null;
    }

    @Override // kotlin.jvm.internal.d
    protected pd.b computeReflected() {
        return d0.f(this);
    }

    @Override // id.l
    public Object invoke(Object obj) {
        return get(obj);
    }
}
