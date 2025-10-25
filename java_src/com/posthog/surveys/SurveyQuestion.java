package com.posthog.surveys;
/* loaded from: classes.dex */
public class SurveyQuestion {
    private final SurveyQuestionBranching branching;
    private final String buttonText;
    private final String description;
    private final SurveyTextContentType descriptionContentType;

    /* renamed from: id  reason: collision with root package name */
    private final String f9494id;
    private final Boolean optional;
    private final String question;
    private final SurveyQuestionType type;

    public final SurveyQuestionBranching getBranching() {
        return this.branching;
    }

    public final String getButtonText() {
        return this.buttonText;
    }

    public final String getDescription() {
        return this.description;
    }

    public final SurveyTextContentType getDescriptionContentType() {
        return this.descriptionContentType;
    }

    public final String getId() {
        return this.f9494id;
    }

    public final Boolean getOptional() {
        return this.optional;
    }

    public final String getQuestion() {
        return this.question;
    }

    public final SurveyQuestionType getType() {
        return this.type;
    }
}
