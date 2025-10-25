package io.appmetrica.analytics.impl;

import android.annotation.TargetApi;
import android.content.Context;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import io.appmetrica.analytics.coreapi.internal.annotations.DoNotInline;
import io.appmetrica.analytics.coreapi.internal.backport.FunctionWithThrowable;
import io.appmetrica.analytics.coreutils.internal.AndroidUtils;
import io.appmetrica.analytics.coreutils.internal.system.SystemServiceUtils;
import io.flutter.Build;
import java.util.ArrayList;
import java.util.List;
@DoNotInline
@TargetApi(Build.API_LEVELS.API_23)
/* loaded from: classes2.dex */
public final class Zk {

    /* renamed from: a  reason: collision with root package name */
    public static final Zk f19353a = new Zk();

    private Zk() {
    }

    public static final List<Tk> a(Context context) {
        List<Tk> h10;
        int r10;
        Integer valueOf;
        Integer valueOf2;
        List<SubscriptionInfo> list = (List) SystemServiceUtils.accessSystemServiceByNameSafely(context, "telephony_subscription_service", "getting active subcription info list", "SubscriptionManager", new FunctionWithThrowable() { // from class: io.appmetrica.analytics.impl.kp
            @Override // io.appmetrica.analytics.coreapi.internal.backport.FunctionWithThrowable
            public final Object apply(Object obj) {
                List a10;
                a10 = Zk.a((SubscriptionManager) obj);
                return a10;
            }
        });
        if (list != null) {
            r10 = yc.p.r(list, 10);
            ArrayList arrayList = new ArrayList(r10);
            for (SubscriptionInfo subscriptionInfo : list) {
                if (AndroidUtils.isApiAchieved(29)) {
                    valueOf = C1053al.a(subscriptionInfo);
                } else {
                    valueOf = Integer.valueOf(subscriptionInfo.getMcc());
                }
                if (AndroidUtils.isApiAchieved(29)) {
                    valueOf2 = C1053al.b(subscriptionInfo);
                } else {
                    valueOf2 = Integer.valueOf(subscriptionInfo.getMnc());
                }
                boolean z10 = subscriptionInfo.getDataRoaming() == 1;
                CharSequence carrierName = subscriptionInfo.getCarrierName();
                arrayList.add(new Tk(valueOf, valueOf2, z10, carrierName != null ? carrierName.toString() : null));
            }
            return arrayList;
        }
        h10 = yc.o.h();
        return h10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List a(SubscriptionManager subscriptionManager) {
        return subscriptionManager.getActiveSubscriptionInfoList();
    }
}
