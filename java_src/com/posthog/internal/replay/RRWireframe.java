package com.posthog.internal.replay;

import io.appmetrica.analytics.coreutils.internal.io.Base64Utils;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
@IgnoreJRERequirement
/* loaded from: classes.dex */
public final class RRWireframe {
    private final String base64;
    private final Boolean checked;
    private final List<RRWireframe> childWireframes;
    private final Boolean disabled;
    private final int height;

    /* renamed from: id  reason: collision with root package name */
    private final int f9480id;
    private final String inputType;
    private final String label;
    private final Integer max;
    private final List<String> options;
    private final transient Integer parentId;
    private final RRStyle style;
    private final String text;
    private final String type;
    private final Object value;
    private final int width;

    /* renamed from: x  reason: collision with root package name */
    private final int f9481x;

    /* renamed from: y  reason: collision with root package name */
    private final int f9482y;

    public RRWireframe(int i10, int i11, int i12, int i13, int i14, List<RRWireframe> list, String str, String str2, String str3, String str4, Object obj, String str5, RRStyle rRStyle, Boolean bool, Boolean bool2, List<String> list2, Integer num, Integer num2) {
        this.f9480id = i10;
        this.f9481x = i11;
        this.f9482y = i12;
        this.width = i13;
        this.height = i14;
        this.childWireframes = list;
        this.type = str;
        this.inputType = str2;
        this.text = str3;
        this.label = str4;
        this.value = obj;
        this.base64 = str5;
        this.style = rRStyle;
        this.disabled = bool;
        this.checked = bool2;
        this.options = list2;
        this.parentId = num;
        this.max = num2;
    }

    public final int component1() {
        return this.f9480id;
    }

    public final String component10() {
        return this.label;
    }

    public final Object component11() {
        return this.value;
    }

    public final String component12() {
        return this.base64;
    }

    public final RRStyle component13() {
        return this.style;
    }

    public final Boolean component14() {
        return this.disabled;
    }

    public final Boolean component15() {
        return this.checked;
    }

    public final List<String> component16() {
        return this.options;
    }

    public final Integer component17() {
        return this.parentId;
    }

    public final Integer component18() {
        return this.max;
    }

    public final int component2() {
        return this.f9481x;
    }

    public final int component3() {
        return this.f9482y;
    }

    public final int component4() {
        return this.width;
    }

    public final int component5() {
        return this.height;
    }

    public final List<RRWireframe> component6() {
        return this.childWireframes;
    }

    public final String component7() {
        return this.type;
    }

    public final String component8() {
        return this.inputType;
    }

    public final String component9() {
        return this.text;
    }

    public final RRWireframe copy(int i10, int i11, int i12, int i13, int i14, List<RRWireframe> list, String str, String str2, String str3, String str4, Object obj, String str5, RRStyle rRStyle, Boolean bool, Boolean bool2, List<String> list2, Integer num, Integer num2) {
        return new RRWireframe(i10, i11, i12, i13, i14, list, str, str2, str3, str4, obj, str5, rRStyle, bool, bool2, list2, num, num2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof RRWireframe) {
            RRWireframe rRWireframe = (RRWireframe) obj;
            return this.f9480id == rRWireframe.f9480id && this.f9481x == rRWireframe.f9481x && this.f9482y == rRWireframe.f9482y && this.width == rRWireframe.width && this.height == rRWireframe.height && m.a(this.childWireframes, rRWireframe.childWireframes) && m.a(this.type, rRWireframe.type) && m.a(this.inputType, rRWireframe.inputType) && m.a(this.text, rRWireframe.text) && m.a(this.label, rRWireframe.label) && m.a(this.value, rRWireframe.value) && m.a(this.base64, rRWireframe.base64) && m.a(this.style, rRWireframe.style) && m.a(this.disabled, rRWireframe.disabled) && m.a(this.checked, rRWireframe.checked) && m.a(this.options, rRWireframe.options) && m.a(this.parentId, rRWireframe.parentId) && m.a(this.max, rRWireframe.max);
        }
        return false;
    }

    public final String getBase64() {
        return this.base64;
    }

    public final Boolean getChecked() {
        return this.checked;
    }

    public final List<RRWireframe> getChildWireframes() {
        return this.childWireframes;
    }

    public final Boolean getDisabled() {
        return this.disabled;
    }

    public final int getHeight() {
        return this.height;
    }

    public final int getId() {
        return this.f9480id;
    }

    public final String getInputType() {
        return this.inputType;
    }

    public final String getLabel() {
        return this.label;
    }

    public final Integer getMax() {
        return this.max;
    }

    public final List<String> getOptions() {
        return this.options;
    }

    public final Integer getParentId() {
        return this.parentId;
    }

    public final RRStyle getStyle() {
        return this.style;
    }

    public final String getText() {
        return this.text;
    }

    public final String getType() {
        return this.type;
    }

    public final Object getValue() {
        return this.value;
    }

    public final int getWidth() {
        return this.width;
    }

    public final int getX() {
        return this.f9481x;
    }

    public final int getY() {
        return this.f9482y;
    }

    public int hashCode() {
        int hashCode = ((((((((Integer.hashCode(this.f9480id) * 31) + Integer.hashCode(this.f9481x)) * 31) + Integer.hashCode(this.f9482y)) * 31) + Integer.hashCode(this.width)) * 31) + Integer.hashCode(this.height)) * 31;
        List<RRWireframe> list = this.childWireframes;
        int hashCode2 = (hashCode + (list == null ? 0 : list.hashCode())) * 31;
        String str = this.type;
        int hashCode3 = (hashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.inputType;
        int hashCode4 = (hashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.text;
        int hashCode5 = (hashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.label;
        int hashCode6 = (hashCode5 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Object obj = this.value;
        int hashCode7 = (hashCode6 + (obj == null ? 0 : obj.hashCode())) * 31;
        String str5 = this.base64;
        int hashCode8 = (hashCode7 + (str5 == null ? 0 : str5.hashCode())) * 31;
        RRStyle rRStyle = this.style;
        int hashCode9 = (hashCode8 + (rRStyle == null ? 0 : rRStyle.hashCode())) * 31;
        Boolean bool = this.disabled;
        int hashCode10 = (hashCode9 + (bool == null ? 0 : bool.hashCode())) * 31;
        Boolean bool2 = this.checked;
        int hashCode11 = (hashCode10 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        List<String> list2 = this.options;
        int hashCode12 = (hashCode11 + (list2 == null ? 0 : list2.hashCode())) * 31;
        Integer num = this.parentId;
        int hashCode13 = (hashCode12 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.max;
        return hashCode13 + (num2 != null ? num2.hashCode() : 0);
    }

    public String toString() {
        return "RRWireframe(id=" + this.f9480id + ", x=" + this.f9481x + ", y=" + this.f9482y + ", width=" + this.width + ", height=" + this.height + ", childWireframes=" + this.childWireframes + ", type=" + this.type + ", inputType=" + this.inputType + ", text=" + this.text + ", label=" + this.label + ", value=" + this.value + ", base64=" + this.base64 + ", style=" + this.style + ", disabled=" + this.disabled + ", checked=" + this.checked + ", options=" + this.options + ", parentId=" + this.parentId + ", max=" + this.max + ')';
    }

    public /* synthetic */ RRWireframe(int i10, int i11, int i12, int i13, int i14, List list, String str, String str2, String str3, String str4, Object obj, String str5, RRStyle rRStyle, Boolean bool, Boolean bool2, List list2, Integer num, Integer num2, int i15, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, i11, i12, i13, i14, (i15 & 32) != 0 ? null : list, (i15 & 64) != 0 ? null : str, (i15 & 128) != 0 ? null : str2, (i15 & 256) != 0 ? null : str3, (i15 & 512) != 0 ? null : str4, (i15 & 1024) != 0 ? null : obj, (i15 & 2048) != 0 ? null : str5, (i15 & Base64Utils.IO_BUFFER_SIZE) != 0 ? null : rRStyle, (i15 & 8192) != 0 ? null : bool, (i15 & 16384) != 0 ? null : bool2, (32768 & i15) != 0 ? null : list2, (65536 & i15) != 0 ? null : num, (i15 & 131072) != 0 ? null : num2);
    }
}
