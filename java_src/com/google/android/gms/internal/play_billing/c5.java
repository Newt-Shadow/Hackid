package com.google.android.gms.internal.play_billing;
/* loaded from: classes.dex */
final class c5 implements f2 {

    /* renamed from: a  reason: collision with root package name */
    static final f2 f6960a = new c5();

    private c5() {
    }

    @Override // com.google.android.gms.internal.play_billing.f2
    public final boolean a(int i10) {
        d5 d5Var;
        d5 d5Var2 = d5.BROADCAST_ACTION_UNSPECIFIED;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        d5Var = null;
                    } else {
                        d5Var = d5.ALTERNATIVE_BILLING_ACTION;
                    }
                } else {
                    d5Var = d5.LOCAL_PURCHASES_UPDATED_ACTION;
                }
            } else {
                d5Var = d5.PURCHASES_UPDATED_ACTION;
            }
        } else {
            d5Var = d5.BROADCAST_ACTION_UNSPECIFIED;
        }
        if (d5Var != null) {
            return true;
        }
        return false;
    }
}
