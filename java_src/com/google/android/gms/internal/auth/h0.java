package com.google.android.gms.internal.auth;

import android.util.Base64;
import android.util.Log;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class h0 extends m0 {

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ n4 f6019l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h0(i0 i0Var, String str, Object obj, boolean z10, n4 n4Var) {
        super(i0Var, "getTokenRefactor__blocked_packages", obj, true, null);
        this.f6019l = n4Var;
    }

    @Override // com.google.android.gms.internal.auth.m0
    final Object a(Object obj) {
        try {
            return h4.r(Base64.decode((String) obj, 3));
        } catch (IOException | IllegalArgumentException unused) {
            String str = this.f6109b;
            Log.e("PhenotypeFlag", "Invalid byte[] value for " + str + ": " + ((String) obj));
            return null;
        }
    }
}
