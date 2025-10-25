package com.posthog.surveys;

import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public final class PostHogDisplayOpenQuestion extends PostHogDisplaySurveyQuestion {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PostHogDisplayOpenQuestion(String question, String str, PostHogDisplaySurveyTextContentType questionDescriptionContentType, boolean z10, String str2) {
        super(question, str, questionDescriptionContentType, z10, str2);
        m.e(question, "question");
        m.e(questionDescriptionContentType, "questionDescriptionContentType");
    }
}
