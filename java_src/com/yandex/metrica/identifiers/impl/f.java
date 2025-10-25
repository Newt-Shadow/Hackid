package com.yandex.metrica.identifiers.impl;

import android.os.Bundle;
/* loaded from: classes.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    private final String f9664a;

    /* renamed from: b  reason: collision with root package name */
    private final String f9665b;

    /* renamed from: c  reason: collision with root package name */
    private final Boolean f9666c;

    public f(String provider, String str, Boolean bool) {
        kotlin.jvm.internal.m.e(provider, "provider");
        this.f9664a = provider;
        this.f9665b = str;
        this.f9666c = bool;
    }

    public final Bundle a() {
        Bundle bundle = new Bundle();
        bundle.putString("com.yandex.metrica.identifiers.extra.PROVIDER", this.f9664a);
        bundle.putString("com.yandex.metrica.identifiers.extra.ID", this.f9665b);
        Boolean bool = this.f9666c;
        if (bool != null) {
            bundle.putBoolean("com.yandex.metrica.identifiers.extra.LIMITED", bool.booleanValue());
        }
        return bundle;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof f) {
                f fVar = (f) obj;
                return kotlin.jvm.internal.m.a(this.f9664a, fVar.f9664a) && kotlin.jvm.internal.m.a(this.f9665b, fVar.f9665b) && kotlin.jvm.internal.m.a(this.f9666c, fVar.f9666c);
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f9664a;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.f9665b;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        Boolean bool = this.f9666c;
        return hashCode2 + (bool != null ? bool.hashCode() : 0);
    }

    public String toString() {
        return "AdsIdInfo(provider=" + this.f9664a + ", advId=" + this.f9665b + ", limitedAdTracking=" + this.f9666c + ")";
    }
}
