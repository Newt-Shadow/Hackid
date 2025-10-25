package com.yandex.metrica.impl.ob;

import android.app.Activity;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Bundle;
/* renamed from: com.yandex.metrica.impl.ob.ek  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
class C0515ek implements Ok {

    /* renamed from: a  reason: collision with root package name */
    private final Bundle f12346a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0515ek(Context context) {
        this(context, new C0717mn());
    }

    @Override // com.yandex.metrica.impl.ob.Ok
    public Bundle a(Activity activity) {
        return this.f12346a;
    }

    C0515ek(Context context, C0717mn c0717mn) {
        ApplicationInfo a10 = c0717mn.a(context, context.getPackageName(), 128);
        if (a10 != null) {
            this.f12346a = a10.metaData;
        } else {
            this.f12346a = null;
        }
    }
}
