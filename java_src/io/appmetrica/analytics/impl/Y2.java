package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.servicecomponents.batteryinfo.BatteryInfo;
import io.appmetrica.analytics.coreapi.internal.servicecomponents.batteryinfo.ChargeType;
import io.appmetrica.analytics.coreapi.internal.servicecomponents.batteryinfo.ChargeTypeChangeListener;
import io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable;
import java.util.Iterator;
/* loaded from: classes2.dex */
public final class Y2 extends SafeRunnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ BatteryInfo f19275a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Z2 f19276b;

    public Y2(Z2 z22, BatteryInfo batteryInfo) {
        this.f19276b = z22;
        this.f19275a = batteryInfo;
    }

    @Override // io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable
    public final void runSafety() {
        C1035a3 c1035a3 = this.f19276b.f19318a;
        ChargeType chargeType = this.f19275a.chargeType;
        ChargeType chargeType2 = C1035a3.f19361d;
        synchronized (c1035a3) {
            Iterator it = c1035a3.f19364c.iterator();
            while (it.hasNext()) {
                ((ChargeTypeChangeListener) it.next()).onChargeTypeChanged(chargeType);
            }
        }
    }
}
