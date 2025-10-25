package io.appmetrica.analytics.impl;

import android.content.Context;
import android.os.Bundle;
import io.appmetrica.analytics.coreapi.internal.identifiers.AdTrackingInfo;
import io.appmetrica.analytics.coreapi.internal.identifiers.AdTrackingInfoResult;
import io.appmetrica.analytics.coreapi.internal.identifiers.IdentifierStatus;
import io.appmetrica.analytics.coreutils.internal.reflection.ReflectionUtils;
import io.appmetrica.analytics.identifiers.internal.AdvIdentifiersProvider;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: io.appmetrica.analytics.impl.xg  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1621xg implements F {

    /* renamed from: a  reason: collision with root package name */
    public final String f20934a;

    /* renamed from: b  reason: collision with root package name */
    public final C1596wg f20935b;

    public C1621xg(String str) {
        this(str, new C1596wg());
    }

    @Override // io.appmetrica.analytics.impl.F
    public final AdTrackingInfoResult a(Context context) {
        return a(context, new Wd());
    }

    public final AdTrackingInfoResult b(Context context) {
        int i10 = AdvIdentifiersProvider.f17915a;
        Method method = AdvIdentifiersProvider.class.getMethod("requestIdentifiers", Context.class, Bundle.class);
        Bundle bundle = new Bundle();
        bundle.putString("io.appmetrica.analytics.identifiers.extra.PROVIDER", this.f20934a);
        C1596wg c1596wg = this.f20935b;
        Object[] objArr = {context, bundle};
        AdTrackingInfo adTrackingInfo = null;
        Boolean bool = null;
        Bundle bundle2 = (Bundle) method.invoke(null, objArr);
        c1596wg.getClass();
        if (bundle2 == null) {
            return null;
        }
        Bundle bundle3 = bundle2.getBundle("io.appmetrica.analytics.identifiers.extra.TRACKING_INFO");
        if (bundle3 != null) {
            Object obj = K5.f18477a.get(bundle3.getString("io.appmetrica.analytics.identifiers.extra.PROVIDER"));
            if (obj != null) {
                AdTrackingInfo.Provider provider = (AdTrackingInfo.Provider) obj;
                String string = bundle3.getString("io.appmetrica.analytics.identifiers.extra.ID");
                if (bundle3.containsKey("io.appmetrica.analytics.identifiers.extra.LIMITED")) {
                    bool = Boolean.valueOf(bundle3.getBoolean("io.appmetrica.analytics.identifiers.extra.LIMITED"));
                }
                adTrackingInfo = new AdTrackingInfo(provider, string, bool);
            } else {
                throw new IllegalArgumentException(("Provider " + bundle3.getString("io.appmetrica.analytics.identifiers.extra.PROVIDER") + " is invalid").toString());
            }
        }
        return new AdTrackingInfoResult(adTrackingInfo, IdentifierStatus.Companion.from(bundle2.getString("io.appmetrica.analytics.identifiers.extra.STATUS")), bundle2.getString("io.appmetrica.analytics.identifiers.extra.ERROR_MESSAGE"));
    }

    public C1621xg(String str, C1596wg c1596wg) {
        this.f20934a = str;
        this.f20935b = c1596wg;
    }

    @Override // io.appmetrica.analytics.impl.F
    public final AdTrackingInfoResult a(Context context, Fi fi) {
        AdTrackingInfoResult adTrackingInfoResult;
        AdTrackingInfoResult adTrackingInfoResult2;
        if (ReflectionUtils.detectClassExists("io.appmetrica.analytics.identifiers.internal.AdvIdentifiersProvider")) {
            C1429pn c1429pn = (C1429pn) fi;
            c1429pn.f20396c = 0;
            adTrackingInfoResult = null;
            while (c1429pn.b()) {
                try {
                    return b(context);
                } catch (InvocationTargetException e10) {
                    String message = e10.getTargetException() != null ? e10.getTargetException().getMessage() : null;
                    adTrackingInfoResult2 = new AdTrackingInfoResult(null, IdentifierStatus.UNKNOWN, "exception while fetching " + this.f20934a + " adv_id: " + message);
                    adTrackingInfoResult = adTrackingInfoResult2;
                    try {
                        Thread.sleep(((C1429pn) fi).f20395b);
                    } catch (InterruptedException unused) {
                    }
                } catch (Throwable th) {
                    adTrackingInfoResult2 = new AdTrackingInfoResult(null, IdentifierStatus.UNKNOWN, "exception while fetching " + this.f20934a + " adv_id: " + th.getMessage());
                    adTrackingInfoResult = adTrackingInfoResult2;
                    Thread.sleep(((C1429pn) fi).f20395b);
                }
            }
        } else {
            adTrackingInfoResult = new AdTrackingInfoResult(null, IdentifierStatus.IDENTIFIER_PROVIDER_UNAVAILABLE, "Module io.appmetrica.analytics:analytics-identifiers does not exist");
        }
        return adTrackingInfoResult == null ? new AdTrackingInfoResult() : adTrackingInfoResult;
    }
}
