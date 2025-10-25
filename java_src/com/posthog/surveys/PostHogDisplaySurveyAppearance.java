package com.posthog.surveys;

import io.appmetrica.analytics.coreutils.internal.io.Base64Utils;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public final class PostHogDisplaySurveyAppearance {
    public static final Companion Companion = new Companion(null);
    private final String backgroundColor;
    private final String borderColor;
    private final String descriptionTextColor;
    private final boolean displayThankYouMessage;
    private final String fontFamily;
    private final String placeholder;
    private final String ratingButtonActiveColor;
    private final String ratingButtonColor;
    private final String submitButtonColor;
    private final String submitButtonText;
    private final String submitButtonTextColor;
    private final String thankYouMessageDescription;
    private final PostHogDisplaySurveyTextContentType thankYouMessageDescriptionContentType;
    private final String thankYouMessageHeader;

    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final PostHogDisplaySurveyAppearance fromSurveyAppearance$posthog(SurveyAppearance appearance) {
            String str;
            PostHogDisplaySurveyTextContentType postHogDisplaySurveyTextContentType;
            boolean z10;
            m.e(appearance, "appearance");
            SurveyTextContentType thankYouMessageDescriptionContentType = appearance.getThankYouMessageDescriptionContentType();
            if (thankYouMessageDescriptionContentType != null) {
                str = thankYouMessageDescriptionContentType.getValue();
            } else {
                str = null;
            }
            if (m.a(str, "html")) {
                postHogDisplaySurveyTextContentType = PostHogDisplaySurveyTextContentType.HTML;
            } else {
                postHogDisplaySurveyTextContentType = PostHogDisplaySurveyTextContentType.TEXT;
            }
            PostHogDisplaySurveyTextContentType postHogDisplaySurveyTextContentType2 = postHogDisplaySurveyTextContentType;
            String fontFamily = appearance.getFontFamily();
            String backgroundColor = appearance.getBackgroundColor();
            String borderColor = appearance.getBorderColor();
            String submitButtonColor = appearance.getSubmitButtonColor();
            String submitButtonText = appearance.getSubmitButtonText();
            String submitButtonTextColor = appearance.getSubmitButtonTextColor();
            String descriptionTextColor = appearance.getDescriptionTextColor();
            String ratingButtonColor = appearance.getRatingButtonColor();
            String ratingButtonActiveColor = appearance.getRatingButtonActiveColor();
            String placeholder = appearance.getPlaceholder();
            Boolean displayThankYouMessage = appearance.getDisplayThankYouMessage();
            if (displayThankYouMessage != null) {
                z10 = displayThankYouMessage.booleanValue();
            } else {
                z10 = false;
            }
            return new PostHogDisplaySurveyAppearance(fontFamily, backgroundColor, borderColor, submitButtonColor, submitButtonText, submitButtonTextColor, descriptionTextColor, ratingButtonColor, ratingButtonActiveColor, placeholder, z10, appearance.getThankYouMessageHeader(), appearance.getThankYouMessageDescription(), postHogDisplaySurveyTextContentType2);
        }
    }

    public PostHogDisplaySurveyAppearance() {
        this(null, null, null, null, null, null, null, null, null, null, false, null, null, null, 16383, null);
    }

    public final String component1() {
        return this.fontFamily;
    }

    public final String component10() {
        return this.placeholder;
    }

    public final boolean component11() {
        return this.displayThankYouMessage;
    }

    public final String component12() {
        return this.thankYouMessageHeader;
    }

    public final String component13() {
        return this.thankYouMessageDescription;
    }

    public final PostHogDisplaySurveyTextContentType component14() {
        return this.thankYouMessageDescriptionContentType;
    }

    public final String component2() {
        return this.backgroundColor;
    }

    public final String component3() {
        return this.borderColor;
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

    public final PostHogDisplaySurveyAppearance copy(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, boolean z10, String str11, String str12, PostHogDisplaySurveyTextContentType postHogDisplaySurveyTextContentType) {
        return new PostHogDisplaySurveyAppearance(str, str2, str3, str4, str5, str6, str7, str8, str9, str10, z10, str11, str12, postHogDisplaySurveyTextContentType);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PostHogDisplaySurveyAppearance) {
            PostHogDisplaySurveyAppearance postHogDisplaySurveyAppearance = (PostHogDisplaySurveyAppearance) obj;
            return m.a(this.fontFamily, postHogDisplaySurveyAppearance.fontFamily) && m.a(this.backgroundColor, postHogDisplaySurveyAppearance.backgroundColor) && m.a(this.borderColor, postHogDisplaySurveyAppearance.borderColor) && m.a(this.submitButtonColor, postHogDisplaySurveyAppearance.submitButtonColor) && m.a(this.submitButtonText, postHogDisplaySurveyAppearance.submitButtonText) && m.a(this.submitButtonTextColor, postHogDisplaySurveyAppearance.submitButtonTextColor) && m.a(this.descriptionTextColor, postHogDisplaySurveyAppearance.descriptionTextColor) && m.a(this.ratingButtonColor, postHogDisplaySurveyAppearance.ratingButtonColor) && m.a(this.ratingButtonActiveColor, postHogDisplaySurveyAppearance.ratingButtonActiveColor) && m.a(this.placeholder, postHogDisplaySurveyAppearance.placeholder) && this.displayThankYouMessage == postHogDisplaySurveyAppearance.displayThankYouMessage && m.a(this.thankYouMessageHeader, postHogDisplaySurveyAppearance.thankYouMessageHeader) && m.a(this.thankYouMessageDescription, postHogDisplaySurveyAppearance.thankYouMessageDescription) && this.thankYouMessageDescriptionContentType == postHogDisplaySurveyAppearance.thankYouMessageDescriptionContentType;
        }
        return false;
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

    public final boolean getDisplayThankYouMessage() {
        return this.displayThankYouMessage;
    }

    public final String getFontFamily() {
        return this.fontFamily;
    }

    public final String getPlaceholder() {
        return this.placeholder;
    }

    public final String getRatingButtonActiveColor() {
        return this.ratingButtonActiveColor;
    }

    public final String getRatingButtonColor() {
        return this.ratingButtonColor;
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

    public final String getThankYouMessageDescription() {
        return this.thankYouMessageDescription;
    }

    public final PostHogDisplaySurveyTextContentType getThankYouMessageDescriptionContentType() {
        return this.thankYouMessageDescriptionContentType;
    }

    public final String getThankYouMessageHeader() {
        return this.thankYouMessageHeader;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        String str = this.fontFamily;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.backgroundColor;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.borderColor;
        int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.submitButtonColor;
        int hashCode4 = (hashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.submitButtonText;
        int hashCode5 = (hashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.submitButtonTextColor;
        int hashCode6 = (hashCode5 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.descriptionTextColor;
        int hashCode7 = (hashCode6 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.ratingButtonColor;
        int hashCode8 = (hashCode7 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.ratingButtonActiveColor;
        int hashCode9 = (hashCode8 + (str9 == null ? 0 : str9.hashCode())) * 31;
        String str10 = this.placeholder;
        int hashCode10 = (hashCode9 + (str10 == null ? 0 : str10.hashCode())) * 31;
        boolean z10 = this.displayThankYouMessage;
        int i10 = z10;
        if (z10 != 0) {
            i10 = 1;
        }
        int i11 = (hashCode10 + i10) * 31;
        String str11 = this.thankYouMessageHeader;
        int hashCode11 = (i11 + (str11 == null ? 0 : str11.hashCode())) * 31;
        String str12 = this.thankYouMessageDescription;
        int hashCode12 = (hashCode11 + (str12 == null ? 0 : str12.hashCode())) * 31;
        PostHogDisplaySurveyTextContentType postHogDisplaySurveyTextContentType = this.thankYouMessageDescriptionContentType;
        return hashCode12 + (postHogDisplaySurveyTextContentType != null ? postHogDisplaySurveyTextContentType.hashCode() : 0);
    }

    public String toString() {
        return "PostHogDisplaySurveyAppearance(fontFamily=" + this.fontFamily + ", backgroundColor=" + this.backgroundColor + ", borderColor=" + this.borderColor + ", submitButtonColor=" + this.submitButtonColor + ", submitButtonText=" + this.submitButtonText + ", submitButtonTextColor=" + this.submitButtonTextColor + ", descriptionTextColor=" + this.descriptionTextColor + ", ratingButtonColor=" + this.ratingButtonColor + ", ratingButtonActiveColor=" + this.ratingButtonActiveColor + ", placeholder=" + this.placeholder + ", displayThankYouMessage=" + this.displayThankYouMessage + ", thankYouMessageHeader=" + this.thankYouMessageHeader + ", thankYouMessageDescription=" + this.thankYouMessageDescription + ", thankYouMessageDescriptionContentType=" + this.thankYouMessageDescriptionContentType + ')';
    }

    public PostHogDisplaySurveyAppearance(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, boolean z10, String str11, String str12, PostHogDisplaySurveyTextContentType postHogDisplaySurveyTextContentType) {
        this.fontFamily = str;
        this.backgroundColor = str2;
        this.borderColor = str3;
        this.submitButtonColor = str4;
        this.submitButtonText = str5;
        this.submitButtonTextColor = str6;
        this.descriptionTextColor = str7;
        this.ratingButtonColor = str8;
        this.ratingButtonActiveColor = str9;
        this.placeholder = str10;
        this.displayThankYouMessage = z10;
        this.thankYouMessageHeader = str11;
        this.thankYouMessageDescription = str12;
        this.thankYouMessageDescriptionContentType = postHogDisplaySurveyTextContentType;
    }

    public /* synthetic */ PostHogDisplaySurveyAppearance(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, boolean z10, String str11, String str12, PostHogDisplaySurveyTextContentType postHogDisplaySurveyTextContentType, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : str, (i10 & 2) != 0 ? null : str2, (i10 & 4) != 0 ? null : str3, (i10 & 8) != 0 ? null : str4, (i10 & 16) != 0 ? null : str5, (i10 & 32) != 0 ? null : str6, (i10 & 64) != 0 ? null : str7, (i10 & 128) != 0 ? null : str8, (i10 & 256) != 0 ? null : str9, (i10 & 512) != 0 ? null : str10, (i10 & 1024) != 0 ? false : z10, (i10 & 2048) != 0 ? null : str11, (i10 & Base64Utils.IO_BUFFER_SIZE) != 0 ? null : str12, (i10 & 8192) == 0 ? postHogDisplaySurveyTextContentType : null);
    }
}
