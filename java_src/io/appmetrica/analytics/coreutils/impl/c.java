package io.appmetrica.analytics.coreutils.impl;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import io.appmetrica.analytics.coreutils.internal.services.SafePackageManager;
import kotlin.jvm.internal.n;
/* loaded from: classes2.dex */
public final class c extends n implements id.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ SafePackageManager f17685a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Context f17686b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(SafePackageManager safePackageManager, Context context) {
        super(0);
        this.f17685a = safePackageManager;
        this.f17686b = context;
    }

    @Override // id.a
    public final Object invoke() {
        SafePackageManager safePackageManager = this.f17685a;
        Context context = this.f17686b;
        ApplicationInfo applicationInfo = safePackageManager.getApplicationInfo(context, context.getPackageName(), 128);
        if (applicationInfo != null) {
            return applicationInfo.metaData;
        }
        return null;
    }
}
