package com.posthog.surveys;
/* loaded from: classes.dex */
public enum PostHogDisplaySurveyTextContentType {
    HTML(0),
    TEXT(1);
    
    private final int value;

    PostHogDisplaySurveyTextContentType(int i10) {
        this.value = i10;
    }

    public final int getValue() {
        return this.value;
    }
}
