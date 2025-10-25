package io.flutter.plugins.sharedpreferences;

import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public final class SharedPreferencesPigeonOptions {
    public static final Companion Companion = new Companion(null);
    private final String fileName;
    private final boolean useDataStore;

    /* loaded from: classes2.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final SharedPreferencesPigeonOptions fromList(List<? extends Object> pigeonVar_list) {
            kotlin.jvm.internal.m.e(pigeonVar_list, "pigeonVar_list");
            Object obj = pigeonVar_list.get(1);
            kotlin.jvm.internal.m.c(obj, "null cannot be cast to non-null type kotlin.Boolean");
            return new SharedPreferencesPigeonOptions((String) pigeonVar_list.get(0), ((Boolean) obj).booleanValue());
        }
    }

    public SharedPreferencesPigeonOptions(String str, boolean z10) {
        this.fileName = str;
        this.useDataStore = z10;
    }

    public static /* synthetic */ SharedPreferencesPigeonOptions copy$default(SharedPreferencesPigeonOptions sharedPreferencesPigeonOptions, String str, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = sharedPreferencesPigeonOptions.fileName;
        }
        if ((i10 & 2) != 0) {
            z10 = sharedPreferencesPigeonOptions.useDataStore;
        }
        return sharedPreferencesPigeonOptions.copy(str, z10);
    }

    public final String component1() {
        return this.fileName;
    }

    public final boolean component2() {
        return this.useDataStore;
    }

    public final SharedPreferencesPigeonOptions copy(String str, boolean z10) {
        return new SharedPreferencesPigeonOptions(str, z10);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SharedPreferencesPigeonOptions) {
            SharedPreferencesPigeonOptions sharedPreferencesPigeonOptions = (SharedPreferencesPigeonOptions) obj;
            return kotlin.jvm.internal.m.a(this.fileName, sharedPreferencesPigeonOptions.fileName) && this.useDataStore == sharedPreferencesPigeonOptions.useDataStore;
        }
        return false;
    }

    public final String getFileName() {
        return this.fileName;
    }

    public final boolean getUseDataStore() {
        return this.useDataStore;
    }

    public int hashCode() {
        String str = this.fileName;
        return ((str == null ? 0 : str.hashCode()) * 31) + Boolean.hashCode(this.useDataStore);
    }

    public final List<Object> toList() {
        List<Object> k10;
        k10 = yc.o.k(this.fileName, Boolean.valueOf(this.useDataStore));
        return k10;
    }

    public String toString() {
        String str = this.fileName;
        boolean z10 = this.useDataStore;
        return "SharedPreferencesPigeonOptions(fileName=" + str + ", useDataStore=" + z10 + ")";
    }

    public /* synthetic */ SharedPreferencesPigeonOptions(String str, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : str, z10);
    }
}
