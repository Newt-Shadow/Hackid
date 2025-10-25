package io.appmetrica.analytics.coreapi.internal.identifiers;
/* loaded from: classes2.dex */
public class AdvertisingIdsHolder {

    /* renamed from: a  reason: collision with root package name */
    private final AdTrackingInfoResult f17645a;

    /* renamed from: b  reason: collision with root package name */
    private final AdTrackingInfoResult f17646b;

    /* renamed from: c  reason: collision with root package name */
    private final AdTrackingInfoResult f17647c;

    public AdvertisingIdsHolder() {
        this(new AdTrackingInfoResult(), new AdTrackingInfoResult(), new AdTrackingInfoResult());
    }

    public AdTrackingInfoResult getGoogle() {
        return this.f17645a;
    }

    public AdTrackingInfoResult getHuawei() {
        return this.f17646b;
    }

    public AdTrackingInfoResult getYandex() {
        return this.f17647c;
    }

    public String toString() {
        return "AdvertisingIdsHolder{mGoogle=" + this.f17645a + ", mHuawei=" + this.f17646b + ", yandex=" + this.f17647c + '}';
    }

    public AdvertisingIdsHolder(AdTrackingInfoResult adTrackingInfoResult, AdTrackingInfoResult adTrackingInfoResult2, AdTrackingInfoResult adTrackingInfoResult3) {
        this.f17645a = adTrackingInfoResult;
        this.f17646b = adTrackingInfoResult2;
        this.f17647c = adTrackingInfoResult3;
    }
}
