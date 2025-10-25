package com.google.android.gms.internal.measurement;

import android.util.Log;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class h9 extends p9 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public h9(j9 j9Var, String str, Double d10, boolean z10) {
        super(j9Var, "measurement.test.double_flag", d10, true, null);
    }

    @Override // com.google.android.gms.internal.measurement.p9
    final /* synthetic */ Object a(Object obj) {
        if (obj instanceof Double) {
            return (Double) obj;
        }
        if (obj instanceof Float) {
            return Double.valueOf(((Float) obj).doubleValue());
        }
        if (obj instanceof String) {
            try {
                return Double.valueOf(Double.parseDouble((String) obj));
            } catch (NumberFormatException unused) {
            }
        }
        String str = this.f6661b;
        String obj2 = obj.toString();
        StringBuilder sb2 = new StringBuilder(str.length() + 27 + obj2.length());
        sb2.append("Invalid double value for ");
        sb2.append(str);
        sb2.append(": ");
        sb2.append(obj2);
        Log.e("PhenotypeFlag", sb2.toString());
        return null;
    }
}
