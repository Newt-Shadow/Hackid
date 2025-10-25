package com.posthog.surveys;

import java.util.List;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public final class SurveyConditions {
    private final List<String> deviceTypes;
    private final SurveyMatchType deviceTypesMatchType;
    private final SurveyEventConditions events;
    private final Integer seenSurveyWaitPeriodInDays;
    private final String selector;
    private final String url;
    private final SurveyMatchType urlMatchType;

    public SurveyConditions(String str, SurveyMatchType surveyMatchType, String str2, List<String> list, SurveyMatchType surveyMatchType2, Integer num, SurveyEventConditions surveyEventConditions) {
        this.url = str;
        this.urlMatchType = surveyMatchType;
        this.selector = str2;
        this.deviceTypes = list;
        this.deviceTypesMatchType = surveyMatchType2;
        this.seenSurveyWaitPeriodInDays = num;
        this.events = surveyEventConditions;
    }

    public static /* synthetic */ SurveyConditions copy$default(SurveyConditions surveyConditions, String str, SurveyMatchType surveyMatchType, String str2, List list, SurveyMatchType surveyMatchType2, Integer num, SurveyEventConditions surveyEventConditions, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = surveyConditions.url;
        }
        if ((i10 & 2) != 0) {
            surveyMatchType = surveyConditions.urlMatchType;
        }
        SurveyMatchType surveyMatchType3 = surveyMatchType;
        if ((i10 & 4) != 0) {
            str2 = surveyConditions.selector;
        }
        String str3 = str2;
        List<String> list2 = list;
        if ((i10 & 8) != 0) {
            list2 = surveyConditions.deviceTypes;
        }
        List list3 = list2;
        if ((i10 & 16) != 0) {
            surveyMatchType2 = surveyConditions.deviceTypesMatchType;
        }
        SurveyMatchType surveyMatchType4 = surveyMatchType2;
        if ((i10 & 32) != 0) {
            num = surveyConditions.seenSurveyWaitPeriodInDays;
        }
        Integer num2 = num;
        if ((i10 & 64) != 0) {
            surveyEventConditions = surveyConditions.events;
        }
        return surveyConditions.copy(str, surveyMatchType3, str3, list3, surveyMatchType4, num2, surveyEventConditions);
    }

    public final String component1() {
        return this.url;
    }

    public final SurveyMatchType component2() {
        return this.urlMatchType;
    }

    public final String component3() {
        return this.selector;
    }

    public final List<String> component4() {
        return this.deviceTypes;
    }

    public final SurveyMatchType component5() {
        return this.deviceTypesMatchType;
    }

    public final Integer component6() {
        return this.seenSurveyWaitPeriodInDays;
    }

    public final SurveyEventConditions component7() {
        return this.events;
    }

    public final SurveyConditions copy(String str, SurveyMatchType surveyMatchType, String str2, List<String> list, SurveyMatchType surveyMatchType2, Integer num, SurveyEventConditions surveyEventConditions) {
        return new SurveyConditions(str, surveyMatchType, str2, list, surveyMatchType2, num, surveyEventConditions);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SurveyConditions) {
            SurveyConditions surveyConditions = (SurveyConditions) obj;
            return m.a(this.url, surveyConditions.url) && this.urlMatchType == surveyConditions.urlMatchType && m.a(this.selector, surveyConditions.selector) && m.a(this.deviceTypes, surveyConditions.deviceTypes) && this.deviceTypesMatchType == surveyConditions.deviceTypesMatchType && m.a(this.seenSurveyWaitPeriodInDays, surveyConditions.seenSurveyWaitPeriodInDays) && m.a(this.events, surveyConditions.events);
        }
        return false;
    }

    public final List<String> getDeviceTypes() {
        return this.deviceTypes;
    }

    public final SurveyMatchType getDeviceTypesMatchType() {
        return this.deviceTypesMatchType;
    }

    public final SurveyEventConditions getEvents() {
        return this.events;
    }

    public final Integer getSeenSurveyWaitPeriodInDays() {
        return this.seenSurveyWaitPeriodInDays;
    }

    public final String getSelector() {
        return this.selector;
    }

    public final String getUrl() {
        return this.url;
    }

    public final SurveyMatchType getUrlMatchType() {
        return this.urlMatchType;
    }

    public int hashCode() {
        String str = this.url;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        SurveyMatchType surveyMatchType = this.urlMatchType;
        int hashCode2 = (hashCode + (surveyMatchType == null ? 0 : surveyMatchType.hashCode())) * 31;
        String str2 = this.selector;
        int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        List<String> list = this.deviceTypes;
        int hashCode4 = (hashCode3 + (list == null ? 0 : list.hashCode())) * 31;
        SurveyMatchType surveyMatchType2 = this.deviceTypesMatchType;
        int hashCode5 = (hashCode4 + (surveyMatchType2 == null ? 0 : surveyMatchType2.hashCode())) * 31;
        Integer num = this.seenSurveyWaitPeriodInDays;
        int hashCode6 = (hashCode5 + (num == null ? 0 : num.hashCode())) * 31;
        SurveyEventConditions surveyEventConditions = this.events;
        return hashCode6 + (surveyEventConditions != null ? surveyEventConditions.hashCode() : 0);
    }

    public String toString() {
        return "SurveyConditions(url=" + this.url + ", urlMatchType=" + this.urlMatchType + ", selector=" + this.selector + ", deviceTypes=" + this.deviceTypes + ", deviceTypesMatchType=" + this.deviceTypesMatchType + ", seenSurveyWaitPeriodInDays=" + this.seenSurveyWaitPeriodInDays + ", events=" + this.events + ')';
    }
}
