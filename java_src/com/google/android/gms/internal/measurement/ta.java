package com.google.android.gms.internal.measurement;
/* loaded from: classes.dex */
final class ta {

    /* renamed from: a  reason: collision with root package name */
    private final Object f6811a;

    /* renamed from: b  reason: collision with root package name */
    private final int f6812b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ta(Object obj, int i10) {
        this.f6811a = obj;
        this.f6812b = i10;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ta)) {
            return false;
        }
        ta taVar = (ta) obj;
        if (this.f6811a != taVar.f6811a || this.f6812b != taVar.f6812b) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return (System.identityHashCode(this.f6811a) * 65535) + this.f6812b;
    }
}
