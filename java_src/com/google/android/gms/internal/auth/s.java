package com.google.android.gms.internal.auth;

import android.os.Binder;
/* loaded from: classes.dex */
public abstract /* synthetic */ class s {
    public static Object a(t tVar) {
        try {
            return tVar.zza();
        } catch (SecurityException unused) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                return tVar.zza();
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
    }
}
