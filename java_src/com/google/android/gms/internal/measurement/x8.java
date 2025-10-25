package com.google.android.gms.internal.measurement;

import android.os.Binder;
/* loaded from: classes.dex */
interface x8 {
    static Object b(w8 w8Var) {
        try {
            return w8Var.zza();
        } catch (SecurityException unused) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                return w8Var.zza();
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
    }

    Object a(String str);
}
