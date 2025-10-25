package io.appmetrica.analytics.impl;

import android.text.TextUtils;
import java.util.UUID;
/* renamed from: io.appmetrica.analytics.impl.a0  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1032a0 implements Yn {
    @Override // io.appmetrica.analytics.impl.Yn
    public final Wn a(String str) {
        if (TextUtils.isEmpty(str)) {
            return new Wn(this, false, "ApiKey is empty. Please, read official documentation how to obtain one: https://appmetrica.io/docs/mobile-sdk-dg/android/about/android-initialize.html");
        }
        try {
            UUID.fromString(str);
            return new Wn(this, true, "");
        } catch (Throwable unused) {
            return new Wn(this, false, "Invalid ApiKey=" + str + ". Please, read official documentation how to obtain one: https://appmetrica.io/docs/mobile-sdk-dg/android/about/android-initialize.html");
        }
    }
}
