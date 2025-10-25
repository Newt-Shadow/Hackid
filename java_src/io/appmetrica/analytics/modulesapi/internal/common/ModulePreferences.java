package io.appmetrica.analytics.modulesapi.internal.common;
/* loaded from: classes2.dex */
public interface ModulePreferences {

    /* loaded from: classes2.dex */
    public static final class DefaultImpls {
        public static /* synthetic */ int getInt$default(ModulePreferences modulePreferences, String str, int i10, int i11, Object obj) {
            if (obj == null) {
                if ((i11 & 2) != 0) {
                    i10 = 0;
                }
                return modulePreferences.getInt(str, i10);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getInt");
        }

        public static /* synthetic */ long getLong$default(ModulePreferences modulePreferences, String str, long j10, int i10, Object obj) {
            if (obj == null) {
                if ((i10 & 2) != 0) {
                    j10 = 0;
                }
                return modulePreferences.getLong(str, j10);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getLong");
        }

        public static /* synthetic */ String getString$default(ModulePreferences modulePreferences, String str, String str2, int i10, Object obj) {
            if (obj == null) {
                if ((i10 & 2) != 0) {
                    str2 = null;
                }
                return modulePreferences.getString(str, str2);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getString");
        }
    }

    boolean getBoolean(String str, boolean z10);

    int getInt(String str, int i10);

    long getLong(String str, long j10);

    String getString(String str, String str2);

    void putBoolean(String str, boolean z10);

    void putInt(String str, int i10);

    void putLong(String str, long j10);

    void putString(String str, String str2);
}
