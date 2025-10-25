package com.google.android.gms.internal.play_billing;
/* loaded from: classes.dex */
public enum d5 implements d2 {
    BROADCAST_ACTION_UNSPECIFIED(0),
    PURCHASES_UPDATED_ACTION(1),
    LOCAL_PURCHASES_UPDATED_ACTION(2),
    ALTERNATIVE_BILLING_ACTION(3);
    

    /* renamed from: f  reason: collision with root package name */
    private static final e2 f6968f = new e2() { // from class: com.google.android.gms.internal.play_billing.b5
    };

    /* renamed from: a  reason: collision with root package name */
    private final int f6970a;

    d5(int i10) {
        this.f6970a = i10;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return Integer.toString(this.f6970a);
    }

    public final int zza() {
        return this.f6970a;
    }
}
