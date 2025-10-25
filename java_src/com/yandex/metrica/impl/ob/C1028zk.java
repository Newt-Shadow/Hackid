package com.yandex.metrica.impl.ob;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.yandex.metrica.impl.ob.zk  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C1028zk {

    /* renamed from: a  reason: collision with root package name */
    private final Tk f14080a;

    /* renamed from: b  reason: collision with root package name */
    private final C0615il f14081b;

    /* renamed from: c  reason: collision with root package name */
    private final C0615il f14082c;

    /* renamed from: d  reason: collision with root package name */
    private final C0615il f14083d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1028zk(C0541fl c0541fl) {
        this(new Tk(c0541fl == null ? null : c0541fl.f12426e), new C0615il(c0541fl == null ? null : c0541fl.f12427f), new C0615il(c0541fl == null ? null : c0541fl.f12429h), new C0615il(c0541fl != null ? c0541fl.f12428g : null));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(C0541fl c0541fl) {
        this.f14080a.d(c0541fl.f12426e);
        this.f14081b.d(c0541fl.f12427f);
        this.f14082c.d(c0541fl.f12429h);
        this.f14083d.d(c0541fl.f12428g);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC1004yk<?> b() {
        return this.f14081b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC1004yk<?> c() {
        return this.f14080a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC1004yk<?> d() {
        return this.f14082c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized AbstractC1004yk<?> a() {
        return this.f14083d;
    }

    C1028zk(Tk tk, C0615il c0615il, C0615il c0615il2, C0615il c0615il3) {
        this.f14080a = tk;
        this.f14081b = c0615il;
        this.f14082c = c0615il2;
        this.f14083d = c0615il3;
    }
}
