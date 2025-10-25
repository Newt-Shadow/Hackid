package com.posthog.surveys;
/* loaded from: classes.dex */
public final class RatingSurveyQuestion extends SurveyQuestion {
    private final SurveyRatingDisplayType display;
    private final String lowerBoundLabel;
    private final Integer scale;
    private final String upperBoundLabel;

    public RatingSurveyQuestion(SurveyRatingDisplayType surveyRatingDisplayType, Integer num, String str, String str2) {
        this.display = surveyRatingDisplayType;
        this.scale = num;
        this.lowerBoundLabel = str;
        this.upperBoundLabel = str2;
    }

    public final SurveyRatingDisplayType getDisplay() {
        return this.display;
    }

    public final String getLowerBoundLabel() {
        return this.lowerBoundLabel;
    }

    public final Integer getScale() {
        return this.scale;
    }

    public final String getUpperBoundLabel() {
        return this.upperBoundLabel;
    }
}
