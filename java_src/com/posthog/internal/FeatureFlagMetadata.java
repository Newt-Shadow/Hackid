package com.posthog.internal;

import kotlin.jvm.internal.m;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
@IgnoreJRERequirement
/* loaded from: classes.dex */
public final class FeatureFlagMetadata {

    /* renamed from: id  reason: collision with root package name */
    private final int f9471id;
    private final String payload;
    private final int version;

    public FeatureFlagMetadata(int i10, String str, int i11) {
        this.f9471id = i10;
        this.payload = str;
        this.version = i11;
    }

    public static /* synthetic */ FeatureFlagMetadata copy$default(FeatureFlagMetadata featureFlagMetadata, int i10, String str, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = featureFlagMetadata.f9471id;
        }
        if ((i12 & 2) != 0) {
            str = featureFlagMetadata.payload;
        }
        if ((i12 & 4) != 0) {
            i11 = featureFlagMetadata.version;
        }
        return featureFlagMetadata.copy(i10, str, i11);
    }

    public final int component1() {
        return this.f9471id;
    }

    public final String component2() {
        return this.payload;
    }

    public final int component3() {
        return this.version;
    }

    public final FeatureFlagMetadata copy(int i10, String str, int i11) {
        return new FeatureFlagMetadata(i10, str, i11);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof FeatureFlagMetadata) {
            FeatureFlagMetadata featureFlagMetadata = (FeatureFlagMetadata) obj;
            return this.f9471id == featureFlagMetadata.f9471id && m.a(this.payload, featureFlagMetadata.payload) && this.version == featureFlagMetadata.version;
        }
        return false;
    }

    public final int getId() {
        return this.f9471id;
    }

    public final String getPayload() {
        return this.payload;
    }

    public final int getVersion() {
        return this.version;
    }

    public int hashCode() {
        int hashCode = Integer.hashCode(this.f9471id) * 31;
        String str = this.payload;
        return ((hashCode + (str == null ? 0 : str.hashCode())) * 31) + Integer.hashCode(this.version);
    }

    public String toString() {
        return "FeatureFlagMetadata(id=" + this.f9471id + ", payload=" + this.payload + ", version=" + this.version + ')';
    }
}
