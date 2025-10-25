package com.google.android.gms.internal.measurement;

import android.util.Log;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class g9 extends p9 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public g9(j9 j9Var, String str, Boolean bool, boolean z10) {
        super(j9Var, str, bool, true, null);
    }

    @Override // com.google.android.gms.internal.measurement.p9
    final /* synthetic */ Object a(Object obj) {
        if (obj instanceof Boolean) {
            return (Boolean) obj;
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (j8.f6451c.matcher(str).matches()) {
                return Boolean.TRUE;
            }
            if (j8.f6452d.matcher(str).matches()) {
                return Boolean.FALSE;
            }
        }
        String str2 = this.f6661b;
        String obj2 = obj.toString();
        StringBuilder sb2 = new StringBuilder(str2.length() + 28 + obj2.length());
        sb2.append("Invalid boolean value for ");
        sb2.append(str2);
        sb2.append(": ");
        sb2.append(obj2);
        Log.e("PhenotypeFlag", sb2.toString());
        return null;
    }
}
