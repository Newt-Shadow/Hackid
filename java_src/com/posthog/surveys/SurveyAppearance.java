package com.posthog.surveys;

import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public final class SurveyAppearance {
    private final Boolean autoDisappear;
    private final String backgroundColor;
    private final String borderColor;
    private final String descriptionTextColor;
    private final Boolean displayThankYouMessage;
    private final String fontFamily;
    private final String placeholder;
    private final SurveyAppearancePosition position;
    private final String ratingButtonActiveColor;
    private final String ratingButtonColor;
    private final String ratingButtonHoverColor;
    private final Boolean shuffleQuestions;
    private final String submitButtonColor;
    private final String submitButtonText;
    private final String submitButtonTextColor;
    private final Double surveyPopupDelaySeconds;
    private final String thankYouMessageCloseButtonText;
    private final String thankYouMessageDescription;
    private final SurveyTextContentType thankYouMessageDescriptionContentType;
    private final String thankYouMessageHeader;
    private final Boolean whiteLabel;
    private final String widgetColor;
    private final String widgetLabel;
    private final String widgetSelector;
    private final SurveyAppearanceWidgetType widgetType;

    public SurveyAppearance(SurveyAppearancePosition surveyAppearancePosition, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, Boolean bool, Boolean bool2, Boolean bool3, String str10, String str11, SurveyTextContentType surveyTextContentType, String str12, String borderColor, String str13, Boolean bool4, Double d10, SurveyAppearanceWidgetType surveyAppearanceWidgetType, String str14, String str15, String str16) {
        m.e(borderColor, "borderColor");
        this.position = surveyAppearancePosition;
        this.fontFamily = str;
        this.backgroundColor = str2;
        this.submitButtonColor = str3;
        this.submitButtonText = str4;
        this.submitButtonTextColor = str5;
        this.descriptionTextColor = str6;
        this.ratingButtonColor = str7;
        this.ratingButtonActiveColor = str8;
        this.ratingButtonHoverColor = str9;
        this.whiteLabel = bool;
        this.autoDisappear = bool2;
        this.displayThankYouMessage = bool3;
        this.thankYouMessageHeader = str10;
        this.thankYouMessageDescription = str11;
        this.thankYouMessageDescriptionContentType = surveyTextContentType;
        this.thankYouMessageCloseButtonText = str12;
        this.borderColor = borderColor;
        this.placeholder = str13;
        this.shuffleQuestions = bool4;
        this.surveyPopupDelaySeconds = d10;
        this.widgetType = surveyAppearanceWidgetType;
        this.widgetSelector = str14;
        this.widgetLabel = str15;
        this.widgetColor = str16;
    }

    public final SurveyAppearancePosition component1() {
        return this.position;
    }

    public final String component10() {
        return this.ratingButtonHoverColor;
    }

    public final Boolean component11() {
        return this.whiteLabel;
    }

    public final Boolean component12() {
        return this.autoDisappear;
    }

    public final Boolean component13() {
        return this.displayThankYouMessage;
    }

    public final String component14() {
        return this.thankYouMessageHeader;
    }

    public final String component15() {
        return this.thankYouMessageDescription;
    }

    public final SurveyTextContentType component16() {
        return this.thankYouMessageDescriptionContentType;
    }

    public final String component17() {
        return this.thankYouMessageCloseButtonText;
    }

    public final String component18() {
        return this.borderColor;
    }

    public final String component19() {
        return this.placeholder;
    }

    public final String component2() {
        return this.fontFamily;
    }

    public final Boolean component20() {
        return this.shuffleQuestions;
    }

    public final Double component21() {
        return this.surveyPopupDelaySeconds;
    }

    public final SurveyAppearanceWidgetType component22() {
        return this.widgetType;
    }

    public final String component23() {
        return this.widgetSelector;
    }

    public final String component24() {
        return this.widgetLabel;
    }

    public final String component25() {
        return this.widgetColor;
    }

    public final String component3() {
        return this.backgroundColor;
    }

    public final String component4() {
        return this.submitButtonColor;
    }

    public final String component5() {
        return this.submitButtonText;
    }

    public final String component6() {
        return this.submitButtonTextColor;
    }

    public final String component7() {
        return this.descriptionTextColor;
    }

    public final String component8() {
        return this.ratingButtonColor;
    }

    public final String component9() {
        return this.ratingButtonActiveColor;
    }

    public final SurveyAppearance copy(SurveyAppearancePosition surveyAppearancePosition, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, Boolean bool, Boolean bool2, Boolean bool3, String str10, String str11, SurveyTextContentType surveyTextContentType, String str12, String borderColor, String str13, Boolean bool4, Double d10, SurveyAppearanceWidgetType surveyAppearanceWidgetType, String str14, String str15, String str16) {
        m.e(borderColor, "borderColor");
        return new SurveyAppearance(surveyAppearancePosition, str, str2, str3, str4, str5, str6, str7, str8, str9, bool, bool2, bool3, str10, str11, surveyTextContentType, str12, borderColor, str13, bool4, d10, surveyAppearanceWidgetType, str14, str15, str16);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SurveyAppearance) {
            SurveyAppearance surveyAppearance = (SurveyAppearance) obj;
            return this.position == surveyAppearance.position && m.a(this.fontFamily, surveyAppearance.fontFamily) && m.a(this.backgroundColor, surveyAppearance.backgroundColor) && m.a(this.submitButtonColor, surveyAppearance.submitButtonColor) && m.a(this.submitButtonText, surveyAppearance.submitButtonText) && m.a(this.submitButtonTextColor, surveyAppearance.submitButtonTextColor) && m.a(this.descriptionTextColor, surveyAppearance.descriptionTextColor) && m.a(this.ratingButtonColor, surveyAppearance.ratingButtonColor) && m.a(this.ratingButtonActiveColor, surveyAppearance.ratingButtonActiveColor) && m.a(this.ratingButtonHoverColor, surveyAppearance.ratingButtonHoverColor) && m.a(this.whiteLabel, surveyAppearance.whiteLabel) && m.a(this.autoDisappear, surveyAppearance.autoDisappear) && m.a(this.displayThankYouMessage, surveyAppearance.displayThankYouMessage) && m.a(this.thankYouMessageHeader, surveyAppearance.thankYouMessageHeader) && m.a(this.thankYouMessageDescription, surveyAppearance.thankYouMessageDescription) && this.thankYouMessageDescriptionContentType == surveyAppearance.thankYouMessageDescriptionContentType && m.a(this.thankYouMessageCloseButtonText, surveyAppearance.thankYouMessageCloseButtonText) && m.a(this.borderColor, surveyAppearance.borderColor) && m.a(this.placeholder, surveyAppearance.placeholder) && m.a(this.shuffleQuestions, surveyAppearance.shuffleQuestions) && m.a(this.surveyPopupDelaySeconds, surveyAppearance.surveyPopupDelaySeconds) && this.widgetType == surveyAppearance.widgetType && m.a(this.widgetSelector, surveyAppearance.widgetSelector) && m.a(this.widgetLabel, surveyAppearance.widgetLabel) && m.a(this.widgetColor, surveyAppearance.widgetColor);
        }
        return false;
    }

    public final Boolean getAutoDisappear() {
        return this.autoDisappear;
    }

    public final String getBackgroundColor() {
        return this.backgroundColor;
    }

    public final String getBorderColor() {
        return this.borderColor;
    }

    public final String getDescriptionTextColor() {
        return this.descriptionTextColor;
    }

    public final Boolean getDisplayThankYouMessage() {
        return this.displayThankYouMessage;
    }

    public final String getFontFamily() {
        return this.fontFamily;
    }

    public final String getPlaceholder() {
        return this.placeholder;
    }

    public final SurveyAppearancePosition getPosition() {
        return this.position;
    }

    public final String getRatingButtonActiveColor() {
        return this.ratingButtonActiveColor;
    }

    public final String getRatingButtonColor() {
        return this.ratingButtonColor;
    }

    public final String getRatingButtonHoverColor() {
        return this.ratingButtonHoverColor;
    }

    public final Boolean getShuffleQuestions() {
        return this.shuffleQuestions;
    }

    public final String getSubmitButtonColor() {
        return this.submitButtonColor;
    }

    public final String getSubmitButtonText() {
        return this.submitButtonText;
    }

    public final String getSubmitButtonTextColor() {
        return this.submitButtonTextColor;
    }

    public final Double getSurveyPopupDelaySeconds() {
        return this.surveyPopupDelaySeconds;
    }

    public final String getThankYouMessageCloseButtonText() {
        return this.thankYouMessageCloseButtonText;
    }

    public final String getThankYouMessageDescription() {
        return this.thankYouMessageDescription;
    }

    public final SurveyTextContentType getThankYouMessageDescriptionContentType() {
        return this.thankYouMessageDescriptionContentType;
    }

    public final String getThankYouMessageHeader() {
        return this.thankYouMessageHeader;
    }

    public final Boolean getWhiteLabel() {
        return this.whiteLabel;
    }

    public final String getWidgetColor() {
        return this.widgetColor;
    }

    public final String getWidgetLabel() {
        return this.widgetLabel;
    }

    public final String getWidgetSelector() {
        return this.widgetSelector;
    }

    public final SurveyAppearanceWidgetType getWidgetType() {
        return this.widgetType;
    }

    public int hashCode() {
        SurveyAppearancePosition surveyAppearancePosition = this.position;
        int hashCode = (surveyAppearancePosition == null ? 0 : surveyAppearancePosition.hashCode()) * 31;
        String str = this.fontFamily;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.backgroundColor;
        int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.submitButtonColor;
        int hashCode4 = (hashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.submitButtonText;
        int hashCode5 = (hashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.submitButtonTextColor;
        int hashCode6 = (hashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.descriptionTextColor;
        int hashCode7 = (hashCode6 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.ratingButtonColor;
        int hashCode8 = (hashCode7 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.ratingButtonActiveColor;
        int hashCode9 = (hashCode8 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.ratingButtonHoverColor;
        int hashCode10 = (hashCode9 + (str9 == null ? 0 : str9.hashCode())) * 31;
        Boolean bool = this.whiteLabel;
        int hashCode11 = (hashCode10 + (bool == null ? 0 : bool.hashCode())) * 31;
        Boolean bool2 = this.autoDisappear;
        int hashCode12 = (hashCode11 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        Boolean bool3 = this.displayThankYouMessage;
        int hashCode13 = (hashCode12 + (bool3 == null ? 0 : bool3.hashCode())) * 31;
        String str10 = this.thankYouMessageHeader;
        int hashCode14 = (hashCode13 + (str10 == null ? 0 : str10.hashCode())) * 31;
        String str11 = this.thankYouMessageDescription;
        int hashCode15 = (hashCode14 + (str11 == null ? 0 : str11.hashCode())) * 31;
        SurveyTextContentType surveyTextContentType = this.thankYouMessageDescriptionContentType;
        int hashCode16 = (hashCode15 + (surveyTextContentType == null ? 0 : surveyTextContentType.hashCode())) * 31;
        String str12 = this.thankYouMessageCloseButtonText;
        int hashCode17 = (((hashCode16 + (str12 == null ? 0 : str12.hashCode())) * 31) + this.borderColor.hashCode()) * 31;
        String str13 = this.placeholder;
        int hashCode18 = (hashCode17 + (str13 == null ? 0 : str13.hashCode())) * 31;
        Boolean bool4 = this.shuffleQuestions;
        int hashCode19 = (hashCode18 + (bool4 == null ? 0 : bool4.hashCode())) * 31;
        Double d10 = this.surveyPopupDelaySeconds;
        int hashCode20 = (hashCode19 + (d10 == null ? 0 : d10.hashCode())) * 31;
        SurveyAppearanceWidgetType surveyAppearanceWidgetType = this.widgetType;
        int hashCode21 = (hashCode20 + (surveyAppearanceWidgetType == null ? 0 : surveyAppearanceWidgetType.hashCode())) * 31;
        String str14 = this.widgetSelector;
        int hashCode22 = (hashCode21 + (str14 == null ? 0 : str14.hashCode())) * 31;
        String str15 = this.widgetLabel;
        int hashCode23 = (hashCode22 + (str15 == null ? 0 : str15.hashCode())) * 31;
        String str16 = this.widgetColor;
        return hashCode23 + (str16 != null ? str16.hashCode() : 0);
    }

    public String toString() {
        return "SurveyAppearance(position=" + this.position + ", fontFamily=" + this.fontFamily + ", backgroundColor=" + this.backgroundColor + ", submitButtonColor=" + this.submitButtonColor + ", submitButtonText=" + this.submitButtonText + ", submitButtonTextColor=" + this.submitButtonTextColor + ", descriptionTextColor=" + this.descriptionTextColor + ", ratingButtonColor=" + this.ratingButtonColor + ", ratingButtonActiveColor=" + this.ratingButtonActiveColor + ", ratingButtonHoverColor=" + this.ratingButtonHoverColor + ", whiteLabel=" + this.whiteLabel + ", autoDisappear=" + this.autoDisappear + ", displayThankYouMessage=" + this.displayThankYouMessage + ", thankYouMessageHeader=" + this.thankYouMessageHeader + ", thankYouMessageDescription=" + this.thankYouMessageDescription + ", thankYouMessageDescriptionContentType=" + this.thankYouMessageDescriptionContentType + ", thankYouMessageCloseButtonText=" + this.thankYouMessageCloseButtonText + ", borderColor=" + this.borderColor + ", placeholder=" + this.placeholder + ", shuffleQuestions=" + this.shuffleQuestions + ", surveyPopupDelaySeconds=" + this.surveyPopupDelaySeconds + ", widgetType=" + this.widgetType + ", widgetSelector=" + this.widgetSelector + ", widgetLabel=" + this.widgetLabel + ", widgetColor=" + this.widgetColor + ')';
    }
}
