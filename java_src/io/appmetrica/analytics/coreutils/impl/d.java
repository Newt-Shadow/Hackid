package io.appmetrica.analytics.coreutils.impl;

import android.content.Context;
import android.content.pm.PackageManager;
import io.appmetrica.analytics.coreutils.internal.AndroidUtils;
import io.appmetrica.analytics.coreutils.internal.services.SafePackageManagerHelperForR;
import kotlin.jvm.internal.n;
/* loaded from: classes2.dex */
public final class d extends n implements id.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Context f17687a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ String f17688b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(Context context, String str) {
        super(0);
        this.f17687a = context;
        this.f17688b = str;
    }

    @Override // id.a
    public final Object invoke() {
        PackageManager packageManager = this.f17687a.getPackageManager();
        if (AndroidUtils.isApiAchieved(30)) {
            return SafePackageManagerHelperForR.extractPackageInstaller(packageManager, this.f17688b);
        }
        return packageManager.getInstallerPackageName(this.f17688b);
    }
}
