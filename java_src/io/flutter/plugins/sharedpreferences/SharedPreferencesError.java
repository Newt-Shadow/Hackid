package io.flutter.plugins.sharedpreferences;

import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public final class SharedPreferencesError extends Throwable {
    private final String code;
    private final Object details;
    private final String message;

    public /* synthetic */ SharedPreferencesError(String str, String str2, Object obj, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i10 & 2) != 0 ? null : str2, (i10 & 4) != 0 ? null : obj);
    }

    public final String getCode() {
        return this.code;
    }

    public final Object getDetails() {
        return this.details;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return this.message;
    }

    public SharedPreferencesError(String code, String str, Object obj) {
        kotlin.jvm.internal.m.e(code, "code");
        this.code = code;
        this.message = str;
        this.details = obj;
    }
}
