package com.posthog.internal.replay;

import io.appmetrica.analytics.coreutils.internal.io.Base64Utils;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public final class RRStyle {
    private String backgroundColor;
    private String backgroundImage;
    private String bar;
    private String borderColor;
    private Integer borderRadius;
    private Integer borderWidth;
    private String color;
    private String fontFamily;
    private Integer fontSize;
    private String horizontalAlign;
    private String iconLeft;
    private String iconRight;
    private Integer paddingBottom;
    private Integer paddingLeft;
    private Integer paddingRight;
    private Integer paddingTop;
    private String verticalAlign;

    public RRStyle() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 131071, null);
    }

    public final String component1() {
        return this.color;
    }

    public final String component10() {
        return this.verticalAlign;
    }

    public final Integer component11() {
        return this.paddingTop;
    }

    public final Integer component12() {
        return this.paddingBottom;
    }

    public final Integer component13() {
        return this.paddingLeft;
    }

    public final Integer component14() {
        return this.paddingRight;
    }

    public final String component15() {
        return this.bar;
    }

    public final String component16() {
        return this.iconLeft;
    }

    public final String component17() {
        return this.iconRight;
    }

    public final String component2() {
        return this.backgroundColor;
    }

    public final String component3() {
        return this.backgroundImage;
    }

    public final Integer component4() {
        return this.borderWidth;
    }

    public final Integer component5() {
        return this.borderRadius;
    }

    public final String component6() {
        return this.borderColor;
    }

    public final Integer component7() {
        return this.fontSize;
    }

    public final String component8() {
        return this.fontFamily;
    }

    public final String component9() {
        return this.horizontalAlign;
    }

    public final RRStyle copy(String str, String str2, String str3, Integer num, Integer num2, String str4, Integer num3, String str5, String str6, String str7, Integer num4, Integer num5, Integer num6, Integer num7, String str8, String str9, String str10) {
        return new RRStyle(str, str2, str3, num, num2, str4, num3, str5, str6, str7, num4, num5, num6, num7, str8, str9, str10);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof RRStyle) {
            RRStyle rRStyle = (RRStyle) obj;
            return m.a(this.color, rRStyle.color) && m.a(this.backgroundColor, rRStyle.backgroundColor) && m.a(this.backgroundImage, rRStyle.backgroundImage) && m.a(this.borderWidth, rRStyle.borderWidth) && m.a(this.borderRadius, rRStyle.borderRadius) && m.a(this.borderColor, rRStyle.borderColor) && m.a(this.fontSize, rRStyle.fontSize) && m.a(this.fontFamily, rRStyle.fontFamily) && m.a(this.horizontalAlign, rRStyle.horizontalAlign) && m.a(this.verticalAlign, rRStyle.verticalAlign) && m.a(this.paddingTop, rRStyle.paddingTop) && m.a(this.paddingBottom, rRStyle.paddingBottom) && m.a(this.paddingLeft, rRStyle.paddingLeft) && m.a(this.paddingRight, rRStyle.paddingRight) && m.a(this.bar, rRStyle.bar) && m.a(this.iconLeft, rRStyle.iconLeft) && m.a(this.iconRight, rRStyle.iconRight);
        }
        return false;
    }

    public final String getBackgroundColor() {
        return this.backgroundColor;
    }

    public final String getBackgroundImage() {
        return this.backgroundImage;
    }

    public final String getBar() {
        return this.bar;
    }

    public final String getBorderColor() {
        return this.borderColor;
    }

    public final Integer getBorderRadius() {
        return this.borderRadius;
    }

    public final Integer getBorderWidth() {
        return this.borderWidth;
    }

    public final String getColor() {
        return this.color;
    }

    public final String getFontFamily() {
        return this.fontFamily;
    }

    public final Integer getFontSize() {
        return this.fontSize;
    }

    public final String getHorizontalAlign() {
        return this.horizontalAlign;
    }

    public final String getIconLeft() {
        return this.iconLeft;
    }

    public final String getIconRight() {
        return this.iconRight;
    }

    public final Integer getPaddingBottom() {
        return this.paddingBottom;
    }

    public final Integer getPaddingLeft() {
        return this.paddingLeft;
    }

    public final Integer getPaddingRight() {
        return this.paddingRight;
    }

    public final Integer getPaddingTop() {
        return this.paddingTop;
    }

    public final String getVerticalAlign() {
        return this.verticalAlign;
    }

    public int hashCode() {
        String str = this.color;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.backgroundColor;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.backgroundImage;
        int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Integer num = this.borderWidth;
        int hashCode4 = (hashCode3 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.borderRadius;
        int hashCode5 = (hashCode4 + (num2 == null ? 0 : num2.hashCode())) * 31;
        String str4 = this.borderColor;
        int hashCode6 = (hashCode5 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Integer num3 = this.fontSize;
        int hashCode7 = (hashCode6 + (num3 == null ? 0 : num3.hashCode())) * 31;
        String str5 = this.fontFamily;
        int hashCode8 = (hashCode7 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.horizontalAlign;
        int hashCode9 = (hashCode8 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.verticalAlign;
        int hashCode10 = (hashCode9 + (str7 == null ? 0 : str7.hashCode())) * 31;
        Integer num4 = this.paddingTop;
        int hashCode11 = (hashCode10 + (num4 == null ? 0 : num4.hashCode())) * 31;
        Integer num5 = this.paddingBottom;
        int hashCode12 = (hashCode11 + (num5 == null ? 0 : num5.hashCode())) * 31;
        Integer num6 = this.paddingLeft;
        int hashCode13 = (hashCode12 + (num6 == null ? 0 : num6.hashCode())) * 31;
        Integer num7 = this.paddingRight;
        int hashCode14 = (hashCode13 + (num7 == null ? 0 : num7.hashCode())) * 31;
        String str8 = this.bar;
        int hashCode15 = (hashCode14 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.iconLeft;
        int hashCode16 = (hashCode15 + (str9 == null ? 0 : str9.hashCode())) * 31;
        String str10 = this.iconRight;
        return hashCode16 + (str10 != null ? str10.hashCode() : 0);
    }

    public final void setBackgroundColor(String str) {
        this.backgroundColor = str;
    }

    public final void setBackgroundImage(String str) {
        this.backgroundImage = str;
    }

    public final void setBar(String str) {
        this.bar = str;
    }

    public final void setBorderColor(String str) {
        this.borderColor = str;
    }

    public final void setBorderRadius(Integer num) {
        this.borderRadius = num;
    }

    public final void setBorderWidth(Integer num) {
        this.borderWidth = num;
    }

    public final void setColor(String str) {
        this.color = str;
    }

    public final void setFontFamily(String str) {
        this.fontFamily = str;
    }

    public final void setFontSize(Integer num) {
        this.fontSize = num;
    }

    public final void setHorizontalAlign(String str) {
        this.horizontalAlign = str;
    }

    public final void setIconLeft(String str) {
        this.iconLeft = str;
    }

    public final void setIconRight(String str) {
        this.iconRight = str;
    }

    public final void setPaddingBottom(Integer num) {
        this.paddingBottom = num;
    }

    public final void setPaddingLeft(Integer num) {
        this.paddingLeft = num;
    }

    public final void setPaddingRight(Integer num) {
        this.paddingRight = num;
    }

    public final void setPaddingTop(Integer num) {
        this.paddingTop = num;
    }

    public final void setVerticalAlign(String str) {
        this.verticalAlign = str;
    }

    public String toString() {
        return "RRStyle(color=" + this.color + ", backgroundColor=" + this.backgroundColor + ", backgroundImage=" + this.backgroundImage + ", borderWidth=" + this.borderWidth + ", borderRadius=" + this.borderRadius + ", borderColor=" + this.borderColor + ", fontSize=" + this.fontSize + ", fontFamily=" + this.fontFamily + ", horizontalAlign=" + this.horizontalAlign + ", verticalAlign=" + this.verticalAlign + ", paddingTop=" + this.paddingTop + ", paddingBottom=" + this.paddingBottom + ", paddingLeft=" + this.paddingLeft + ", paddingRight=" + this.paddingRight + ", bar=" + this.bar + ", iconLeft=" + this.iconLeft + ", iconRight=" + this.iconRight + ')';
    }

    public RRStyle(String str, String str2, String str3, Integer num, Integer num2, String str4, Integer num3, String str5, String str6, String str7, Integer num4, Integer num5, Integer num6, Integer num7, String str8, String str9, String str10) {
        this.color = str;
        this.backgroundColor = str2;
        this.backgroundImage = str3;
        this.borderWidth = num;
        this.borderRadius = num2;
        this.borderColor = str4;
        this.fontSize = num3;
        this.fontFamily = str5;
        this.horizontalAlign = str6;
        this.verticalAlign = str7;
        this.paddingTop = num4;
        this.paddingBottom = num5;
        this.paddingLeft = num6;
        this.paddingRight = num7;
        this.bar = str8;
        this.iconLeft = str9;
        this.iconRight = str10;
    }

    public /* synthetic */ RRStyle(String str, String str2, String str3, Integer num, Integer num2, String str4, Integer num3, String str5, String str6, String str7, Integer num4, Integer num5, Integer num6, Integer num7, String str8, String str9, String str10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : str, (i10 & 2) != 0 ? null : str2, (i10 & 4) != 0 ? null : str3, (i10 & 8) != 0 ? null : num, (i10 & 16) != 0 ? null : num2, (i10 & 32) != 0 ? null : str4, (i10 & 64) != 0 ? null : num3, (i10 & 128) != 0 ? null : str5, (i10 & 256) != 0 ? null : str6, (i10 & 512) != 0 ? null : str7, (i10 & 1024) != 0 ? null : num4, (i10 & 2048) != 0 ? null : num5, (i10 & Base64Utils.IO_BUFFER_SIZE) != 0 ? null : num6, (i10 & 8192) != 0 ? null : num7, (i10 & 16384) != 0 ? null : str8, (i10 & 32768) != 0 ? null : str9, (i10 & 65536) != 0 ? null : str10);
    }
}
