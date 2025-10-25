package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
/* loaded from: classes2.dex */
public class Fn implements Kn<String> {

    /* renamed from: a  reason: collision with root package name */
    private final String f10095a;

    public Fn(String str) {
        this.f10095a = str;
    }

    @Override // com.yandex.metrica.impl.ob.Kn
    public In a(String str) {
        if (TextUtils.isEmpty(str)) {
            return In.a(this, this.f10095a + " is empty.");
        }
        return In.a(this);
    }
}
