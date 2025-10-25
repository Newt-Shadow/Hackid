package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.location.LocationManager;
/* loaded from: classes2.dex */
public class Oc {

    /* renamed from: a  reason: collision with root package name */
    private final LocationManager f10938a;

    /* renamed from: b  reason: collision with root package name */
    private final H2 f10939b;

    /* renamed from: c  reason: collision with root package name */
    private final Xj f10940c = F0.g().v();

    public Oc(Context context) {
        this.f10938a = (LocationManager) context.getSystemService("location");
        this.f10939b = H2.a(context);
    }

    public LocationManager a() {
        return this.f10938a;
    }

    public Xj b() {
        return this.f10940c;
    }

    public H2 c() {
        return this.f10939b;
    }
}
