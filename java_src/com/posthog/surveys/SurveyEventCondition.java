package com.posthog.surveys;

import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public final class SurveyEventCondition {
    private final String name;

    public SurveyEventCondition(String name) {
        m.e(name, "name");
        this.name = name;
    }

    public static /* synthetic */ SurveyEventCondition copy$default(SurveyEventCondition surveyEventCondition, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = surveyEventCondition.name;
        }
        return surveyEventCondition.copy(str);
    }

    public final String component1() {
        return this.name;
    }

    public final SurveyEventCondition copy(String name) {
        m.e(name, "name");
        return new SurveyEventCondition(name);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof SurveyEventCondition) && m.a(this.name, ((SurveyEventCondition) obj).name);
    }

    public final String getName() {
        return this.name;
    }

    public int hashCode() {
        return this.name.hashCode();
    }

    public String toString() {
        return "SurveyEventCondition(name=" + this.name + ')';
    }
}
