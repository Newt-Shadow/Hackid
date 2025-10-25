package com.posthog.surveys;

import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public final class PostHogDisplayLinkQuestion extends PostHogDisplaySurveyQuestion {
    private final String link;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PostHogDisplayLinkQuestion(String question, String str, PostHogDisplaySurveyTextContentType questionDescriptionContentType, boolean z10, String str2, String str3) {
        super(question, str, questionDescriptionContentType, z10, str2);
        m.e(question, "question");
        m.e(questionDescriptionContentType, "questionDescriptionContentType");
        this.link = str3;
    }

    public final String getLink() {
        return this.link;
    }
}
