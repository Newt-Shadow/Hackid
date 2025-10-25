package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.AndroidUtils;
/* loaded from: classes2.dex */
public final class Ae extends Pc {
    public Ae() {
        super(De.UNDEFINED);
        a(1, De.WIFI);
        a(0, De.CELL);
        a(3, De.ETHERNET);
        a(2, De.BLUETOOTH);
        a(4, De.VPN);
        if (AndroidUtils.isApiAchieved(27)) {
            a(6, De.LOWPAN);
        }
        if (AndroidUtils.isApiAchieved(26)) {
            a(5, De.WIFI_AWARE);
        }
    }
}
