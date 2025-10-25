package com.posthog.surveys;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public enum SurveyAppearancePosition {
    LEFT("left"),
    RIGHT("right"),
    CENTER("center");
    
    public static final Companion Companion = new Companion(null);
    private final String value;

    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final SurveyAppearancePosition fromValue(String value) {
            m.e(value, "value");
            int hashCode = value.hashCode();
            if (hashCode != -1364013995) {
                if (hashCode != 3317767) {
                    if (hashCode == 108511772 && value.equals("right")) {
                        return SurveyAppearancePosition.RIGHT;
                    }
                } else if (value.equals("left")) {
                    return SurveyAppearancePosition.LEFT;
                }
            } else if (value.equals("center")) {
                return SurveyAppearancePosition.CENTER;
            }
            return null;
        }
    }

    SurveyAppearancePosition(String str) {
        this.value = str;
    }

    public final String getValue() {
        return this.value;
    }
}
