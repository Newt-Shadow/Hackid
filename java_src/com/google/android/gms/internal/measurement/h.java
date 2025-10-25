package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public final class h implements p {

    /* renamed from: a  reason: collision with root package name */
    private final p f6416a;

    /* renamed from: b  reason: collision with root package name */
    private final String f6417b;

    public h(String str) {
        this.f6416a = p.f6622j0;
        this.f6417b = str;
    }

    public final p a() {
        return this.f6416a;
    }

    public final String b() {
        return this.f6417b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        if (this.f6417b.equals(hVar.f6417b) && this.f6416a.equals(hVar.f6416a)) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final String f() {
        throw new IllegalStateException("Control is not a String");
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final Double g() {
        throw new IllegalStateException("Control is not a double");
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final Boolean h() {
        throw new IllegalStateException("Control is not a boolean");
    }

    public final int hashCode() {
        return (this.f6417b.hashCode() * 31) + this.f6416a.hashCode();
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final Iterator i() {
        return null;
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final p r() {
        return new h(this.f6417b, this.f6416a.r());
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final p s(String str, z4 z4Var, List list) {
        throw new IllegalStateException("Control does not have functions");
    }

    public h(String str, p pVar) {
        this.f6416a = pVar;
        this.f6417b = str;
    }
}
