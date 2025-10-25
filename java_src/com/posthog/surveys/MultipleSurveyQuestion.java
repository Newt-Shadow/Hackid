package com.posthog.surveys;

import java.util.List;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public final class MultipleSurveyQuestion extends SurveyQuestion {
    private final List<String> choices;
    private final Boolean hasOpenChoice;
    private final Boolean shuffleOptions;

    public MultipleSurveyQuestion(List<String> list, Boolean bool, Boolean bool2) {
        this.choices = list;
        this.hasOpenChoice = bool;
        this.shuffleOptions = bool2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ MultipleSurveyQuestion copy$default(MultipleSurveyQuestion multipleSurveyQuestion, List list, Boolean bool, Boolean bool2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            list = multipleSurveyQuestion.choices;
        }
        if ((i10 & 2) != 0) {
            bool = multipleSurveyQuestion.hasOpenChoice;
        }
        if ((i10 & 4) != 0) {
            bool2 = multipleSurveyQuestion.shuffleOptions;
        }
        return multipleSurveyQuestion.copy(list, bool, bool2);
    }

    public final List<String> component1() {
        return this.choices;
    }

    public final Boolean component2() {
        return this.hasOpenChoice;
    }

    public final Boolean component3() {
        return this.shuffleOptions;
    }

    public final MultipleSurveyQuestion copy(List<String> list, Boolean bool, Boolean bool2) {
        return new MultipleSurveyQuestion(list, bool, bool2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MultipleSurveyQuestion) {
            MultipleSurveyQuestion multipleSurveyQuestion = (MultipleSurveyQuestion) obj;
            return m.a(this.choices, multipleSurveyQuestion.choices) && m.a(this.hasOpenChoice, multipleSurveyQuestion.hasOpenChoice) && m.a(this.shuffleOptions, multipleSurveyQuestion.shuffleOptions);
        }
        return false;
    }

    public final List<String> getChoices() {
        return this.choices;
    }

    public final Boolean getHasOpenChoice() {
        return this.hasOpenChoice;
    }

    public final Boolean getShuffleOptions() {
        return this.shuffleOptions;
    }

    public int hashCode() {
        List<String> list = this.choices;
        int hashCode = (list == null ? 0 : list.hashCode()) * 31;
        Boolean bool = this.hasOpenChoice;
        int hashCode2 = (hashCode + (bool == null ? 0 : bool.hashCode())) * 31;
        Boolean bool2 = this.shuffleOptions;
        return hashCode2 + (bool2 != null ? bool2.hashCode() : 0);
    }

    public String toString() {
        return "MultipleSurveyQuestion(choices=" + this.choices + ", hasOpenChoice=" + this.hasOpenChoice + ", shuffleOptions=" + this.shuffleOptions + ')';
    }
}
