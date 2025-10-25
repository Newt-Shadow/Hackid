package com.google.android.gms.common.util;
/* loaded from: classes.dex */
public abstract class b {
    public static boolean a(int[] iArr, int i10) {
        if (iArr != null) {
            for (int i11 : iArr) {
                if (i11 == i10) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean b(Object[] objArr, Object obj) {
        int i10;
        if (objArr != null) {
            i10 = objArr.length;
        } else {
            i10 = 0;
        }
        int i11 = 0;
        while (true) {
            if (i11 >= i10) {
                break;
            } else if (n5.o.a(objArr[i11], obj)) {
                if (i11 >= 0) {
                    return true;
                }
            } else {
                i11++;
            }
        }
        return false;
    }
}
