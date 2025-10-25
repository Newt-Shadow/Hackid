package io.flutter.plugins.sharedpreferences;

import kotlin.jvm.internal.DefaultConstructorMarker;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class StringListLookupResultType {
    private static final /* synthetic */ cd.a $ENTRIES;
    private static final /* synthetic */ StringListLookupResultType[] $VALUES;
    public static final Companion Companion;
    private final int raw;
    public static final StringListLookupResultType PLATFORM_ENCODED = new StringListLookupResultType("PLATFORM_ENCODED", 0, 0);
    public static final StringListLookupResultType JSON_ENCODED = new StringListLookupResultType("JSON_ENCODED", 1, 1);
    public static final StringListLookupResultType UNEXPECTED_STRING = new StringListLookupResultType("UNEXPECTED_STRING", 2, 2);

    /* loaded from: classes2.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final StringListLookupResultType ofRaw(int i10) {
            StringListLookupResultType[] values;
            boolean z10;
            for (StringListLookupResultType stringListLookupResultType : StringListLookupResultType.values()) {
                if (stringListLookupResultType.getRaw() == i10) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (z10) {
                    return stringListLookupResultType;
                }
            }
            return null;
        }
    }

    private static final /* synthetic */ StringListLookupResultType[] $values() {
        return new StringListLookupResultType[]{PLATFORM_ENCODED, JSON_ENCODED, UNEXPECTED_STRING};
    }

    static {
        StringListLookupResultType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = cd.b.a($values);
        Companion = new Companion(null);
    }

    private StringListLookupResultType(String str, int i10, int i11) {
        this.raw = i11;
    }

    public static cd.a getEntries() {
        return $ENTRIES;
    }

    public static StringListLookupResultType valueOf(String str) {
        return (StringListLookupResultType) Enum.valueOf(StringListLookupResultType.class, str);
    }

    public static StringListLookupResultType[] values() {
        return (StringListLookupResultType[]) $VALUES.clone();
    }

    public final int getRaw() {
        return this.raw;
    }
}
