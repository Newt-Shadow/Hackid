package com.yandex.metrica.impl.ob;

import android.app.Activity;
import android.os.Bundle;
/* loaded from: classes2.dex */
class Vk {

    /* renamed from: a  reason: collision with root package name */
    private final Ok f11668a;

    /* renamed from: b  reason: collision with root package name */
    private final Yk f11669b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Vk(Ok ok, Yk yk) {
        this.f11668a = ok;
        this.f11669b = yk;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(Activity activity, C0957wl c0957wl) {
        String string;
        Bundle a10 = this.f11668a.a(activity);
        if (a10 == null) {
            string = null;
        } else {
            string = a10.getString("yandex:ads:context");
        }
        return this.f11669b.a(string, c0957wl);
    }
}
