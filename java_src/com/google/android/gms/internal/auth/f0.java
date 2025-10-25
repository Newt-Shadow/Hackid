package com.google.android.gms.internal.auth;

import android.util.Log;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class f0 extends m0 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public f0(i0 i0Var, String str, Boolean bool, boolean z10) {
        super(i0Var, str, bool, true, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.auth.m0
    final /* synthetic */ Object a(Object obj) {
        if (l.f6087c.matcher(obj).matches()) {
            return Boolean.TRUE;
        }
        if (l.f6088d.matcher(obj).matches()) {
            return Boolean.FALSE;
        }
        String str = this.f6109b;
        Log.e("PhenotypeFlag", "Invalid boolean value for " + str + ": " + ((String) obj));
        return null;
    }
}
