package io.appmetrica.analytics.impl;

import android.content.Intent;
import com.arthenica.ffmpegkit.flutter.FFmpegKitFlutterPlugin;
import io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor;
import io.appmetrica.analytics.coreapi.internal.servicecomponents.batteryinfo.BatteryInfo;
import io.appmetrica.analytics.coreapi.internal.servicecomponents.batteryinfo.ChargeType;
import io.appmetrica.analytics.coreapi.internal.servicecomponents.batteryinfo.ChargeTypeChangeListener;
import io.appmetrica.analytics.coreapi.internal.servicecomponents.batteryinfo.ChargeTypeProvider;
import java.util.ArrayList;
/* renamed from: io.appmetrica.analytics.impl.a3  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1035a3 implements ChargeTypeProvider {

    /* renamed from: d  reason: collision with root package name */
    public static final ChargeType f19361d = ChargeType.UNKNOWN;

    /* renamed from: a  reason: collision with root package name */
    public final ICommonExecutor f19362a;

    /* renamed from: b  reason: collision with root package name */
    public volatile BatteryInfo f19363b;

    /* renamed from: c  reason: collision with root package name */
    public final ArrayList f19364c = new ArrayList();

    public C1035a3(ICommonExecutor iCommonExecutor, X2 x22) {
        Z2 z22 = new Z2(this);
        this.f19362a = iCommonExecutor;
        this.f19363b = a(x22.a(z22));
    }

    public static BatteryInfo a(Intent intent) {
        ChargeType chargeType = f19361d;
        Integer num = null;
        if (intent != null) {
            int intExtra = intent.getIntExtra(FFmpegKitFlutterPlugin.KEY_LOG_LEVEL, -1);
            int intExtra2 = intent.getIntExtra("scale", -1);
            if (intExtra > 0 && intExtra2 > 0) {
                num = Integer.valueOf((intExtra * 100) / intExtra2);
            }
            int intExtra3 = intent.getIntExtra("plugged", -1);
            chargeType = ChargeType.NONE;
            if (intExtra3 != 1) {
                if (intExtra3 != 2) {
                    if (intExtra3 == 4) {
                        chargeType = ChargeType.WIRELESS;
                    }
                } else {
                    chargeType = ChargeType.USB;
                }
            } else {
                chargeType = ChargeType.AC;
            }
        }
        return new BatteryInfo(num, chargeType);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.servicecomponents.batteryinfo.ChargeTypeProvider
    public final Integer getBatteryLevel() {
        BatteryInfo batteryInfo = this.f19363b;
        if (batteryInfo == null) {
            return null;
        }
        return batteryInfo.batteryLevel;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.servicecomponents.batteryinfo.ChargeTypeProvider
    public final ChargeType getChargeType() {
        BatteryInfo batteryInfo = this.f19363b;
        if (batteryInfo == null) {
            return ChargeType.UNKNOWN;
        }
        return batteryInfo.chargeType;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.servicecomponents.batteryinfo.ChargeTypeProvider
    public final synchronized void registerChargeTypeListener(ChargeTypeChangeListener chargeTypeChangeListener) {
        this.f19364c.add(chargeTypeChangeListener);
        chargeTypeChangeListener.onChargeTypeChanged(getChargeType());
    }
}
