package com.posthog.surveys;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public enum SurveyQuestionType {
    OPEN("open"),
    LINK("link"),
    RATING("rating"),
    MULTIPLE_CHOICE("multiple_choice"),
    SINGLE_CHOICE("single_choice");
    
    public static final Companion Companion = new Companion(null);
    private final String value;

    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final SurveyQuestionType fromValue(String value) {
            m.e(value, "value");
            switch (value.hashCode()) {
                case -938102371:
                    if (value.equals("rating")) {
                        return SurveyQuestionType.RATING;
                    }
                    break;
                case 3321850:
                    if (value.equals("link")) {
                        return SurveyQuestionType.LINK;
                    }
                    break;
                case 3417674:
                    if (value.equals("open")) {
                        return SurveyQuestionType.OPEN;
                    }
                    break;
                case 1669382832:
                    if (value.equals("multiple_choice")) {
                        return SurveyQuestionType.MULTIPLE_CHOICE;
                    }
                    break;
                case 1770845560:
                    if (value.equals("single_choice")) {
                        return SurveyQuestionType.SINGLE_CHOICE;
                    }
                    break;
            }
            return null;
        }
    }

    SurveyQuestionType(String str) {
        this.value = str;
    }

    public final String getValue() {
        return this.value;
    }
}
