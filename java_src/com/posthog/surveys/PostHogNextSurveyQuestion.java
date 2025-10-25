package com.posthog.surveys;

import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes.dex */
public final class PostHogNextSurveyQuestion {
    private final boolean isSurveyCompleted;
    private final int questionIndex;

    public PostHogNextSurveyQuestion(int i10, boolean z10) {
        this.questionIndex = i10;
        this.isSurveyCompleted = z10;
    }

    public final int getQuestionIndex() {
        return this.questionIndex;
    }

    public final boolean isSurveyCompleted() {
        return this.isSurveyCompleted;
    }

    public /* synthetic */ PostHogNextSurveyQuestion(int i10, boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, (i11 & 2) != 0 ? false : z10);
    }
}
