package com.android.billingclient.api;

import android.content.Context;
/* loaded from: classes.dex */
abstract class z0 {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f5500a = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized boolean a(Context context) {
        synchronized (z0.class) {
            if (f5500a) {
                return false;
            }
            f5500a = true;
            return false;
        }
    }
}
