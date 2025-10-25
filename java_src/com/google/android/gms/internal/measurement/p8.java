package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.os.UserManager;
/* loaded from: classes.dex */
public abstract class p8 {

    /* renamed from: a  reason: collision with root package name */
    private static UserManager f6654a;

    /* renamed from: b  reason: collision with root package name */
    private static volatile boolean f6655b = !a();

    public static boolean a() {
        return true;
    }

    public static boolean b(Context context) {
        if (a() && !d(context)) {
            return true;
        }
        return false;
    }

    public static boolean c(Context context) {
        if (a() && !d(context)) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0037, code lost:
        if (r3.isUserRunning(android.os.Process.myUserHandle()) == false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0039, code lost:
        r5 = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean d(android.content.Context r7) {
        /*
            boolean r0 = com.google.android.gms.internal.measurement.p8.f6655b
            r1 = 1
            if (r0 == 0) goto L6
            return r1
        L6:
            java.lang.Class<com.google.android.gms.internal.measurement.p8> r0 = com.google.android.gms.internal.measurement.p8.class
            monitor-enter(r0)
            boolean r2 = com.google.android.gms.internal.measurement.p8.f6655b     // Catch: java.lang.Throwable -> L52
            if (r2 == 0) goto Lf
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L52
            return r1
        Lf:
            r2 = r1
        L10:
            r3 = 2
            r4 = 0
            r5 = 0
            if (r2 > r3) goto L48
            android.os.UserManager r3 = com.google.android.gms.internal.measurement.p8.f6654a     // Catch: java.lang.Throwable -> L52
            if (r3 != 0) goto L23
            java.lang.Class<android.os.UserManager> r3 = android.os.UserManager.class
            java.lang.Object r3 = r7.getSystemService(r3)     // Catch: java.lang.Throwable -> L52
            android.os.UserManager r3 = (android.os.UserManager) r3     // Catch: java.lang.Throwable -> L52
            com.google.android.gms.internal.measurement.p8.f6654a = r3     // Catch: java.lang.Throwable -> L52
        L23:
            android.os.UserManager r3 = com.google.android.gms.internal.measurement.p8.f6654a     // Catch: java.lang.Throwable -> L52
            if (r3 != 0) goto L29
            r5 = r1
            goto L4c
        L29:
            boolean r6 = r3.isUserUnlocked()     // Catch: java.lang.NullPointerException -> L3b java.lang.Throwable -> L52
            if (r6 != 0) goto L39
            android.os.UserHandle r6 = android.os.Process.myUserHandle()     // Catch: java.lang.NullPointerException -> L3b java.lang.Throwable -> L52
            boolean r7 = r3.isUserRunning(r6)     // Catch: java.lang.NullPointerException -> L3b java.lang.Throwable -> L52
            if (r7 != 0) goto L48
        L39:
            r5 = r1
            goto L48
        L3b:
            r3 = move-exception
            java.lang.String r5 = "DirectBootUtils"
            java.lang.String r6 = "Failed to check if user is unlocked."
            android.util.Log.w(r5, r6, r3)     // Catch: java.lang.Throwable -> L52
            com.google.android.gms.internal.measurement.p8.f6654a = r4     // Catch: java.lang.Throwable -> L52
            int r2 = r2 + 1
            goto L10
        L48:
            if (r5 == 0) goto L4c
            com.google.android.gms.internal.measurement.p8.f6654a = r4     // Catch: java.lang.Throwable -> L52
        L4c:
            if (r5 == 0) goto L50
            com.google.android.gms.internal.measurement.p8.f6655b = r1     // Catch: java.lang.Throwable -> L52
        L50:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L52
            return r5
        L52:
            r7 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L52
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.p8.d(android.content.Context):boolean");
    }
}
