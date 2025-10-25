package io.appmetrica.analytics.impl;
/* loaded from: classes2.dex */
public final class Q8 {

    /* renamed from: a  reason: collision with root package name */
    public final Pc f18812a;

    /* renamed from: b  reason: collision with root package name */
    public final Pc f18813b;

    public Q8() {
        this(new C1165f8(), new X9(), new C1056b());
    }

    public Q8(C1165f8 c1165f8, X9 x92, C1056b c1056b) {
        Pc pc2 = new Pc(c1165f8);
        this.f18812a = pc2;
        pc2.a(R8.NONE, c1165f8);
        pc2.a(R8.EXTERNALLY_ENCRYPTED_EVENT_CRYPTER, x92);
        pc2.a(R8.AES_VALUE_ENCRYPTION, c1056b);
        this.f18813b = new Pc(c1165f8);
    }
}
