package com.yandex.metrica.impl.ob;

import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
class Hh {

    /* renamed from: a  reason: collision with root package name */
    private final C0567gm f10210a;

    /* renamed from: b  reason: collision with root package name */
    private final long f10211b;

    /* renamed from: c  reason: collision with root package name */
    private long f10212c;

    /* renamed from: d  reason: collision with root package name */
    private long f10213d;

    /* renamed from: e  reason: collision with root package name */
    private long f10214e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Hh(dc.d dVar, C0567gm c0567gm) {
        this.f10211b = dVar.currentTimeMillis();
        this.f10210a = c0567gm;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        this.f10212c = this.f10210a.b(this.f10211b, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        this.f10213d = this.f10210a.b(this.f10211b, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        this.f10214e = this.f10210a.b(this.f10211b, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long d() {
        return this.f10212c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long e() {
        return this.f10213d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long f() {
        return this.f10214e;
    }
}
