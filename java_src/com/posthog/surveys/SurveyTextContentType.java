package com.posthog.surveys;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public enum SurveyTextContentType {
    HTML("html"),
    TEXT("text");
    
    public static final Companion Companion = new Companion(null);
    private final String value;

    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final SurveyTextContentType fromValue(String value) {
            m.e(value, "value");
            if (m.a(value, "html")) {
                return SurveyTextContentType.HTML;
            }
            if (m.a(value, "text")) {
                return SurveyTextContentType.TEXT;
            }
            return null;
        }
    }

    SurveyTextContentType(String str) {
        this.value = str;
    }

    public final String getValue() {
        return this.value;
    }
}
