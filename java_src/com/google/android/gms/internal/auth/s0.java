package com.google.android.gms.internal.auth;
/* loaded from: classes.dex */
final class s0 extends r0 {

    /* renamed from: a  reason: collision with root package name */
    private final Object f6166a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s0(Object obj) {
        this.f6166a = obj;
    }

    @Override // com.google.android.gms.internal.auth.r0
    public final Object a() {
        return this.f6166a;
    }

    @Override // com.google.android.gms.internal.auth.r0
    public final boolean b() {
        return true;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof s0) {
            return this.f6166a.equals(((s0) obj).f6166a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f6166a.hashCode() + 1502476572;
    }

    public final String toString() {
        String obj = this.f6166a.toString();
        return "Optional.of(" + obj + ")";
    }
}
