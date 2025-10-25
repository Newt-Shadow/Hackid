package io.appmetrica.analytics.impl;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.app.usage.UsageStatsManager;
import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.annotations.DoNotInline;
import io.appmetrica.analytics.coreapi.internal.backport.FunctionWithThrowable;
import io.appmetrica.analytics.coreutils.internal.AndroidUtils;
import io.appmetrica.analytics.coreutils.internal.system.SystemServiceUtils;
import io.flutter.Build;
@DoNotInline
@TargetApi(Build.API_LEVELS.API_28)
/* loaded from: classes2.dex */
public final class C2 {

    /* renamed from: a  reason: collision with root package name */
    public static final C2 f18029a = new C2();

    private C2() {
    }

    public static final F2 a(Context context, final C1134e2 c1134e2) {
        return new F2((E2) SystemServiceUtils.accessSystemServiceByNameSafely(context, "usagestats", "getting app standby bucket", "usageStatsManager", new FunctionWithThrowable() { // from class: io.appmetrica.analytics.impl.ro
            @Override // io.appmetrica.analytics.coreapi.internal.backport.FunctionWithThrowable
            public final Object apply(Object obj) {
                E2 a10;
                a10 = C2.a(C1134e2.this, (UsageStatsManager) obj);
                return a10;
            }
        }), (Boolean) SystemServiceUtils.accessSystemServiceByNameSafely(context, "activity", "getting is background restricted", "activityManager", new FunctionWithThrowable() { // from class: io.appmetrica.analytics.impl.so
            @Override // io.appmetrica.analytics.coreapi.internal.backport.FunctionWithThrowable
            public final Object apply(Object obj) {
                Boolean a10;
                a10 = C2.a((ActivityManager) obj);
                return a10;
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final E2 a(C1134e2 c1134e2, UsageStatsManager usageStatsManager) {
        int appStandbyBucket;
        appStandbyBucket = usageStatsManager.getAppStandbyBucket();
        c1134e2.getClass();
        if (AndroidUtils.isApiAchieved(28)) {
            if (AndroidUtils.isApiAchieved(30) && appStandbyBucket == 45) {
                return E2.RESTRICTED;
            }
            if (appStandbyBucket == 5) {
                return E2.EXEMPTED;
            }
            if (appStandbyBucket == 10) {
                return E2.ACTIVE;
            }
            if (appStandbyBucket == 30) {
                return E2.FREQUENT;
            }
            if (appStandbyBucket == 20) {
                return E2.WORKING_SET;
            }
            if (appStandbyBucket == 40) {
                return E2.RARE;
            }
            return E2.UNKNOWN;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Boolean a(ActivityManager activityManager) {
        boolean isBackgroundRestricted;
        isBackgroundRestricted = activityManager.isBackgroundRestricted();
        return Boolean.valueOf(isBackgroundRestricted);
    }
}
