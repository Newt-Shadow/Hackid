package com.yandex.metrica.impl.ob;

import android.annotation.TargetApi;
import android.telephony.SubscriptionInfo;
import com.yandex.metrica.DoNotInline;
@TargetApi(29)
@DoNotInline
/* loaded from: classes2.dex */
public final class Wj {

    /* renamed from: a  reason: collision with root package name */
    public static final Wj f11699a = new Wj();

    private Wj() {
    }

    public static final Integer a(SubscriptionInfo subscriptionInfo) {
        String mccString;
        mccString = subscriptionInfo.getMccString();
        return C0419b.c(mccString);
    }

    public static final Integer b(SubscriptionInfo subscriptionInfo) {
        String mncString;
        mncString = subscriptionInfo.getMncString();
        return C0419b.c(mncString);
    }
}
