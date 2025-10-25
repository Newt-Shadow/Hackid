package io.appmetrica.analytics.coreutils.internal.services.telephony;

import android.annotation.TargetApi;
import android.content.Context;
import android.telephony.TelephonyManager;
import io.appmetrica.analytics.coreapi.internal.annotations.DoNotInline;
import io.appmetrica.analytics.coreapi.internal.backport.FunctionWithThrowable;
import io.appmetrica.analytics.coreutils.internal.AndroidUtils;
import io.appmetrica.analytics.coreutils.internal.system.SystemServiceUtils;
import io.flutter.Build;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public final class CellularNetworkTypeExtractor {
    public static final Companion Companion = new Companion(null);
    public static final String UNKNOWN_NETWORK_TYPE_VALUE = "unknown";

    /* renamed from: a  reason: collision with root package name */
    private final Context f17770a;

    /* renamed from: b  reason: collision with root package name */
    private final FunctionWithThrowable f17771b;

    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    @DoNotInline
    @TargetApi(Build.API_LEVELS.API_24)
    /* loaded from: classes2.dex */
    public static final class a implements FunctionWithThrowable<TelephonyManager, Integer> {
        @Override // io.appmetrica.analytics.coreapi.internal.backport.FunctionWithThrowable
        /* renamed from: a */
        public Integer apply(TelephonyManager telephonyManager) {
            return Integer.valueOf(telephonyManager.getDataNetworkType());
        }
    }

    @DoNotInline
    /* loaded from: classes2.dex */
    public static final class b implements FunctionWithThrowable<TelephonyManager, Integer> {
        @Override // io.appmetrica.analytics.coreapi.internal.backport.FunctionWithThrowable
        /* renamed from: a */
        public Integer apply(TelephonyManager telephonyManager) {
            return Integer.valueOf(telephonyManager.getNetworkType());
        }
    }

    public CellularNetworkTypeExtractor(Context context) {
        FunctionWithThrowable bVar;
        this.f17770a = context;
        if (AndroidUtils.isApiAchieved(24)) {
            bVar = new a();
        } else {
            bVar = new b();
        }
        this.f17771b = bVar;
    }

    public final Context getContext() {
        return this.f17770a;
    }

    public final String getNetworkType() {
        return CellularNetworkTypeConverter.convert((Integer) SystemServiceUtils.accessSystemServiceByNameSafely(this.f17770a, "phone", "Extracting cellular networkType", "TelephonyManager", this.f17771b));
    }
}
