package com.google.android.gms.internal.play_billing;
/* loaded from: classes.dex */
final class p1 {

    /* renamed from: a  reason: collision with root package name */
    private final Object f7085a;

    /* renamed from: b  reason: collision with root package name */
    private final int f7086b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p1(Object obj, int i10) {
        this.f7085a = obj;
        this.f7086b = i10;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof p1)) {
            return false;
        }
        p1 p1Var = (p1) obj;
        if (this.f7085a != p1Var.f7085a || this.f7086b != p1Var.f7086b) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return (System.identityHashCode(this.f7085a) * 65535) + this.f7086b;
    }
}
