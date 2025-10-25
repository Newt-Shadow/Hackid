package com.google.android.gms.internal.play_billing;

import java.util.Set;
/* loaded from: classes.dex */
public abstract class w {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(Set set) {
        int i10;
        int i11 = 0;
        for (Object obj : set) {
            if (obj != null) {
                i10 = obj.hashCode();
            } else {
                i10 = 0;
            }
            i11 += i10;
        }
        return i11;
    }
}
