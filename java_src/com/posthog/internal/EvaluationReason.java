package com.posthog.internal;

import kotlin.jvm.internal.m;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
@IgnoreJRERequirement
/* loaded from: classes.dex */
public final class EvaluationReason {
    private final String code;
    private final Integer condition_index;
    private final String description;

    public EvaluationReason(String str, String str2, Integer num) {
        this.code = str;
        this.description = str2;
        this.condition_index = num;
    }

    public static /* synthetic */ EvaluationReason copy$default(EvaluationReason evaluationReason, String str, String str2, Integer num, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = evaluationReason.code;
        }
        if ((i10 & 2) != 0) {
            str2 = evaluationReason.description;
        }
        if ((i10 & 4) != 0) {
            num = evaluationReason.condition_index;
        }
        return evaluationReason.copy(str, str2, num);
    }

    public final String component1() {
        return this.code;
    }

    public final String component2() {
        return this.description;
    }

    public final Integer component3() {
        return this.condition_index;
    }

    public final EvaluationReason copy(String str, String str2, Integer num) {
        return new EvaluationReason(str, str2, num);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof EvaluationReason) {
            EvaluationReason evaluationReason = (EvaluationReason) obj;
            return m.a(this.code, evaluationReason.code) && m.a(this.description, evaluationReason.description) && m.a(this.condition_index, evaluationReason.condition_index);
        }
        return false;
    }

    public final String getCode() {
        return this.code;
    }

    public final Integer getCondition_index() {
        return this.condition_index;
    }

    public final String getDescription() {
        return this.description;
    }

    public int hashCode() {
        String str = this.code;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.description;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        Integer num = this.condition_index;
        return hashCode2 + (num != null ? num.hashCode() : 0);
    }

    public String toString() {
        return "EvaluationReason(code=" + this.code + ", description=" + this.description + ", condition_index=" + this.condition_index + ')';
    }
}
