package com.posthog.surveys;

import com.arthenica.ffmpegkit.Chapter;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public enum SurveyQuestionBranchingType {
    NEXT_QUESTION("next_question"),
    END(Chapter.KEY_END),
    RESPONSE_BASED("response_based"),
    SPECIFIC_QUESTION("specific_question");
    
    public static final Companion Companion = new Companion(null);
    private final String value;

    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final SurveyQuestionBranchingType fromValue(String value) {
            m.e(value, "value");
            switch (value.hashCode()) {
                case -1044020302:
                    if (value.equals("next_question")) {
                        return SurveyQuestionBranchingType.NEXT_QUESTION;
                    }
                    break;
                case -417940397:
                    if (value.equals("specific_question")) {
                        return SurveyQuestionBranchingType.SPECIFIC_QUESTION;
                    }
                    break;
                case 100571:
                    if (value.equals(Chapter.KEY_END)) {
                        return SurveyQuestionBranchingType.END;
                    }
                    break;
                case 423384629:
                    if (value.equals("response_based")) {
                        return SurveyQuestionBranchingType.RESPONSE_BASED;
                    }
                    break;
            }
            return null;
        }
    }

    SurveyQuestionBranchingType(String str) {
        this.value = str;
    }

    public final String getValue() {
        return this.value;
    }
}
