package io.appmetrica.analytics.adrevenue.fyber.v3.impl;

import com.fyber.fairbid.ads.PlacementType;
/* loaded from: classes2.dex */
public abstract /* synthetic */ class b {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int[] f17557a;

    static {
        int[] iArr = new int[PlacementType.values().length];
        f17557a = iArr;
        try {
            iArr[PlacementType.BANNER.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f17557a[PlacementType.REWARDED.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f17557a[PlacementType.INTERSTITIAL.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
    }
}
