package io.appmetrica.analytics.impl;

import android.annotation.TargetApi;
import android.telephony.SubscriptionInfo;
import io.appmetrica.analytics.coreapi.internal.annotations.DoNotInline;
import io.appmetrica.analytics.coreutils.internal.parsing.ParseUtils;
@DoNotInline
@TargetApi(29)
/* renamed from: io.appmetrica.analytics.impl.al  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1053al {

    /* renamed from: a  reason: collision with root package name */
    public static final C1053al f19404a = new C1053al();

    private C1053al() {
    }

    public static final Integer a(SubscriptionInfo subscriptionInfo) {
        String mccString;
        mccString = subscriptionInfo.getMccString();
        return ParseUtils.intValueOf(mccString);
    }

    public static final Integer b(SubscriptionInfo subscriptionInfo) {
        String mncString;
        mncString = subscriptionInfo.getMncString();
        return ParseUtils.intValueOf(mncString);
    }
}
