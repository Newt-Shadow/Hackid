package io.appmetrica.analytics.impl;
/* loaded from: classes2.dex */
public abstract class O2 {

    /* renamed from: a  reason: collision with root package name */
    public final AbstractC1670zf f18679a;

    /* renamed from: b  reason: collision with root package name */
    public final Qa f18680b;

    public O2(AbstractC1670zf abstractC1670zf, Qa qa2) {
        this.f18679a = abstractC1670zf;
        this.f18680b = qa2;
    }

    public final boolean a(C1138e6 c1138e6, N2 n22) {
        for (Object obj : ((C1191g9) this.f18679a.a(c1138e6.f19574d)).f19673a) {
            if (n22.a(obj, c1138e6)) {
                return true;
            }
        }
        return false;
    }

    public final AbstractC1670zf b() {
        return this.f18679a;
    }

    public final Qa a() {
        return this.f18680b;
    }
}
