package com.yandex.metrica.impl.ob;
/* loaded from: classes2.dex */
public class X0 {

    /* renamed from: a  reason: collision with root package name */
    private final dc.d f11709a;

    /* renamed from: b  reason: collision with root package name */
    private final C0962x2 f11710b;

    /* renamed from: c  reason: collision with root package name */
    private final C0504e9 f11711c;

    /* renamed from: d  reason: collision with root package name */
    private long f11712d;

    /* renamed from: e  reason: collision with root package name */
    private Zh f11713e;

    /* renamed from: f  reason: collision with root package name */
    private final M0 f11714f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public X0(C0504e9 c0504e9, Zh zh, dc.d dVar, C0962x2 c0962x2, M0 m02) {
        this.f11711c = c0504e9;
        this.f11713e = zh;
        this.f11712d = c0504e9.d(0L);
        this.f11709a = dVar;
        this.f11710b = c0962x2;
        this.f11714f = m02;
    }

    public void a() {
        Zh zh = this.f11713e;
        if (zh == null || !this.f11710b.b(this.f11712d, zh.f11890a, "should send EVENT_IDENTITY_LIGHT")) {
            return;
        }
        this.f11714f.b();
        long currentTimeSeconds = this.f11709a.currentTimeSeconds();
        this.f11712d = currentTimeSeconds;
        this.f11711c.i(currentTimeSeconds);
    }

    public void a(Zh zh) {
        this.f11713e = zh;
    }
}
