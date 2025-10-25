package io.appmetrica.analytics.impl;
/* loaded from: classes2.dex */
public final class F2 {

    /* renamed from: a  reason: collision with root package name */
    public final E2 f18197a;

    /* renamed from: b  reason: collision with root package name */
    public final Boolean f18198b;

    public F2(E2 e22, Boolean bool) {
        this.f18197a = e22;
        this.f18198b = bool;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || F2.class != obj.getClass()) {
            return false;
        }
        F2 f22 = (F2) obj;
        if (this.f18197a != f22.f18197a) {
            return false;
        }
        Boolean bool = this.f18198b;
        if (bool != null) {
            return bool.equals(f22.f18198b);
        }
        if (f22.f18198b == null) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i10;
        E2 e22 = this.f18197a;
        int i11 = 0;
        if (e22 != null) {
            i10 = e22.hashCode();
        } else {
            i10 = 0;
        }
        int i12 = i10 * 31;
        Boolean bool = this.f18198b;
        if (bool != null) {
            i11 = bool.hashCode();
        }
        return i12 + i11;
    }

    public final String toString() {
        return "BackgroundRestrictionsState{mAppStandByBucket=" + this.f18197a + ", mBackgroundRestricted=" + this.f18198b + '}';
    }
}
