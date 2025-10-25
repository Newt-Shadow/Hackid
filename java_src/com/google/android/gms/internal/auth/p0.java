package com.google.android.gms.internal.auth;
/* loaded from: classes.dex */
final class p0 extends r0 {

    /* renamed from: a  reason: collision with root package name */
    static final p0 f6139a = new p0();

    private p0() {
    }

    @Override // com.google.android.gms.internal.auth.r0
    public final Object a() {
        throw new IllegalStateException("Optional.get() cannot be called on an absent value");
    }

    @Override // com.google.android.gms.internal.auth.r0
    public final boolean b() {
        return false;
    }

    public final boolean equals(Object obj) {
        return obj == this;
    }

    public final int hashCode() {
        return 2040732332;
    }

    public final String toString() {
        return "Optional.absent()";
    }
}
