package com.yandex.metrica.impl.ob;
/* loaded from: classes2.dex */
class Bk {

    /* renamed from: a  reason: collision with root package name */
    private final Ak f9796a;

    /* renamed from: b  reason: collision with root package name */
    private final Ak f9797b;

    /* renamed from: c  reason: collision with root package name */
    private final Ak f9798c;

    /* renamed from: d  reason: collision with root package name */
    private final Ak f9799d;

    /* loaded from: classes2.dex */
    static class a {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Bk(C1028zk c1028zk, C0541fl c0541fl) {
        this(new Ak(c1028zk.c(), a(c0541fl.f12426e)), new Ak(c1028zk.b(), a(c0541fl.f12427f)), new Ak(c1028zk.d(), a(c0541fl.f12429h)), new Ak(c1028zk.a(), a(c0541fl.f12428g)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Ak a() {
        return this.f9799d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Ak b() {
        return this.f9797b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Ak c() {
        return this.f9796a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Ak d() {
        return this.f9798c;
    }

    private static int a(Object obj) {
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    Bk(Ak ak, Ak ak2, Ak ak3, Ak ak4) {
        this.f9796a = ak;
        this.f9797b = ak2;
        this.f9798c = ak3;
        this.f9799d = ak4;
    }
}
