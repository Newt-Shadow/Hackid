package com.google.android.gms.internal.measurement;
/* loaded from: classes.dex */
public enum t9 implements jb {
    PURPOSE_RESTRICTION_NOT_ALLOWED(0),
    PURPOSE_RESTRICTION_REQUIRE_CONSENT(1),
    PURPOSE_RESTRICTION_REQUIRE_LEGITIMATE_INTEREST(2),
    PURPOSE_RESTRICTION_UNDEFINED(3),
    UNRECOGNIZED(-1);
    

    /* renamed from: a  reason: collision with root package name */
    private final int f6810a;

    t9(int i10) {
        this.f6810a = i10;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return Integer.toString(this.f6810a);
    }

    @Override // com.google.android.gms.internal.measurement.jb
    public final int zza() {
        if (this != UNRECOGNIZED) {
            return this.f6810a;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
