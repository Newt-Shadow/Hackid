package com.google.android.gms.internal.auth;

import android.util.Log;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class g0 extends m0 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public g0(i0 i0Var, String str, Double d10, boolean z10) {
        super(i0Var, str, d10, true, null);
    }

    @Override // com.google.android.gms.internal.auth.m0
    final /* synthetic */ Object a(Object obj) {
        try {
            return Double.valueOf(Double.parseDouble((String) obj));
        } catch (NumberFormatException unused) {
            String str = this.f6109b;
            Log.e("PhenotypeFlag", "Invalid double value for " + str + ": " + ((String) obj));
            return null;
        }
    }
}
