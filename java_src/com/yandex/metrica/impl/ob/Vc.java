package com.yandex.metrica.impl.ob;
/* loaded from: classes2.dex */
public class Vc {

    /* renamed from: a  reason: collision with root package name */
    private final C0924vc f11659a;

    /* renamed from: b  reason: collision with root package name */
    private final Xj f11660b;

    /* renamed from: c  reason: collision with root package name */
    private final H2 f11661c;

    /* renamed from: d  reason: collision with root package name */
    private final C0805qc f11662d;

    /* renamed from: e  reason: collision with root package name */
    private final C0504e9 f11663e;

    public Vc(C0924vc c0924vc, H2 h22, C0504e9 c0504e9) {
        this(c0924vc, F0.g().v(), h22, c0504e9, F0.g().i());
    }

    private void a() {
        boolean g10 = this.f11663e.g();
        this.f11659a.a(g10);
        this.f11661c.a(g10);
        this.f11660b.a(g10);
        this.f11662d.c();
    }

    public void b(Object obj) {
        this.f11659a.b(obj);
        this.f11660b.b();
    }

    public Vc(C0924vc c0924vc, Xj xj, H2 h22, C0504e9 c0504e9, C0805qc c0805qc) {
        this.f11659a = c0924vc;
        this.f11660b = xj;
        this.f11661c = h22;
        this.f11663e = c0504e9;
        this.f11662d = c0805qc;
        c0805qc.a(xj);
        a();
    }

    public void a(Object obj) {
        this.f11659a.a(obj);
        this.f11660b.a();
    }

    public void a(boolean z10) {
        this.f11659a.a(z10);
        this.f11660b.a(z10);
        this.f11661c.a(z10);
        this.f11663e.d(z10);
    }

    public void a(C0787pi c0787pi) {
        this.f11662d.a(c0787pi);
        this.f11661c.a(c0787pi);
        this.f11660b.a(c0787pi);
    }
}
