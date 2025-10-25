package io.appmetrica.analytics.identifiers.impl;
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final String f17892a;

    /* renamed from: b  reason: collision with root package name */
    public final String f17893b;

    /* renamed from: c  reason: collision with root package name */
    public final Boolean f17894c;

    public a(String str, String str2, Boolean bool) {
        this.f17892a = str;
        this.f17893b = str2;
        this.f17894c = bool;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof a) {
            a aVar = (a) obj;
            return kotlin.jvm.internal.m.a(this.f17892a, aVar.f17892a) && kotlin.jvm.internal.m.a(this.f17893b, aVar.f17893b) && kotlin.jvm.internal.m.a(this.f17894c, aVar.f17894c);
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = this.f17892a.hashCode() * 31;
        String str = this.f17893b;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        Boolean bool = this.f17894c;
        return hashCode2 + (bool != null ? bool.hashCode() : 0);
    }

    public final String toString() {
        return "AdvIdInfo(provider=" + this.f17892a + ", advId=" + this.f17893b + ", limitedAdTracking=" + this.f17894c + ')';
    }
}
