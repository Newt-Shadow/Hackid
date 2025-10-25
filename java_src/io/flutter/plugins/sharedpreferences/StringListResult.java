package io.flutter.plugins.sharedpreferences;

import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public final class StringListResult {
    public static final Companion Companion = new Companion(null);
    private final String jsonEncodedValue;
    private final StringListLookupResultType type;

    /* loaded from: classes2.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final StringListResult fromList(List<? extends Object> pigeonVar_list) {
            kotlin.jvm.internal.m.e(pigeonVar_list, "pigeonVar_list");
            Object obj = pigeonVar_list.get(1);
            kotlin.jvm.internal.m.c(obj, "null cannot be cast to non-null type io.flutter.plugins.sharedpreferences.StringListLookupResultType");
            return new StringListResult((String) pigeonVar_list.get(0), (StringListLookupResultType) obj);
        }
    }

    public StringListResult(String str, StringListLookupResultType type) {
        kotlin.jvm.internal.m.e(type, "type");
        this.jsonEncodedValue = str;
        this.type = type;
    }

    public static /* synthetic */ StringListResult copy$default(StringListResult stringListResult, String str, StringListLookupResultType stringListLookupResultType, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = stringListResult.jsonEncodedValue;
        }
        if ((i10 & 2) != 0) {
            stringListLookupResultType = stringListResult.type;
        }
        return stringListResult.copy(str, stringListLookupResultType);
    }

    public final String component1() {
        return this.jsonEncodedValue;
    }

    public final StringListLookupResultType component2() {
        return this.type;
    }

    public final StringListResult copy(String str, StringListLookupResultType type) {
        kotlin.jvm.internal.m.e(type, "type");
        return new StringListResult(str, type);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StringListResult) {
            StringListResult stringListResult = (StringListResult) obj;
            return kotlin.jvm.internal.m.a(this.jsonEncodedValue, stringListResult.jsonEncodedValue) && this.type == stringListResult.type;
        }
        return false;
    }

    public final String getJsonEncodedValue() {
        return this.jsonEncodedValue;
    }

    public final StringListLookupResultType getType() {
        return this.type;
    }

    public int hashCode() {
        String str = this.jsonEncodedValue;
        return ((str == null ? 0 : str.hashCode()) * 31) + this.type.hashCode();
    }

    public final List<Object> toList() {
        List<Object> k10;
        k10 = yc.o.k(this.jsonEncodedValue, this.type);
        return k10;
    }

    public String toString() {
        String str = this.jsonEncodedValue;
        StringListLookupResultType stringListLookupResultType = this.type;
        return "StringListResult(jsonEncodedValue=" + str + ", type=" + stringListLookupResultType + ")";
    }

    public /* synthetic */ StringListResult(String str, StringListLookupResultType stringListLookupResultType, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : str, stringListLookupResultType);
    }
}
