package com.posthog.surveys;

import java.util.List;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public final class SurveyEventConditions {
    private final Boolean repeatedActivation;
    private final List<SurveyEventCondition> values;

    public SurveyEventConditions(Boolean bool, List<SurveyEventCondition> values) {
        m.e(values, "values");
        this.repeatedActivation = bool;
        this.values = values;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SurveyEventConditions copy$default(SurveyEventConditions surveyEventConditions, Boolean bool, List list, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            bool = surveyEventConditions.repeatedActivation;
        }
        if ((i10 & 2) != 0) {
            list = surveyEventConditions.values;
        }
        return surveyEventConditions.copy(bool, list);
    }

    public final Boolean component1() {
        return this.repeatedActivation;
    }

    public final List<SurveyEventCondition> component2() {
        return this.values;
    }

    public final SurveyEventConditions copy(Boolean bool, List<SurveyEventCondition> values) {
        m.e(values, "values");
        return new SurveyEventConditions(bool, values);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SurveyEventConditions) {
            SurveyEventConditions surveyEventConditions = (SurveyEventConditions) obj;
            return m.a(this.repeatedActivation, surveyEventConditions.repeatedActivation) && m.a(this.values, surveyEventConditions.values);
        }
        return false;
    }

    public final Boolean getRepeatedActivation() {
        return this.repeatedActivation;
    }

    public final List<SurveyEventCondition> getValues() {
        return this.values;
    }

    public int hashCode() {
        Boolean bool = this.repeatedActivation;
        return ((bool == null ? 0 : bool.hashCode()) * 31) + this.values.hashCode();
    }

    public String toString() {
        return "SurveyEventConditions(repeatedActivation=" + this.repeatedActivation + ", values=" + this.values + ')';
    }
}
