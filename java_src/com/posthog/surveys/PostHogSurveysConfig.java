package com.posthog.surveys;

import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public final class PostHogSurveysConfig {
    private PostHogSurveysDelegate surveysDelegate = new PostHogSurveysDefaultDelegate(null, 1, null);

    public final PostHogSurveysDelegate getSurveysDelegate() {
        return this.surveysDelegate;
    }

    public final void setSurveysDelegate(PostHogSurveysDelegate postHogSurveysDelegate) {
        m.e(postHogSurveysDelegate, "<set-?>");
        this.surveysDelegate = postHogSurveysDelegate;
    }
}
