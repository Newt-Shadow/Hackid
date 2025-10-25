package kotlin.jvm.internal;

import pd.j;
/* loaded from: classes2.dex */
public abstract class w extends y implements pd.j {
    public w(Class cls, String str, String str2, int i10) {
        super(d.NO_RECEIVER, cls, str, str2, i10);
    }

    @Override // pd.j
    public j.a c() {
        ((pd.j) getReflected()).c();
        return null;
    }

    @Override // kotlin.jvm.internal.d
    protected pd.b computeReflected() {
        return d0.g(this);
    }

    @Override // id.Function2
    public Object invoke(Object obj, Object obj2) {
        return j(obj, obj2);
    }
}
