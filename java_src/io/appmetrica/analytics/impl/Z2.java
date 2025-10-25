package io.appmetrica.analytics.impl;

import android.content.Intent;
import io.appmetrica.analytics.coreapi.internal.backport.Consumer;
import io.appmetrica.analytics.coreapi.internal.servicecomponents.batteryinfo.BatteryInfo;
import io.appmetrica.analytics.coreapi.internal.servicecomponents.batteryinfo.ChargeType;
/* loaded from: classes2.dex */
public final class Z2 implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C1035a3 f19318a;

    public Z2(C1035a3 c1035a3) {
        this.f19318a = c1035a3;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.backport.Consumer
    public final void consume(Object obj) {
        ChargeType chargeType;
        Intent intent = (Intent) obj;
        BatteryInfo batteryInfo = this.f19318a.f19363b;
        if (batteryInfo == null) {
            chargeType = null;
        } else {
            chargeType = batteryInfo.chargeType;
        }
        this.f19318a.getClass();
        BatteryInfo a10 = C1035a3.a(intent);
        this.f19318a.f19363b = a10;
        if (chargeType != a10.chargeType) {
            this.f19318a.f19362a.execute(new Y2(this, a10));
        }
    }
}
