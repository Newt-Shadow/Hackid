package io.appmetrica.analytics.identifiers.impl;

import io.appmetrica.analytics.coreapi.internal.identifiers.IdentifierStatus;
/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public final IdentifierStatus f17895a;

    /* renamed from: b  reason: collision with root package name */
    public final a f17896b;

    /* renamed from: c  reason: collision with root package name */
    public final String f17897c;

    public c(IdentifierStatus identifierStatus, a aVar, String str) {
        this.f17895a = identifierStatus;
        this.f17896b = aVar;
        this.f17897c = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof c) {
            c cVar = (c) obj;
            return this.f17895a == cVar.f17895a && kotlin.jvm.internal.m.a(this.f17896b, cVar.f17896b) && kotlin.jvm.internal.m.a(this.f17897c, cVar.f17897c);
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = this.f17895a.hashCode() * 31;
        a aVar = this.f17896b;
        int hashCode2 = (hashCode + (aVar == null ? 0 : aVar.hashCode())) * 31;
        String str = this.f17897c;
        return hashCode2 + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        return "AdvIdResult(status=" + this.f17895a + ", advIdInfo=" + this.f17896b + ", errorExplanation=" + this.f17897c + ')';
    }

    public /* synthetic */ c(IdentifierStatus identifierStatus, a aVar, String str, int i10) {
        this(identifierStatus, (i10 & 2) != 0 ? null : aVar, (i10 & 4) != 0 ? null : str);
    }
}
