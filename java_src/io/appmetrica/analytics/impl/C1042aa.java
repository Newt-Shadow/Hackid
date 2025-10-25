package io.appmetrica.analytics.impl;

import android.annotation.TargetApi;
import android.content.pm.FeatureInfo;
import io.flutter.Build;
/* renamed from: io.appmetrica.analytics.impl.aa  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1042aa extends AbstractC1092ca {
    @Override // io.appmetrica.analytics.impl.AbstractC1092ca
    @TargetApi(Build.API_LEVELS.API_24)
    public final C1117da b(FeatureInfo featureInfo) {
        String str = featureInfo.name;
        int i10 = featureInfo.version;
        boolean z10 = true;
        if ((featureInfo.flags & 1) == 0) {
            z10 = false;
        }
        return new C1117da(str, i10, z10);
    }
}
