package com.posthog.surveys;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public enum SurveyType {
    POPOVER("popover"),
    API("api"),
    WIDGET("widget");
    
    public static final Companion Companion = new Companion(null);
    private final String value;

    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final SurveyType fromValue(String value) {
            m.e(value, "value");
            int hashCode = value.hashCode();
            if (hashCode != -788047292) {
                if (hashCode != -394109275) {
                    if (hashCode == 96794 && value.equals("api")) {
                        return SurveyType.API;
                    }
                } else if (value.equals("popover")) {
                    return SurveyType.POPOVER;
                }
            } else if (value.equals("widget")) {
                return SurveyType.WIDGET;
            }
            return null;
        }
    }

    SurveyType(String str) {
        this.value = str;
    }

    public final String getValue() {
        return this.value;
    }
}
