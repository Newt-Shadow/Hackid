package com.yandex.metrica.impl.ob;

import android.location.Location;
/* renamed from: com.yandex.metrica.impl.ob.yc  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
class C0996yc {

    /* renamed from: a  reason: collision with root package name */
    private C0706mc f13994a;

    /* renamed from: b  reason: collision with root package name */
    private V f13995b;

    /* renamed from: c  reason: collision with root package name */
    private Location f13996c = null;

    /* renamed from: d  reason: collision with root package name */
    private long f13997d;

    /* renamed from: e  reason: collision with root package name */
    private C0962x2 f13998e;

    /* renamed from: f  reason: collision with root package name */
    private Sc f13999f;

    /* renamed from: g  reason: collision with root package name */
    private Rb f14000g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0996yc(C0706mc c0706mc, V v10, Location location, long j10, C0962x2 c0962x2, Sc sc2, Rb rb2) {
        this.f13994a = c0706mc;
        this.f13995b = v10;
        this.f13997d = j10;
        this.f13998e = c0962x2;
        this.f13999f = sc2;
        this.f14000g = rb2;
    }

    private boolean b(Location location) {
        C0706mc c0706mc;
        boolean z10;
        boolean z11;
        if (location == null || (c0706mc = this.f13994a) == null) {
            return false;
        }
        if (this.f13996c != null) {
            boolean a10 = this.f13998e.a(this.f13997d, c0706mc.f12862a, "isSavedLocationOutdated");
            if (location.distanceTo(this.f13996c) > this.f13994a.f12863b) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (this.f13996c != null && location.getTime() - this.f13996c.getTime() < 0) {
                z11 = false;
            } else {
                z11 = true;
            }
            if ((!a10 && !z10) || !z11) {
                return false;
            }
        }
        return true;
    }

    public void a(Location location) {
        if (b(location)) {
            this.f13996c = location;
            this.f13997d = System.currentTimeMillis();
            this.f13995b.a(location);
            this.f13999f.a();
            this.f14000g.a();
        }
    }

    public void a(C0706mc c0706mc) {
        this.f13994a = c0706mc;
    }
}
