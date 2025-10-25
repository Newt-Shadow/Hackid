package io.appmetrica.analytics.impl;

import android.content.Context;
import android.content.pm.PackageInfo;
import io.appmetrica.analytics.coreapi.internal.permission.PermissionState;
import io.appmetrica.analytics.coreutils.internal.io.Base64Utils;
import io.appmetrica.analytics.coreutils.internal.services.SafePackageManager;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public final class Oi {

    /* renamed from: a  reason: collision with root package name */
    public final Context f18709a;

    /* renamed from: b  reason: collision with root package name */
    public final SafePackageManager f18710b;

    public Oi(Context context, SafePackageManager safePackageManager) {
        this.f18709a = context;
        this.f18710b = safePackageManager;
    }

    public final ArrayList a() {
        ArrayList arrayList = new ArrayList();
        SafePackageManager safePackageManager = this.f18710b;
        Context context = this.f18709a;
        PackageInfo packageInfo = safePackageManager.getPackageInfo(context, context.getPackageName(), Base64Utils.IO_BUFFER_SIZE);
        if (packageInfo == null) {
            return arrayList;
        }
        String[] strArr = packageInfo.requestedPermissions;
        int[] iArr = packageInfo.requestedPermissionsFlags;
        if (strArr == null) {
            return arrayList;
        }
        for (int i10 = 0; i10 < strArr.length; i10++) {
            String str = strArr[i10];
            if (iArr != null && iArr.length > i10 && (iArr[i10] & 2) != 0) {
                arrayList.add(new PermissionState(str, true));
            } else {
                arrayList.add(new PermissionState(str, false));
            }
        }
        return arrayList;
    }
}
