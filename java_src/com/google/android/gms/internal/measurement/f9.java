package com.google.android.gms.internal.measurement;

import android.util.Log;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class f9 extends p9 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public f9(j9 j9Var, String str, Long l10, boolean z10) {
        super(j9Var, str, l10, true, null);
    }

    @Override // com.google.android.gms.internal.measurement.p9
    final /* synthetic */ Object a(Object obj) {
        if (obj instanceof Long) {
            return (Long) obj;
        }
        if (obj instanceof String) {
            try {
                return Long.valueOf(Long.parseLong((String) obj));
            } catch (NumberFormatException unused) {
            }
        }
        String str = this.f6661b;
        String obj2 = obj.toString();
        StringBuilder sb2 = new StringBuilder(str.length() + 25 + obj2.length());
        sb2.append("Invalid long value for ");
        sb2.append(str);
        sb2.append(": ");
        sb2.append(obj2);
        Log.e("PhenotypeFlag", sb2.toString());
        return null;
    }
}
