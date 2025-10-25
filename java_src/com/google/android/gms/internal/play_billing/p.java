package com.google.android.gms.internal.play_billing;
/* loaded from: classes.dex */
public abstract class p {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object[] a(Object[] objArr, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            if (objArr[i11] == null) {
                throw new NullPointerException("at index " + i11);
            }
        }
        return objArr;
    }
}
