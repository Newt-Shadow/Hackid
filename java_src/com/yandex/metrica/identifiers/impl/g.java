package com.yandex.metrica.identifiers.impl;

import android.os.Bundle;
/* loaded from: classes.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    private final l f9667a;

    /* renamed from: b  reason: collision with root package name */
    private final f f9668b;

    /* renamed from: c  reason: collision with root package name */
    private final String f9669c;

    public g(l status, f fVar, String str) {
        kotlin.jvm.internal.m.e(status, "status");
        this.f9667a = status;
        this.f9668b = fVar;
        this.f9669c = str;
    }

    public final Bundle a() {
        Bundle bundle = new Bundle();
        f fVar = this.f9668b;
        if (fVar != null) {
            bundle.putBundle("com.yandex.metrica.identifiers.extra.TRACKING_INFO", fVar.a());
        }
        bundle.putString("com.yandex.metrica.identifiers.extra.STATUS", this.f9667a.a());
        bundle.putString("com.yandex.metrica.identifiers.extra.ERROR_MESSAGE", this.f9669c);
        return bundle;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof g) {
                g gVar = (g) obj;
                return kotlin.jvm.internal.m.a(this.f9667a, gVar.f9667a) && kotlin.jvm.internal.m.a(this.f9668b, gVar.f9668b) && kotlin.jvm.internal.m.a(this.f9669c, gVar.f9669c);
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        l lVar = this.f9667a;
        int hashCode = (lVar != null ? lVar.hashCode() : 0) * 31;
        f fVar = this.f9668b;
        int hashCode2 = (hashCode + (fVar != null ? fVar.hashCode() : 0)) * 31;
        String str = this.f9669c;
        return hashCode2 + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        return "AdsIdResult(status=" + this.f9667a + ", adsIdInfo=" + this.f9668b + ", errorExplanation=" + this.f9669c + ")";
    }

    public /* synthetic */ g(l lVar, f fVar, String str, int i10) {
        this(lVar, (i10 & 2) != 0 ? null : fVar, (i10 & 4) != 0 ? null : str);
    }
}
