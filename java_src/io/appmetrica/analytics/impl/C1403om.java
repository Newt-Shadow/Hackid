package io.appmetrica.analytics.impl;
/* renamed from: io.appmetrica.analytics.impl.om  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1403om {

    /* renamed from: a  reason: collision with root package name */
    public final int f20316a;

    public C1403om(int i10) {
        this.f20316a = i10;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C1403om) && this.f20316a == ((C1403om) obj).f20316a;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f20316a);
    }

    public final String toString() {
        return "StartupUpdateConfig(intervalSeconds=" + this.f20316a + ')';
    }
}
