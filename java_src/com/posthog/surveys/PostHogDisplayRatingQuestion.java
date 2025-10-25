package com.posthog.surveys;

import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public final class PostHogDisplayRatingQuestion extends PostHogDisplaySurveyQuestion {
    private final String lowerBoundLabel;
    private final PostHogDisplaySurveyRatingType ratingType;
    private final int scaleLowerBound;
    private final int scaleUpperBound;
    private final String upperBoundLabel;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PostHogDisplayRatingQuestion(String question, String str, PostHogDisplaySurveyTextContentType questionDescriptionContentType, boolean z10, String str2, PostHogDisplaySurveyRatingType ratingType, int i10, int i11, String lowerBoundLabel, String upperBoundLabel) {
        super(question, str, questionDescriptionContentType, z10, str2);
        m.e(question, "question");
        m.e(questionDescriptionContentType, "questionDescriptionContentType");
        m.e(ratingType, "ratingType");
        m.e(lowerBoundLabel, "lowerBoundLabel");
        m.e(upperBoundLabel, "upperBoundLabel");
        this.ratingType = ratingType;
        this.scaleLowerBound = i10;
        this.scaleUpperBound = i11;
        this.lowerBoundLabel = lowerBoundLabel;
        this.upperBoundLabel = upperBoundLabel;
    }

    public final String getLowerBoundLabel() {
        return this.lowerBoundLabel;
    }

    public final PostHogDisplaySurveyRatingType getRatingType() {
        return this.ratingType;
    }

    public final int getScaleLowerBound() {
        return this.scaleLowerBound;
    }

    public final int getScaleUpperBound() {
        return this.scaleUpperBound;
    }

    public final String getUpperBoundLabel() {
        return this.upperBoundLabel;
    }
}
