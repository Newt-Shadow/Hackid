package com.yandex.metrica.identifiers.impl;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
/* loaded from: classes.dex */
public final class k implements i {
    @Override // com.yandex.metrica.identifiers.impl.i
    public g a(Context context) {
        kotlin.jvm.internal.m.e(context, "context");
        try {
            AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(context);
            kotlin.jvm.internal.m.d(advertisingIdInfo, "AdvertisingIdClient.getAdvertisingIdInfo(context)");
            return new g(l.f9671b, new f("google", advertisingIdInfo.getId(), Boolean.valueOf(advertisingIdInfo.isLimitAdTrackingEnabled())), null, 4);
        } catch (l5.h unused) {
            return new g(l.f9672c, null, "could not resolve google services", 2);
        } catch (Throwable th) {
            l lVar = l.f9673d;
            return new g(lVar, null, "exception while fetching google adv_id: " + th.getMessage(), 2);
        }
    }
}
