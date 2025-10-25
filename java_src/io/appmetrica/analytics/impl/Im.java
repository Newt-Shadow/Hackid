package io.appmetrica.analytics.impl;
/* loaded from: classes2.dex */
public final class Im extends K4 {

    /* renamed from: g  reason: collision with root package name */
    public final InterfaceC1478rn f18413g;

    public Im(String str, String str2, InterfaceC1478rn interfaceC1478rn, Yn yn, S2 s22) {
        super(0, str, str2, yn, s22);
        this.f18413g = interfaceC1478rn;
    }

    @Override // io.appmetrica.analytics.impl.K4
    public final void a(Ln ln) {
        byte[] bytes;
        String str = (String) this.f18413g.a((String) this.f18476f);
        Nn nn = ln.f18566d;
        if (str == null) {
            bytes = new byte[0];
        } else {
            bytes = str.getBytes();
        }
        nn.f18661a = bytes;
    }

    public final InterfaceC1478rn h() {
        return this.f18413g;
    }
}
