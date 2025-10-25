package io.appmetrica.analytics.impl;

import android.content.pm.FeatureInfo;
/* renamed from: io.appmetrica.analytics.impl.ca  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC1092ca {
    public final C1117da a(FeatureInfo featureInfo) {
        if (featureInfo.name == null) {
            int i10 = featureInfo.reqGlEsVersion;
            if (i10 == 0) {
                return b(featureInfo);
            }
            boolean z10 = true;
            if ((featureInfo.flags & 1) == 0) {
                z10 = false;
            }
            return new C1117da("openGlFeature", i10, z10);
        }
        return b(featureInfo);
    }

    public abstract C1117da b(FeatureInfo featureInfo);
}
