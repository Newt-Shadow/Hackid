package com.posthog.surveys;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public enum SurveyAppearanceWidgetType {
    BUTTON("button"),
    TAB("tab"),
    SELECTOR("selector");
    
    public static final Companion Companion = new Companion(null);
    private final String value;

    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final SurveyAppearanceWidgetType fromValue(String value) {
            m.e(value, "value");
            int hashCode = value.hashCode();
            if (hashCode != -1377687758) {
                if (hashCode != 114581) {
                    if (hashCode == 1191572447 && value.equals("selector")) {
                        return SurveyAppearanceWidgetType.SELECTOR;
                    }
                } else if (value.equals("tab")) {
                    return SurveyAppearanceWidgetType.TAB;
                }
            } else if (value.equals("button")) {
                return SurveyAppearanceWidgetType.BUTTON;
            }
            return null;
        }
    }

    SurveyAppearanceWidgetType(String str) {
        this.value = str;
    }

    public final String getValue() {
        return this.value;
    }
}
