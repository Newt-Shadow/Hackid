package com.yandex.metrica.impl.ob;
/* loaded from: classes2.dex */
public class H3 {

    /* renamed from: a  reason: collision with root package name */
    private final C0521f1 f10182a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public H3() {
        this(F0.g().h());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public N4<M4, F3> a(F3 f32) {
        return new N4<>(new G4(f32), f32);
    }

    H3(C0521f1 c0521f1) {
        this.f10182a = c0521f1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0938w2<F3> a(F3 f32, C0834ri c0834ri) {
        C0938w2<F3> c0938w2 = new C0938w2<>(f32, new C0978xi(c0834ri));
        this.f10182a.a(c0938w2);
        return c0938w2;
    }
}
