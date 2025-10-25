package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.location.LocationManager;
/* renamed from: com.yandex.metrica.impl.ob.x  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0959x {

    /* renamed from: a  reason: collision with root package name */
    private final LocationManager f13912a;

    public C0959x(Context context) {
        this((LocationManager) context.getSystemService("location"));
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0012  */
    /* JADX WARN: Removed duplicated region for block: B:15:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<java.lang.String> a() {
        /*
            r3 = this;
            android.location.LocationManager r0 = r3.f13912a
            java.util.List r1 = java.util.Collections.emptyList()
            if (r0 == 0) goto Le
            r2 = 1
            java.util.List r0 = r0.getProviders(r2)     // Catch: java.lang.Throwable -> Le
            goto Lf
        Le:
            r0 = 0
        Lf:
            if (r0 != 0) goto L12
            goto L13
        L12:
            r1 = r0
        L13:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.C0959x.a():java.util.List");
    }

    C0959x(LocationManager locationManager) {
        this.f13912a = locationManager;
    }
}
