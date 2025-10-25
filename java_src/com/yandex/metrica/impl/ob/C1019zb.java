package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.zb  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C1019zb {

    /* renamed from: a  reason: collision with root package name */
    private final C0899ub f14068a;

    /* renamed from: b  reason: collision with root package name */
    private final C0899ub f14069b;

    /* renamed from: c  reason: collision with root package name */
    private final C0899ub f14070c;

    public C1019zb() {
        this(new C0899ub(), new C0899ub(), new C0899ub());
    }

    public C0899ub a() {
        return this.f14068a;
    }

    public C0899ub b() {
        return this.f14069b;
    }

    public C0899ub c() {
        return this.f14070c;
    }

    public String toString() {
        return "AdvertisingIdsHolder{mGoogle=" + this.f14068a + ", mHuawei=" + this.f14069b + ", yandex=" + this.f14070c + '}';
    }

    public C1019zb(C0899ub c0899ub, C0899ub c0899ub2, C0899ub c0899ub3) {
        this.f14068a = c0899ub;
        this.f14069b = c0899ub2;
        this.f14070c = c0899ub3;
    }
}
