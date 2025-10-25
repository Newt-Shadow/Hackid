package com.posthog.surveys;
/* loaded from: classes.dex */
public enum PostHogDisplaySurveyRatingType {
    NUMBER(0),
    EMOJI(1);
    
    private final int value;

    PostHogDisplaySurveyRatingType(int i10) {
        this.value = i10;
    }

    public final int getValue() {
        return this.value;
    }
}
