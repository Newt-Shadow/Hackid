package com.posthog.internal;

import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
@IgnoreJRERequirement
/* loaded from: classes.dex */
public final class PostHogFlagsResponse extends PostHogRemoteConfigResponse {
    private final boolean errorsWhileComputingFlags;
    private final Map<String, Object> featureFlagPayloads;
    private final Map<String, Object> featureFlags;
    private final Map<String, FeatureFlag> flags;
    private final List<String> quotaLimited;
    private final String requestId;

    public /* synthetic */ PostHogFlagsResponse(boolean z10, Map map, Map map2, Map map3, List list, String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? false : z10, map, map2, (i10 & 8) != 0 ? null : map3, (i10 & 16) != 0 ? null : list, str);
    }

    public static /* synthetic */ PostHogFlagsResponse copy$default(PostHogFlagsResponse postHogFlagsResponse, boolean z10, Map map, Map map2, Map map3, List list, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = postHogFlagsResponse.errorsWhileComputingFlags;
        }
        Map<String, Object> map4 = map;
        if ((i10 & 2) != 0) {
            map4 = postHogFlagsResponse.featureFlags;
        }
        Map map5 = map4;
        Map<String, Object> map6 = map2;
        if ((i10 & 4) != 0) {
            map6 = postHogFlagsResponse.featureFlagPayloads;
        }
        Map map7 = map6;
        Map<String, FeatureFlag> map8 = map3;
        if ((i10 & 8) != 0) {
            map8 = postHogFlagsResponse.flags;
        }
        Map map9 = map8;
        List<String> list2 = list;
        if ((i10 & 16) != 0) {
            list2 = postHogFlagsResponse.quotaLimited;
        }
        List list3 = list2;
        if ((i10 & 32) != 0) {
            str = postHogFlagsResponse.requestId;
        }
        return postHogFlagsResponse.copy(z10, map5, map7, map9, list3, str);
    }

    public final boolean component1() {
        return this.errorsWhileComputingFlags;
    }

    public final Map<String, Object> component2() {
        return this.featureFlags;
    }

    public final Map<String, Object> component3() {
        return this.featureFlagPayloads;
    }

    public final Map<String, FeatureFlag> component4() {
        return this.flags;
    }

    public final List<String> component5() {
        return this.quotaLimited;
    }

    public final String component6() {
        return this.requestId;
    }

    public final PostHogFlagsResponse copy(boolean z10, Map<String, ? extends Object> map, Map<String, ? extends Object> map2, Map<String, FeatureFlag> map3, List<String> list, String str) {
        return new PostHogFlagsResponse(z10, map, map2, map3, list, str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PostHogFlagsResponse) {
            PostHogFlagsResponse postHogFlagsResponse = (PostHogFlagsResponse) obj;
            return this.errorsWhileComputingFlags == postHogFlagsResponse.errorsWhileComputingFlags && m.a(this.featureFlags, postHogFlagsResponse.featureFlags) && m.a(this.featureFlagPayloads, postHogFlagsResponse.featureFlagPayloads) && m.a(this.flags, postHogFlagsResponse.flags) && m.a(this.quotaLimited, postHogFlagsResponse.quotaLimited) && m.a(this.requestId, postHogFlagsResponse.requestId);
        }
        return false;
    }

    public final boolean getErrorsWhileComputingFlags() {
        return this.errorsWhileComputingFlags;
    }

    public final Map<String, Object> getFeatureFlagPayloads() {
        return this.featureFlagPayloads;
    }

    public final Map<String, Object> getFeatureFlags() {
        return this.featureFlags;
    }

    public final Map<String, FeatureFlag> getFlags() {
        return this.flags;
    }

    public final List<String> getQuotaLimited() {
        return this.quotaLimited;
    }

    public final String getRequestId() {
        return this.requestId;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13 */
    public int hashCode() {
        boolean z10 = this.errorsWhileComputingFlags;
        ?? r02 = z10;
        if (z10) {
            r02 = 1;
        }
        int i10 = r02 * 31;
        Map<String, Object> map = this.featureFlags;
        int hashCode = (i10 + (map == null ? 0 : map.hashCode())) * 31;
        Map<String, Object> map2 = this.featureFlagPayloads;
        int hashCode2 = (hashCode + (map2 == null ? 0 : map2.hashCode())) * 31;
        Map<String, FeatureFlag> map3 = this.flags;
        int hashCode3 = (hashCode2 + (map3 == null ? 0 : map3.hashCode())) * 31;
        List<String> list = this.quotaLimited;
        int hashCode4 = (hashCode3 + (list == null ? 0 : list.hashCode())) * 31;
        String str = this.requestId;
        return hashCode4 + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        return "PostHogFlagsResponse(errorsWhileComputingFlags=" + this.errorsWhileComputingFlags + ", featureFlags=" + this.featureFlags + ", featureFlagPayloads=" + this.featureFlagPayloads + ", flags=" + this.flags + ", quotaLimited=" + this.quotaLimited + ", requestId=" + this.requestId + ')';
    }

    public PostHogFlagsResponse(boolean z10, Map<String, ? extends Object> map, Map<String, ? extends Object> map2, Map<String, FeatureFlag> map3, List<String> list, String str) {
        super(null, null, null, 7, null);
        this.errorsWhileComputingFlags = z10;
        this.featureFlags = map;
        this.featureFlagPayloads = map2;
        this.flags = map3;
        this.quotaLimited = list;
        this.requestId = str;
    }
}
