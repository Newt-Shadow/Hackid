package com.posthog.surveys;

import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public final class SurveyFeatureFlagKeyValue {
    private final String key;
    private final String value;

    public SurveyFeatureFlagKeyValue(String key, String str) {
        m.e(key, "key");
        this.key = key;
        this.value = str;
    }

    public static /* synthetic */ SurveyFeatureFlagKeyValue copy$default(SurveyFeatureFlagKeyValue surveyFeatureFlagKeyValue, String str, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = surveyFeatureFlagKeyValue.key;
        }
        if ((i10 & 2) != 0) {
            str2 = surveyFeatureFlagKeyValue.value;
        }
        return surveyFeatureFlagKeyValue.copy(str, str2);
    }

    public final String component1() {
        return this.key;
    }

    public final String component2() {
        return this.value;
    }

    public final SurveyFeatureFlagKeyValue copy(String key, String str) {
        m.e(key, "key");
        return new SurveyFeatureFlagKeyValue(key, str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SurveyFeatureFlagKeyValue) {
            SurveyFeatureFlagKeyValue surveyFeatureFlagKeyValue = (SurveyFeatureFlagKeyValue) obj;
            return m.a(this.key, surveyFeatureFlagKeyValue.key) && m.a(this.value, surveyFeatureFlagKeyValue.value);
        }
        return false;
    }

    public final String getKey() {
        return this.key;
    }

    public final String getValue() {
        return this.value;
    }

    public int hashCode() {
        int hashCode = this.key.hashCode() * 31;
        String str = this.value;
        return hashCode + (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "SurveyFeatureFlagKeyValue(key=" + this.key + ", value=" + this.value + ')';
    }
}
