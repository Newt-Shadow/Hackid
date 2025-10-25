package io.appmetrica.analytics.impl;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.text.TextUtils;
import io.appmetrica.analytics.coreutils.internal.services.SafePackageManager;
import io.appmetrica.analytics.networktasks.internal.BaseRequestConfig;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
/* renamed from: io.appmetrica.analytics.impl.b6  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC1063b6 extends BaseRequestConfig.ComponentLoader {

    /* renamed from: a  reason: collision with root package name */
    public final SafePackageManager f19423a;

    public AbstractC1063b6(Context context, String str) {
        this(context, str, new SafePackageManager());
    }

    @Override // io.appmetrica.analytics.networktasks.internal.BaseRequestConfig.ComponentLoader, io.appmetrica.analytics.networktasks.internal.BaseRequestConfig.RequestConfigLoader
    /* renamed from: a */
    public C1088c6 load(C1038a6 c1038a6) {
        String str;
        String str2;
        C1088c6 c1088c6 = (C1088c6) super.load((AbstractC1063b6) c1038a6);
        String packageName = getContext().getPackageName();
        ApplicationInfo applicationInfo = this.f19423a.getApplicationInfo(getContext(), getPackageName(), 0);
        String str3 = "1";
        if (applicationInfo != null) {
            int i10 = applicationInfo.flags;
            if ((i10 & 2) != 0) {
                str2 = "1";
            } else {
                str2 = CommonUrlParts.Values.FALSE_INTEGER;
            }
            c1088c6.f19469a = str2;
            if ((i10 & 1) == 0) {
                str3 = CommonUrlParts.Values.FALSE_INTEGER;
            }
            c1088c6.f19470b = str3;
        } else if (TextUtils.equals(packageName, getPackageName())) {
            if ((getContext().getApplicationInfo().flags & 2) != 0) {
                str = "1";
            } else {
                str = CommonUrlParts.Values.FALSE_INTEGER;
            }
            c1088c6.f19469a = str;
            if ((getContext().getApplicationInfo().flags & 1) == 0) {
                str3 = CommonUrlParts.Values.FALSE_INTEGER;
            }
            c1088c6.f19470b = str3;
        } else {
            c1088c6.f19469a = CommonUrlParts.Values.FALSE_INTEGER;
            c1088c6.f19470b = CommonUrlParts.Values.FALSE_INTEGER;
        }
        Ql ql = c1038a6.f19374a;
        c1088c6.f19471c = ql;
        c1088c6.setRetryPolicyConfig(ql.f18847t);
        return c1088c6;
    }

    public AbstractC1063b6(Context context, String str, SafePackageManager safePackageManager) {
        super(context, str);
        this.f19423a = safePackageManager;
    }
}
