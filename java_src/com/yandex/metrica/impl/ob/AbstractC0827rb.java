package com.yandex.metrica.impl.ob;

import android.annotation.TargetApi;
import android.content.pm.FeatureInfo;
import io.flutter.Build;
/* renamed from: com.yandex.metrica.impl.ob.rb  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0827rb {

    /* renamed from: com.yandex.metrica.impl.ob.rb$a */
    /* loaded from: classes2.dex */
    public static class a extends AbstractC0827rb {
        @Override // com.yandex.metrica.impl.ob.AbstractC0827rb
        @TargetApi(Build.API_LEVELS.API_24)
        public C0851sb b(FeatureInfo featureInfo) {
            return new C0851sb(featureInfo.name, featureInfo.version, c(featureInfo));
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.rb$b */
    /* loaded from: classes2.dex */
    public static class b extends AbstractC0827rb {
        @Override // com.yandex.metrica.impl.ob.AbstractC0827rb
        public C0851sb b(FeatureInfo featureInfo) {
            return new C0851sb(featureInfo.name, -1, c(featureInfo));
        }
    }

    public C0851sb a(FeatureInfo featureInfo) {
        if (featureInfo.name == null) {
            int i10 = featureInfo.reqGlEsVersion;
            if (i10 == 0) {
                return b(featureInfo);
            }
            return new C0851sb("openGlFeature", i10, c(featureInfo));
        }
        return b(featureInfo);
    }

    protected abstract C0851sb b(FeatureInfo featureInfo);

    boolean c(FeatureInfo featureInfo) {
        if ((featureInfo.flags & 1) != 0) {
            return true;
        }
        return false;
    }
}
