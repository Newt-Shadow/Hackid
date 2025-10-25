package com.google.android.gms.measurement.internal;

import android.text.TextUtils;
/* loaded from: classes.dex */
final class c3 {

    /* renamed from: a  reason: collision with root package name */
    private final i6.r f7322a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c3(i6.r rVar) {
        this.f7322a = rVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static c3 c(String str) {
        i6.r rVar;
        if (!TextUtils.isEmpty(str) && str.length() <= 1) {
            rVar = d8.j(str.charAt(0));
        } else {
            rVar = i6.r.UNINITIALIZED;
        }
        return new c3(rVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final i6.r a() {
        return this.f7322a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String b() {
        return String.valueOf(d8.m(this.f7322a));
    }
}
