package com.posthog.surveys;

import java.util.Date;
import java.util.List;
import kotlin.jvm.internal.m;
import z8.c;
/* loaded from: classes.dex */
public final class Survey {
    private final SurveyAppearance appearance;
    private final SurveyConditions conditions;
    @c("current_iteration")
    private final Integer currentIteration;
    @c("current_iteration_start_date")
    private final Date currentIterationStartDate;
    private final String description;
    @c("end_date")
    private final Date endDate;
    @c("feature_flag_keys")
    private final List<SurveyFeatureFlagKeyValue> featureFlagKeys;

    /* renamed from: id  reason: collision with root package name */
    private final String f9493id;
    @c("internal_targeting_flag_key")
    private final String internalTargetingFlagKey;
    @c("linked_flag_key")
    private final String linkedFlagKey;
    private final String name;
    private final List<SurveyQuestion> questions;
    @c("start_date")
    private final Date startDate;
    @c("targeting_flag_key")
    private final String targetingFlagKey;
    private final SurveyType type;

    /* JADX WARN: Multi-variable type inference failed */
    public Survey(String id2, String name, SurveyType type, List<? extends SurveyQuestion> questions, String str, List<SurveyFeatureFlagKeyValue> list, String str2, String str3, String str4, SurveyConditions surveyConditions, SurveyAppearance surveyAppearance, Integer num, Date date, Date date2, Date date3) {
        m.e(id2, "id");
        m.e(name, "name");
        m.e(type, "type");
        m.e(questions, "questions");
        this.f9493id = id2;
        this.name = name;
        this.type = type;
        this.questions = questions;
        this.description = str;
        this.featureFlagKeys = list;
        this.linkedFlagKey = str2;
        this.targetingFlagKey = str3;
        this.internalTargetingFlagKey = str4;
        this.conditions = surveyConditions;
        this.appearance = surveyAppearance;
        this.currentIteration = num;
        this.currentIterationStartDate = date;
        this.startDate = date2;
        this.endDate = date3;
    }

    public final String component1() {
        return this.f9493id;
    }

    public final SurveyConditions component10() {
        return this.conditions;
    }

    public final SurveyAppearance component11() {
        return this.appearance;
    }

    public final Integer component12() {
        return this.currentIteration;
    }

    public final Date component13() {
        return this.currentIterationStartDate;
    }

    public final Date component14() {
        return this.startDate;
    }

    public final Date component15() {
        return this.endDate;
    }

    public final String component2() {
        return this.name;
    }

    public final SurveyType component3() {
        return this.type;
    }

    public final List<SurveyQuestion> component4() {
        return this.questions;
    }

    public final String component5() {
        return this.description;
    }

    public final List<SurveyFeatureFlagKeyValue> component6() {
        return this.featureFlagKeys;
    }

    public final String component7() {
        return this.linkedFlagKey;
    }

    public final String component8() {
        return this.targetingFlagKey;
    }

    public final String component9() {
        return this.internalTargetingFlagKey;
    }

    public final Survey copy(String id2, String name, SurveyType type, List<? extends SurveyQuestion> questions, String str, List<SurveyFeatureFlagKeyValue> list, String str2, String str3, String str4, SurveyConditions surveyConditions, SurveyAppearance surveyAppearance, Integer num, Date date, Date date2, Date date3) {
        m.e(id2, "id");
        m.e(name, "name");
        m.e(type, "type");
        m.e(questions, "questions");
        return new Survey(id2, name, type, questions, str, list, str2, str3, str4, surveyConditions, surveyAppearance, num, date, date2, date3);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Survey) {
            Survey survey = (Survey) obj;
            return m.a(this.f9493id, survey.f9493id) && m.a(this.name, survey.name) && this.type == survey.type && m.a(this.questions, survey.questions) && m.a(this.description, survey.description) && m.a(this.featureFlagKeys, survey.featureFlagKeys) && m.a(this.linkedFlagKey, survey.linkedFlagKey) && m.a(this.targetingFlagKey, survey.targetingFlagKey) && m.a(this.internalTargetingFlagKey, survey.internalTargetingFlagKey) && m.a(this.conditions, survey.conditions) && m.a(this.appearance, survey.appearance) && m.a(this.currentIteration, survey.currentIteration) && m.a(this.currentIterationStartDate, survey.currentIterationStartDate) && m.a(this.startDate, survey.startDate) && m.a(this.endDate, survey.endDate);
        }
        return false;
    }

    public final SurveyAppearance getAppearance() {
        return this.appearance;
    }

    public final SurveyConditions getConditions() {
        return this.conditions;
    }

    public final Integer getCurrentIteration() {
        return this.currentIteration;
    }

    public final Date getCurrentIterationStartDate() {
        return this.currentIterationStartDate;
    }

    public final String getDescription() {
        return this.description;
    }

    public final Date getEndDate() {
        return this.endDate;
    }

    public final List<SurveyFeatureFlagKeyValue> getFeatureFlagKeys() {
        return this.featureFlagKeys;
    }

    public final String getId() {
        return this.f9493id;
    }

    public final String getInternalTargetingFlagKey() {
        return this.internalTargetingFlagKey;
    }

    public final String getLinkedFlagKey() {
        return this.linkedFlagKey;
    }

    public final String getName() {
        return this.name;
    }

    public final List<SurveyQuestion> getQuestions() {
        return this.questions;
    }

    public final Date getStartDate() {
        return this.startDate;
    }

    public final String getTargetingFlagKey() {
        return this.targetingFlagKey;
    }

    public final SurveyType getType() {
        return this.type;
    }

    public int hashCode() {
        int hashCode = ((((((this.f9493id.hashCode() * 31) + this.name.hashCode()) * 31) + this.type.hashCode()) * 31) + this.questions.hashCode()) * 31;
        String str = this.description;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        List<SurveyFeatureFlagKeyValue> list = this.featureFlagKeys;
        int hashCode3 = (hashCode2 + (list == null ? 0 : list.hashCode())) * 31;
        String str2 = this.linkedFlagKey;
        int hashCode4 = (hashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.targetingFlagKey;
        int hashCode5 = (hashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.internalTargetingFlagKey;
        int hashCode6 = (hashCode5 + (str4 == null ? 0 : str4.hashCode())) * 31;
        SurveyConditions surveyConditions = this.conditions;
        int hashCode7 = (hashCode6 + (surveyConditions == null ? 0 : surveyConditions.hashCode())) * 31;
        SurveyAppearance surveyAppearance = this.appearance;
        int hashCode8 = (hashCode7 + (surveyAppearance == null ? 0 : surveyAppearance.hashCode())) * 31;
        Integer num = this.currentIteration;
        int hashCode9 = (hashCode8 + (num == null ? 0 : num.hashCode())) * 31;
        Date date = this.currentIterationStartDate;
        int hashCode10 = (hashCode9 + (date == null ? 0 : date.hashCode())) * 31;
        Date date2 = this.startDate;
        int hashCode11 = (hashCode10 + (date2 == null ? 0 : date2.hashCode())) * 31;
        Date date3 = this.endDate;
        return hashCode11 + (date3 != null ? date3.hashCode() : 0);
    }

    public String toString() {
        return "Survey(id=" + this.f9493id + ", name=" + this.name + ", type=" + this.type + ", questions=" + this.questions + ", description=" + this.description + ", featureFlagKeys=" + this.featureFlagKeys + ", linkedFlagKey=" + this.linkedFlagKey + ", targetingFlagKey=" + this.targetingFlagKey + ", internalTargetingFlagKey=" + this.internalTargetingFlagKey + ", conditions=" + this.conditions + ", appearance=" + this.appearance + ", currentIteration=" + this.currentIteration + ", currentIterationStartDate=" + this.currentIterationStartDate + ", startDate=" + this.startDate + ", endDate=" + this.endDate + ')';
    }
}
