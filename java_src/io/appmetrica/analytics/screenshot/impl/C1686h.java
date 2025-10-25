package io.appmetrica.analytics.screenshot.impl;

import android.os.Bundle;
import io.appmetrica.analytics.modulesapi.internal.client.BundleToServiceConfigConverter;
/* renamed from: io.appmetrica.analytics.screenshot.impl.h  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1686h implements BundleToServiceConfigConverter {
    @Override // io.appmetrica.analytics.modulesapi.internal.client.BundleToServiceConfigConverter
    /* renamed from: a */
    public final B fromBundle(Bundle bundle) {
        bundle.setClassLoader(B.class.getClassLoader());
        B b10 = (B) bundle.getParcelable("config");
        if (b10 == null) {
            return new B(new g0());
        }
        return b10;
    }
}
