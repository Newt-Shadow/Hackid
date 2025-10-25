package com.posthog.surveys;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public enum SurveyRatingDisplayType {
    NUMBER("number"),
    EMOJI("emoji");
    
    public static final Companion Companion = new Companion(null);
    private final String value;

    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final SurveyRatingDisplayType fromValue(String value) {
            m.e(value, "value");
            if (m.a(value, "number")) {
                return SurveyRatingDisplayType.NUMBER;
            }
            if (m.a(value, "emoji")) {
                return SurveyRatingDisplayType.EMOJI;
            }
            return null;
        }
    }

    SurveyRatingDisplayType(String str) {
        this.value = str;
    }

    public final String getValue() {
        return this.value;
    }
}
