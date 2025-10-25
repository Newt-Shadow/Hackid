package io.appmetrica.analytics.coreutils.impl;

import android.content.Context;
import android.content.pm.PackageManager;
import io.appmetrica.analytics.coreutils.internal.AndroidUtils;
import io.appmetrica.analytics.coreutils.internal.services.PackageManagerUtilsTiramisu;
import kotlin.jvm.internal.n;
/* loaded from: classes2.dex */
public final class i extends n implements id.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Context f17700a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ String f17701b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(Context context, String str) {
        super(0);
        this.f17700a = context;
        this.f17701b = str;
    }

    @Override // id.a
    public final Object invoke() {
        PackageManager packageManager = this.f17700a.getPackageManager();
        if (AndroidUtils.isApiAchieved(33)) {
            return PackageManagerUtilsTiramisu.INSTANCE.resolveContentProvider(packageManager, this.f17701b);
        }
        return packageManager.resolveContentProvider(this.f17701b, 128);
    }
}
