package com.google.android.gms.internal.measurement;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.os.UserHandle;
import android.util.Log;
import java.lang.reflect.Method;
/* loaded from: classes.dex */
public abstract class k1 {

    /* renamed from: a  reason: collision with root package name */
    private static final Method f6463a;

    /* renamed from: b  reason: collision with root package name */
    private static final Method f6464b;

    static {
        Method method;
        Method method2 = null;
        try {
            method = JobScheduler.class.getDeclaredMethod("scheduleAsPackage", JobInfo.class, String.class, Integer.TYPE, String.class);
        } catch (NoSuchMethodException unused) {
            if (Log.isLoggable("JobSchedulerCompat", 6)) {
                Log.e("JobSchedulerCompat", "No scheduleAsPackage method available, falling back to schedule");
            }
            method = null;
        }
        f6463a = method;
        try {
            method2 = UserHandle.class.getDeclaredMethod("myUserId", new Class[0]);
        } catch (NoSuchMethodException unused2) {
            if (Log.isLoggable("JobSchedulerCompat", 6)) {
                Log.e("JobSchedulerCompat", "No myUserId method available");
            }
        }
        f6464b = method2;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x004b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int a(android.content.Context r5, android.app.job.JobInfo r6, java.lang.String r7, java.lang.String r8) {
        /*
            java.lang.String r7 = "jobscheduler"
            java.lang.Object r7 = r5.getSystemService(r7)
            android.app.job.JobScheduler r7 = (android.app.job.JobScheduler) r7
            java.lang.Object r7 = n6.m.i(r7)
            android.app.job.JobScheduler r7 = (android.app.job.JobScheduler) r7
            java.lang.reflect.Method r8 = com.google.android.gms.internal.measurement.k1.f6463a
            if (r8 == 0) goto L77
            java.lang.String r8 = "android.permission.UPDATE_DEVICE_STATS"
            int r5 = r5.checkSelfPermission(r8)
            if (r5 == 0) goto L1b
            goto L77
        L1b:
            java.lang.reflect.Method r5 = com.google.android.gms.internal.measurement.k1.f6464b
            r8 = 0
            if (r5 == 0) goto L42
            java.lang.Class<android.os.UserHandle> r0 = android.os.UserHandle.class
            java.lang.Object[] r1 = new java.lang.Object[r8]     // Catch: java.lang.reflect.InvocationTargetException -> L31 java.lang.IllegalAccessException -> L33
            java.lang.Object r5 = r5.invoke(r0, r1)     // Catch: java.lang.reflect.InvocationTargetException -> L31 java.lang.IllegalAccessException -> L33
            java.lang.Integer r5 = (java.lang.Integer) r5     // Catch: java.lang.reflect.InvocationTargetException -> L31 java.lang.IllegalAccessException -> L33
            if (r5 == 0) goto L42
            int r5 = r5.intValue()     // Catch: java.lang.reflect.InvocationTargetException -> L31 java.lang.IllegalAccessException -> L33
            goto L43
        L31:
            r5 = move-exception
            goto L34
        L33:
            r5 = move-exception
        L34:
            r0 = 6
            java.lang.String r1 = "JobSchedulerCompat"
            boolean r0 = android.util.Log.isLoggable(r1, r0)
            if (r0 == 0) goto L42
            java.lang.String r0 = "myUserId invocation illegal"
            android.util.Log.e(r1, r0, r5)
        L42:
            r5 = r8
        L43:
            java.lang.String r0 = "UploadAlarm"
            java.lang.String r1 = "com.google.android.gms"
            java.lang.reflect.Method r2 = com.google.android.gms.internal.measurement.k1.f6463a
            if (r2 == 0) goto L72
            r3 = 4
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch: java.lang.reflect.InvocationTargetException -> L6a java.lang.IllegalAccessException -> L6c
            r3[r8] = r6     // Catch: java.lang.reflect.InvocationTargetException -> L6a java.lang.IllegalAccessException -> L6c
            r4 = 1
            r3[r4] = r1     // Catch: java.lang.reflect.InvocationTargetException -> L6a java.lang.IllegalAccessException -> L6c
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)     // Catch: java.lang.reflect.InvocationTargetException -> L6a java.lang.IllegalAccessException -> L6c
            r1 = 2
            r3[r1] = r5     // Catch: java.lang.reflect.InvocationTargetException -> L6a java.lang.IllegalAccessException -> L6c
            r5 = 3
            r3[r5] = r0     // Catch: java.lang.reflect.InvocationTargetException -> L6a java.lang.IllegalAccessException -> L6c
            java.lang.Object r5 = r2.invoke(r7, r3)     // Catch: java.lang.reflect.InvocationTargetException -> L6a java.lang.IllegalAccessException -> L6c
            java.lang.Integer r5 = (java.lang.Integer) r5     // Catch: java.lang.reflect.InvocationTargetException -> L6a java.lang.IllegalAccessException -> L6c
            if (r5 == 0) goto L76
            int r8 = r5.intValue()     // Catch: java.lang.reflect.InvocationTargetException -> L6a java.lang.IllegalAccessException -> L6c
            goto L76
        L6a:
            r5 = move-exception
            goto L6d
        L6c:
            r5 = move-exception
        L6d:
            java.lang.String r8 = "error calling scheduleAsPackage"
            android.util.Log.e(r0, r8, r5)
        L72:
            int r8 = r7.schedule(r6)
        L76:
            return r8
        L77:
            int r5 = r7.schedule(r6)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.k1.a(android.content.Context, android.app.job.JobInfo, java.lang.String, java.lang.String):int");
    }
}
