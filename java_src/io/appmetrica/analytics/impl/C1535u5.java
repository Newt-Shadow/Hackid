package io.appmetrica.analytics.impl;

import android.content.Context;
import java.util.HashMap;
/* renamed from: io.appmetrica.analytics.impl.u5  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1535u5 {

    /* renamed from: a  reason: collision with root package name */
    public final HashMap f20702a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    public final HashMap f20703b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    public final Context f20704c;

    public C1535u5(Context context) {
        this.f20704c = context.getApplicationContext();
    }

    public final Sa a(C1212h5 c1212h5, G4 g42, X7 x72, HashMap hashMap) {
        Sa sa2 = (Sa) hashMap.get(c1212h5.toString());
        if (sa2 == null) {
            Sa a10 = x72.a(this.f20704c, c1212h5, g42);
            hashMap.put(c1212h5.toString(), a10);
            return a10;
        }
        sa2.a(g42);
        return sa2;
    }
}
