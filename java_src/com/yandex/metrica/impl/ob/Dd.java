package com.yandex.metrica.impl.ob;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageInfo;
import io.appmetrica.analytics.coreutils.internal.io.Base64Utils;
import java.util.ArrayList;
import java.util.List;
@TargetApi(16)
/* loaded from: classes2.dex */
class Dd implements Ad {

    /* renamed from: a  reason: collision with root package name */
    private final Context f9909a;

    /* renamed from: b  reason: collision with root package name */
    private final C0717mn f9910b;

    public Dd(Context context, C0717mn c0717mn) {
        this.f9909a = context;
        this.f9910b = c0717mn;
    }

    @Override // com.yandex.metrica.impl.ob.Ad
    public List<Bd> a() {
        ArrayList arrayList = new ArrayList();
        C0717mn c0717mn = this.f9910b;
        Context context = this.f9909a;
        PackageInfo b10 = c0717mn.b(context, context.getPackageName(), Base64Utils.IO_BUFFER_SIZE);
        if (b10 == null) {
            return arrayList;
        }
        String[] strArr = b10.requestedPermissions;
        int[] iArr = b10.requestedPermissionsFlags;
        if (strArr == null) {
            return arrayList;
        }
        for (int i10 = 0; i10 < strArr.length; i10++) {
            String str = strArr[i10];
            if (iArr != null && iArr.length > i10 && (iArr[i10] & 2) != 0) {
                arrayList.add(new Bd(str, true));
            } else {
                arrayList.add(new Bd(str, false));
            }
        }
        return arrayList;
    }
}
