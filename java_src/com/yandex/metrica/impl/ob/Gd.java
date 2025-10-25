package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.content.pm.PackageInfo;
import io.appmetrica.analytics.coreutils.internal.io.Base64Utils;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class Gd implements Ad {

    /* renamed from: a  reason: collision with root package name */
    private final Context f10126a;

    /* renamed from: b  reason: collision with root package name */
    private final String f10127b;

    /* renamed from: c  reason: collision with root package name */
    private final C0717mn f10128c;

    public Gd(Context context, String str, C0717mn c0717mn) {
        this.f10126a = context;
        this.f10127b = str;
        this.f10128c = c0717mn;
    }

    @Override // com.yandex.metrica.impl.ob.Ad
    public List<Bd> a() {
        ArrayList arrayList = new ArrayList();
        PackageInfo b10 = this.f10128c.b(this.f10126a, this.f10127b, Base64Utils.IO_BUFFER_SIZE);
        if (b10 != null) {
            for (String str : b10.requestedPermissions) {
                arrayList.add(new Bd(str, true));
            }
        }
        return arrayList;
    }
}
