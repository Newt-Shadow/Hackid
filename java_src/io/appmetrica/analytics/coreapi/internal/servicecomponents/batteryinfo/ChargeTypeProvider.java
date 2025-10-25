package io.appmetrica.analytics.coreapi.internal.servicecomponents.batteryinfo;
/* loaded from: classes2.dex */
public interface ChargeTypeProvider {
    Integer getBatteryLevel();

    ChargeType getChargeType();

    void registerChargeTypeListener(ChargeTypeChangeListener chargeTypeChangeListener);
}
