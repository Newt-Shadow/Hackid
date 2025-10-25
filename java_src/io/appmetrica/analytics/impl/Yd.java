package io.appmetrica.analytics.impl;

import android.text.TextUtils;
/* loaded from: classes2.dex */
public final class Yd implements Yn {

    /* renamed from: a  reason: collision with root package name */
    public final String f19293a;

    public Yd(String str) {
        this.f19293a = str;
    }

    @Override // io.appmetrica.analytics.impl.Yn
    public final Wn a(String str) {
        if (TextUtils.isEmpty(str)) {
            return new Wn(this, false, this.f19293a + " is empty.");
        }
        return new Wn(this, true, "");
    }
}
