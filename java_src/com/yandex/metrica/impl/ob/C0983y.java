package com.yandex.metrica.impl.ob;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.app.usage.UsageStatsManager;
import android.content.Context;
import com.yandex.metrica.DoNotInline;
import com.yandex.metrica.impl.ob.C1007z;
import io.flutter.Build;
@TargetApi(Build.API_LEVELS.API_28)
@DoNotInline
/* renamed from: com.yandex.metrica.impl.ob.y  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0983y {

    /* renamed from: a  reason: collision with root package name */
    public static final C0983y f13968a = new C0983y();

    /* renamed from: com.yandex.metrica.impl.ob.y$a */
    /* loaded from: classes2.dex */
    static final class a<T, R> implements InterfaceC0766om<UsageStatsManager, C1007z.a> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C0911v f13969a;

        a(C0911v c0911v) {
            this.f13969a = c0911v;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0766om
        public C1007z.a a(UsageStatsManager usageStatsManager) {
            int appStandbyBucket;
            C0911v c0911v = this.f13969a;
            appStandbyBucket = usageStatsManager.getAppStandbyBucket();
            c0911v.getClass();
            if (A2.a(28)) {
                if (A2.a(30) && appStandbyBucket == 45) {
                    return C1007z.a.RESTRICTED;
                }
                if (appStandbyBucket != 10) {
                    if (appStandbyBucket != 20) {
                        if (appStandbyBucket != 30) {
                            if (appStandbyBucket == 40) {
                                return C1007z.a.RARE;
                            }
                        } else {
                            return C1007z.a.FREQUENT;
                        }
                    } else {
                        return C1007z.a.WORKING_SET;
                    }
                } else {
                    return C1007z.a.ACTIVE;
                }
            }
            return null;
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.y$b */
    /* loaded from: classes2.dex */
    static final class b<T, R> implements InterfaceC0766om<ActivityManager, Boolean> {

        /* renamed from: a  reason: collision with root package name */
        public static final b f13970a = new b();

        b() {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0766om
        public Boolean a(ActivityManager activityManager) {
            boolean isBackgroundRestricted;
            isBackgroundRestricted = activityManager.isBackgroundRestricted();
            return Boolean.valueOf(isBackgroundRestricted);
        }
    }

    private C0983y() {
    }

    public static final C1007z a(Context context, C0911v c0911v) {
        return new C1007z((C1007z.a) A2.a(new a(c0911v), context, "usagestats", "getting app standby bucket", "usageStatsManager"), (Boolean) A2.a(b.f13970a, context, "activity", "getting is background restricted", "activityManager"));
    }
}
