package com.yandex.metrica.impl.ob;

import android.app.Activity;
import android.content.ComponentName;
import android.content.pm.ActivityInfo;
import android.os.Bundle;
/* renamed from: com.yandex.metrica.impl.ob.ck  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
class C0465ck implements Ok {

    /* renamed from: a  reason: collision with root package name */
    private final C0717mn f12193a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0465ck() {
        this(new C0717mn());
    }

    @Override // com.yandex.metrica.impl.ob.Ok
    public Bundle a(Activity activity) {
        ActivityInfo activityInfo;
        C0717mn c0717mn = this.f12193a;
        ComponentName componentName = activity.getComponentName();
        c0717mn.getClass();
        try {
            activityInfo = activity.getPackageManager().getActivityInfo(componentName, 128);
        } catch (Throwable unused) {
            activityInfo = null;
        }
        if (activityInfo == null) {
            return null;
        }
        return activityInfo.metaData;
    }

    C0465ck(C0717mn c0717mn) {
        this.f12193a = c0717mn;
    }
}
