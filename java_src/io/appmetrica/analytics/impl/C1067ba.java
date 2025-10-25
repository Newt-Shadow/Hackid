package io.appmetrica.analytics.impl;

import android.content.pm.FeatureInfo;
/* renamed from: io.appmetrica.analytics.impl.ba  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1067ba extends AbstractC1092ca {
    @Override // io.appmetrica.analytics.impl.AbstractC1092ca
    public final C1117da b(FeatureInfo featureInfo) {
        String str = featureInfo.name;
        boolean z10 = true;
        if ((featureInfo.flags & 1) == 0) {
            z10 = false;
        }
        return new C1117da(str, -1, z10);
    }
}
