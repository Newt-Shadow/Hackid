package io.appmetrica.analytics.coreapi.internal.identifiers;

import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public final class AppSetId {

    /* renamed from: a  reason: collision with root package name */
    private final String f17648a;

    /* renamed from: b  reason: collision with root package name */
    private final AppSetIdScope f17649b;

    public AppSetId(String str, AppSetIdScope appSetIdScope) {
        this.f17648a = str;
        this.f17649b = appSetIdScope;
    }

    public static /* synthetic */ AppSetId copy$default(AppSetId appSetId, String str, AppSetIdScope appSetIdScope, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = appSetId.f17648a;
        }
        if ((i10 & 2) != 0) {
            appSetIdScope = appSetId.f17649b;
        }
        return appSetId.copy(str, appSetIdScope);
    }

    public final String component1() {
        return this.f17648a;
    }

    public final AppSetIdScope component2() {
        return this.f17649b;
    }

    public final AppSetId copy(String str, AppSetIdScope appSetIdScope) {
        return new AppSetId(str, appSetIdScope);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AppSetId) {
            AppSetId appSetId = (AppSetId) obj;
            return m.a(this.f17648a, appSetId.f17648a) && this.f17649b == appSetId.f17649b;
        }
        return false;
    }

    public final String getId() {
        return this.f17648a;
    }

    public final AppSetIdScope getScope() {
        return this.f17649b;
    }

    public int hashCode() {
        String str = this.f17648a;
        return this.f17649b.hashCode() + ((str == null ? 0 : str.hashCode()) * 31);
    }

    public String toString() {
        return "AppSetId(id=" + this.f17648a + ", scope=" + this.f17649b + ')';
    }
}
