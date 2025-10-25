package com.posthog.surveys;

import java.util.List;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public final class PostHogDisplayChoiceQuestion extends PostHogDisplaySurveyQuestion {
    private final List<String> choices;
    private final boolean hasOpenChoice;
    private final boolean isMultipleChoice;
    private final boolean shuffleOptions;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PostHogDisplayChoiceQuestion(String question, String str, PostHogDisplaySurveyTextContentType questionDescriptionContentType, boolean z10, String str2, List<String> choices, boolean z11, boolean z12, boolean z13) {
        super(question, str, questionDescriptionContentType, z10, str2);
        m.e(question, "question");
        m.e(questionDescriptionContentType, "questionDescriptionContentType");
        m.e(choices, "choices");
        this.choices = choices;
        this.hasOpenChoice = z11;
        this.shuffleOptions = z12;
        this.isMultipleChoice = z13;
    }

    public final List<String> getChoices() {
        return this.choices;
    }

    public final boolean getHasOpenChoice() {
        return this.hasOpenChoice;
    }

    public final boolean getShuffleOptions() {
        return this.shuffleOptions;
    }

    public final boolean isMultipleChoice() {
        return this.isMultipleChoice;
    }
}
