package com.posthog.internal;

import kotlin.jvm.internal.m;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
@IgnoreJRERequirement
/* loaded from: classes.dex */
public final class FeatureFlag {
    private final boolean enabled;
    private final String key;
    private final FeatureFlagMetadata metadata;
    private final EvaluationReason reason;
    private final String variant;

    public FeatureFlag(String key, boolean z10, String str, FeatureFlagMetadata metadata, EvaluationReason evaluationReason) {
        m.e(key, "key");
        m.e(metadata, "metadata");
        this.key = key;
        this.enabled = z10;
        this.variant = str;
        this.metadata = metadata;
        this.reason = evaluationReason;
    }

    public static /* synthetic */ FeatureFlag copy$default(FeatureFlag featureFlag, String str, boolean z10, String str2, FeatureFlagMetadata featureFlagMetadata, EvaluationReason evaluationReason, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = featureFlag.key;
        }
        if ((i10 & 2) != 0) {
            z10 = featureFlag.enabled;
        }
        boolean z11 = z10;
        if ((i10 & 4) != 0) {
            str2 = featureFlag.variant;
        }
        String str3 = str2;
        if ((i10 & 8) != 0) {
            featureFlagMetadata = featureFlag.metadata;
        }
        FeatureFlagMetadata featureFlagMetadata2 = featureFlagMetadata;
        if ((i10 & 16) != 0) {
            evaluationReason = featureFlag.reason;
        }
        return featureFlag.copy(str, z11, str3, featureFlagMetadata2, evaluationReason);
    }

    public final String component1() {
        return this.key;
    }

    public final boolean component2() {
        return this.enabled;
    }

    public final String component3() {
        return this.variant;
    }

    public final FeatureFlagMetadata component4() {
        return this.metadata;
    }

    public final EvaluationReason component5() {
        return this.reason;
    }

    public final FeatureFlag copy(String key, boolean z10, String str, FeatureFlagMetadata metadata, EvaluationReason evaluationReason) {
        m.e(key, "key");
        m.e(metadata, "metadata");
        return new FeatureFlag(key, z10, str, metadata, evaluationReason);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof FeatureFlag) {
            FeatureFlag featureFlag = (FeatureFlag) obj;
            return m.a(this.key, featureFlag.key) && this.enabled == featureFlag.enabled && m.a(this.variant, featureFlag.variant) && m.a(this.metadata, featureFlag.metadata) && m.a(this.reason, featureFlag.reason);
        }
        return false;
    }

    public final boolean getEnabled() {
        return this.enabled;
    }

    public final String getKey() {
        return this.key;
    }

    public final FeatureFlagMetadata getMetadata() {
        return this.metadata;
    }

    public final EvaluationReason getReason() {
        return this.reason;
    }

    public final String getVariant() {
        return this.variant;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = this.key.hashCode() * 31;
        boolean z10 = this.enabled;
        int i10 = z10;
        if (z10 != 0) {
            i10 = 1;
        }
        int i11 = (hashCode + i10) * 31;
        String str = this.variant;
        int hashCode2 = (((i11 + (str == null ? 0 : str.hashCode())) * 31) + this.metadata.hashCode()) * 31;
        EvaluationReason evaluationReason = this.reason;
        return hashCode2 + (evaluationReason != null ? evaluationReason.hashCode() : 0);
    }

    public String toString() {
        return "FeatureFlag(key=" + this.key + ", enabled=" + this.enabled + ", variant=" + this.variant + ", metadata=" + this.metadata + ", reason=" + this.reason + ')';
    }
}
