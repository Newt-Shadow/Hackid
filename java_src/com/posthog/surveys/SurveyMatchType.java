package com.posthog.surveys;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public enum SurveyMatchType {
    REGEX("regex"),
    NOT_REGEX("not_regex"),
    EXACT("exact"),
    IS_NOT("is_not"),
    I_CONTAINS("icontains"),
    NOT_I_CONTAINS("not_icontains");
    
    public static final Companion Companion = new Companion(null);
    private final String value;

    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final SurveyMatchType fromValue(String value) {
            m.e(value, "value");
            switch (value.hashCode()) {
                case -1619757284:
                    if (value.equals("not_icontains")) {
                        return SurveyMatchType.NOT_I_CONTAINS;
                    }
                    break;
                case -1371603576:
                    if (value.equals("icontains")) {
                        return SurveyMatchType.I_CONTAINS;
                    }
                    break;
                case -1179762114:
                    if (value.equals("is_not")) {
                        return SurveyMatchType.IS_NOT;
                    }
                    break;
                case 96946943:
                    if (value.equals("exact")) {
                        return SurveyMatchType.EXACT;
                    }
                    break;
                case 108392519:
                    if (value.equals("regex")) {
                        return SurveyMatchType.REGEX;
                    }
                    break;
                case 1626297307:
                    if (value.equals("not_regex")) {
                        return SurveyMatchType.NOT_REGEX;
                    }
                    break;
            }
            return null;
        }
    }

    SurveyMatchType(String str) {
        this.value = str;
    }

    public final String getValue() {
        return this.value;
    }
}
