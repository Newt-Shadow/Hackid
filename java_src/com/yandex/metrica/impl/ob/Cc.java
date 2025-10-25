package com.yandex.metrica.impl.ob;

import android.location.LocationManager;
/* loaded from: classes2.dex */
public class Cc {

    /* renamed from: a  reason: collision with root package name */
    public final Sb f9841a;

    /* renamed from: b  reason: collision with root package name */
    public final LocationManager f9842b;

    /* renamed from: c  reason: collision with root package name */
    public final C0706mc f9843c;

    Cc(Sb sb2, C0787pi c0787pi, C0706mc c0706mc, LocationManager locationManager, Sc sc2, Rb rb2) {
        this.f9841a = sb2;
        this.f9843c = c0706mc;
        this.f9842b = locationManager;
    }

    public static Cc a(Nc nc2, Sc sc2, Rb rb2, LocationManager locationManager) {
        return new Cc(nc2.f10889a, nc2.f10890b, nc2.f10891c, locationManager, sc2, rb2);
    }
}
