package io.appmetrica.analytics.impl;

import android.content.Context;
import android.location.LocationManager;
/* renamed from: io.appmetrica.analytics.impl.z2  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1657z2 {

    /* renamed from: a  reason: collision with root package name */
    public final LocationManager f21009a;

    public C1657z2(Context context) {
        this((LocationManager) context.getSystemService("location"));
    }

    public C1657z2(LocationManager locationManager) {
        this.f21009a = locationManager;
    }
}
