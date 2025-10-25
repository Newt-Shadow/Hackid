package io.appmetrica.analytics.modulesapi.internal.common;

import java.util.Map;
/* loaded from: classes2.dex */
public interface ModuleSelfReporter {

    /* loaded from: classes2.dex */
    public static final class DefaultImpls {
        public static /* synthetic */ void reportError$default(ModuleSelfReporter moduleSelfReporter, String str, Throwable th, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: reportError");
            }
            if ((i10 & 2) != 0) {
                th = null;
            }
            moduleSelfReporter.reportError(str, th);
        }

        public static /* synthetic */ void reportError$default(ModuleSelfReporter moduleSelfReporter, String str, String str2, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: reportError");
            }
            if ((i10 & 2) != 0) {
                str2 = null;
            }
            moduleSelfReporter.reportError(str, str2);
        }
    }

    void reportError(String str, String str2);

    void reportError(String str, Throwable th);

    void reportEvent(int i10, String str, String str2);

    void reportEvent(String str);

    void reportEvent(String str, String str2);

    void reportEvent(String str, Map<String, ? extends Object> map);
}
