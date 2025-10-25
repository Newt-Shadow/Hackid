package com.posthog.surveys;

import id.l;
import id.p;
/* loaded from: classes.dex */
public interface PostHogSurveysDelegate {
    void cleanupSurveys();

    void renderSurvey(PostHogDisplaySurvey postHogDisplaySurvey, l lVar, p pVar, l lVar2);
}
