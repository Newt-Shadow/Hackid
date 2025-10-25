package com.yandex.metrica.impl.ob;

import android.annotation.TargetApi;
import android.content.Context;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import com.yandex.metrica.DoNotInline;
import io.flutter.Build;
import java.util.ArrayList;
import java.util.List;
@TargetApi(Build.API_LEVELS.API_23)
@DoNotInline
/* loaded from: classes2.dex */
public final class Vj {

    /* renamed from: a  reason: collision with root package name */
    public static final Vj f11666a = new Vj();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class a<T, R> implements InterfaceC0766om<SubscriptionManager, List<? extends SubscriptionInfo>> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f11667a = new a();

        a() {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0766om
        public List<? extends SubscriptionInfo> a(SubscriptionManager subscriptionManager) {
            return subscriptionManager.getActiveSubscriptionInfoList();
        }
    }

    private Vj() {
    }

    public static final List<Tj> a(Context context) {
        List<Tj> h10;
        int r10;
        Integer valueOf;
        Integer valueOf2;
        String str;
        List<SubscriptionInfo> list = (List) A2.a(a.f11667a, context, "telephony_subscription_service", "getting active subcription info list", "SubscriptionManager");
        if (list != null) {
            r10 = yc.p.r(list, 10);
            ArrayList arrayList = new ArrayList(r10);
            for (SubscriptionInfo subscriptionInfo : list) {
                if (A2.a(29)) {
                    valueOf = Wj.a(subscriptionInfo);
                } else {
                    valueOf = Integer.valueOf(subscriptionInfo.getMcc());
                }
                if (A2.a(29)) {
                    valueOf2 = Wj.b(subscriptionInfo);
                } else {
                    valueOf2 = Integer.valueOf(subscriptionInfo.getMnc());
                }
                boolean z10 = true;
                if (subscriptionInfo.getDataRoaming() != 1) {
                    z10 = false;
                }
                CharSequence carrierName = subscriptionInfo.getCarrierName();
                if (carrierName != null) {
                    str = carrierName.toString();
                } else {
                    str = null;
                }
                arrayList.add(new Tj(valueOf, valueOf2, z10, str));
            }
            return arrayList;
        }
        h10 = yc.o.h();
        return h10;
    }
}
