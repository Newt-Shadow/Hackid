package com.google.android.gms.common.util;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Process;
import android.os.WorkSource;
import android.util.Log;
import java.lang.reflect.Method;
/* loaded from: classes.dex */
public abstract class q {

    /* renamed from: a  reason: collision with root package name */
    private static final int f5925a = Process.myUid();

    /* renamed from: b  reason: collision with root package name */
    private static final Method f5926b;

    /* renamed from: c  reason: collision with root package name */
    private static final Method f5927c;

    /* renamed from: d  reason: collision with root package name */
    private static final Method f5928d;

    /* renamed from: e  reason: collision with root package name */
    private static final Method f5929e;

    /* renamed from: f  reason: collision with root package name */
    private static final Method f5930f;

    /* renamed from: g  reason: collision with root package name */
    private static final Method f5931g;

    /* renamed from: h  reason: collision with root package name */
    private static final Method f5932h;

    /* renamed from: i  reason: collision with root package name */
    private static final Method f5933i;

    /* renamed from: j  reason: collision with root package name */
    private static Boolean f5934j;

    /* JADX WARN: Removed duplicated region for block: B:46:0x007a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x009e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    static {
        /*
            java.lang.Class<java.lang.String> r0 = java.lang.String.class
            java.lang.String r1 = "add"
            java.lang.Class<android.os.WorkSource> r2 = android.os.WorkSource.class
            int r3 = android.os.Process.myUid()
            com.google.android.gms.common.util.q.f5925a = r3
            r3 = 1
            r4 = 0
            r5 = 0
            java.lang.Class[] r6 = new java.lang.Class[r3]     // Catch: java.lang.Exception -> L1a
            java.lang.Class r7 = java.lang.Integer.TYPE     // Catch: java.lang.Exception -> L1a
            r6[r4] = r7     // Catch: java.lang.Exception -> L1a
            java.lang.reflect.Method r6 = r2.getMethod(r1, r6)     // Catch: java.lang.Exception -> L1a
            goto L1b
        L1a:
            r6 = r5
        L1b:
            com.google.android.gms.common.util.q.f5926b = r6
            r6 = 2
            java.lang.Class[] r7 = new java.lang.Class[r6]     // Catch: java.lang.Exception -> L2b
            java.lang.Class r8 = java.lang.Integer.TYPE     // Catch: java.lang.Exception -> L2b
            r7[r4] = r8     // Catch: java.lang.Exception -> L2b
            r7[r3] = r0     // Catch: java.lang.Exception -> L2b
            java.lang.reflect.Method r1 = r2.getMethod(r1, r7)     // Catch: java.lang.Exception -> L2b
            goto L2c
        L2b:
            r1 = r5
        L2c:
            com.google.android.gms.common.util.q.f5927c = r1
            java.lang.String r1 = "size"
            java.lang.Class[] r7 = new java.lang.Class[r4]     // Catch: java.lang.Exception -> L37
            java.lang.reflect.Method r1 = r2.getMethod(r1, r7)     // Catch: java.lang.Exception -> L37
            goto L38
        L37:
            r1 = r5
        L38:
            com.google.android.gms.common.util.q.f5928d = r1
            java.lang.String r1 = "get"
            java.lang.Class[] r7 = new java.lang.Class[r3]     // Catch: java.lang.Exception -> L47
            java.lang.Class r8 = java.lang.Integer.TYPE     // Catch: java.lang.Exception -> L47
            r7[r4] = r8     // Catch: java.lang.Exception -> L47
            java.lang.reflect.Method r1 = r2.getMethod(r1, r7)     // Catch: java.lang.Exception -> L47
            goto L48
        L47:
            r1 = r5
        L48:
            com.google.android.gms.common.util.q.f5929e = r1
            java.lang.String r1 = "getName"
            java.lang.Class[] r7 = new java.lang.Class[r3]     // Catch: java.lang.Exception -> L57
            java.lang.Class r8 = java.lang.Integer.TYPE     // Catch: java.lang.Exception -> L57
            r7[r4] = r8     // Catch: java.lang.Exception -> L57
            java.lang.reflect.Method r1 = r2.getMethod(r1, r7)     // Catch: java.lang.Exception -> L57
            goto L58
        L57:
            r1 = r5
        L58:
            com.google.android.gms.common.util.q.f5930f = r1
            boolean r1 = com.google.android.gms.common.util.k.f()
            java.lang.String r7 = "WorkSourceUtil"
            if (r1 == 0) goto L71
            java.lang.String r1 = "createWorkChain"
            java.lang.Class[] r8 = new java.lang.Class[r4]     // Catch: java.lang.Exception -> L6b
            java.lang.reflect.Method r1 = r2.getMethod(r1, r8)     // Catch: java.lang.Exception -> L6b
            goto L72
        L6b:
            r1 = move-exception
            java.lang.String r8 = "Missing WorkChain API createWorkChain"
            android.util.Log.w(r7, r8, r1)
        L71:
            r1 = r5
        L72:
            com.google.android.gms.common.util.q.f5931g = r1
            boolean r1 = com.google.android.gms.common.util.k.f()
            if (r1 == 0) goto L95
            java.lang.String r1 = "android.os.WorkSource$WorkChain"
            java.lang.Class r1 = java.lang.Class.forName(r1)     // Catch: java.lang.Exception -> L8f
            java.lang.String r8 = "addNode"
            java.lang.Class[] r6 = new java.lang.Class[r6]     // Catch: java.lang.Exception -> L8f
            java.lang.Class r9 = java.lang.Integer.TYPE     // Catch: java.lang.Exception -> L8f
            r6[r4] = r9     // Catch: java.lang.Exception -> L8f
            r6[r3] = r0     // Catch: java.lang.Exception -> L8f
            java.lang.reflect.Method r0 = r1.getMethod(r8, r6)     // Catch: java.lang.Exception -> L8f
            goto L96
        L8f:
            r0 = move-exception
            java.lang.String r1 = "Missing WorkChain class"
            android.util.Log.w(r7, r1, r0)
        L95:
            r0 = r5
        L96:
            com.google.android.gms.common.util.q.f5932h = r0
            boolean r0 = com.google.android.gms.common.util.k.f()
            if (r0 == 0) goto Laa
            java.lang.String r0 = "isEmpty"
            java.lang.Class[] r1 = new java.lang.Class[r4]     // Catch: java.lang.Exception -> Laa
            java.lang.reflect.Method r0 = r2.getMethod(r0, r1)     // Catch: java.lang.Exception -> Laa
            r0.setAccessible(r3)     // Catch: java.lang.Exception -> Lab
            goto Lab
        Laa:
            r0 = r5
        Lab:
            com.google.android.gms.common.util.q.f5933i = r0
            com.google.android.gms.common.util.q.f5934j = r5
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.util.q.<clinit>():void");
    }

    public static void a(WorkSource workSource, int i10, String str) {
        Method method = f5927c;
        if (method != null) {
            if (str == null) {
                str = "";
            }
            try {
                method.invoke(workSource, Integer.valueOf(i10), str);
                return;
            } catch (Exception e10) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e10);
                return;
            }
        }
        Method method2 = f5926b;
        if (method2 != null) {
            try {
                method2.invoke(workSource, Integer.valueOf(i10));
            } catch (Exception e11) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e11);
            }
        }
    }

    public static WorkSource b(Context context, String str) {
        if (context != null && context.getPackageManager() != null && str != null) {
            try {
                ApplicationInfo c10 = t5.e.a(context).c(str, 0);
                if (c10 == null) {
                    Log.e("WorkSourceUtil", "Could not get applicationInfo from package: ".concat(str));
                    return null;
                }
                int i10 = c10.uid;
                WorkSource workSource = new WorkSource();
                a(workSource, i10, str);
                return workSource;
            } catch (PackageManager.NameNotFoundException unused) {
                Log.e("WorkSourceUtil", "Could not find package: ".concat(str));
            }
        }
        return null;
    }

    public static synchronized boolean c(Context context) {
        synchronized (q.class) {
            Boolean bool = f5934j;
            if (bool != null) {
                return bool.booleanValue();
            }
            boolean z10 = false;
            if (context == null) {
                return false;
            }
            if (androidx.core.content.a.a(context, "android.permission.UPDATE_DEVICE_STATS") == 0) {
                z10 = true;
            }
            Boolean valueOf = Boolean.valueOf(z10);
            f5934j = valueOf;
            return valueOf.booleanValue();
        }
    }
}
