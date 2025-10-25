package io.appmetrica.analytics.coreapi.internal.identifiers;
/* loaded from: classes2.dex */
public enum AppSetIdScope {
    UNKNOWN(""),
    APP("app"),
    DEVELOPER("developer");
    

    /* renamed from: a  reason: collision with root package name */
    private final String f17651a;

    AppSetIdScope(String str) {
        this.f17651a = str;
    }

    public final String getValue() {
        return this.f17651a;
    }
}
