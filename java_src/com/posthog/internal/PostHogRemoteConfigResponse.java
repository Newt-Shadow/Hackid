package com.posthog.internal;

import kotlin.jvm.internal.DefaultConstructorMarker;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
@IgnoreJRERequirement
/* loaded from: classes.dex */
public class PostHogRemoteConfigResponse {
    private final Boolean hasFeatureFlags;
    private final Object sessionRecording;
    private final Object surveys;

    public PostHogRemoteConfigResponse() {
        this(null, null, null, 7, null);
    }

    public final Boolean getHasFeatureFlags() {
        return this.hasFeatureFlags;
    }

    public final Object getSessionRecording() {
        return this.sessionRecording;
    }

    public final Object getSurveys() {
        return this.surveys;
    }

    public PostHogRemoteConfigResponse(Object obj, Object obj2, Boolean bool) {
        this.sessionRecording = obj;
        this.surveys = obj2;
        this.hasFeatureFlags = bool;
    }

    public /* synthetic */ PostHogRemoteConfigResponse(Object obj, Object obj2, Boolean bool, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? Boolean.FALSE : obj, (i10 & 2) != 0 ? Boolean.FALSE : obj2, (i10 & 4) != 0 ? Boolean.FALSE : bool);
    }
}
