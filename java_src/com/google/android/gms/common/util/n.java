package com.google.android.gms.common.util;

import android.app.Application;
import android.os.Build;
import android.os.Process;
import android.os.StrictMode;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
/* loaded from: classes.dex */
public abstract class n {

    /* renamed from: a  reason: collision with root package name */
    private static String f5921a;

    /* renamed from: b  reason: collision with root package name */
    private static int f5922b;

    /* renamed from: c  reason: collision with root package name */
    private static Boolean f5923c;

    public static String a() {
        BufferedReader bufferedReader;
        String processName;
        if (f5921a == null) {
            if (Build.VERSION.SDK_INT >= 28) {
                processName = Application.getProcessName();
                f5921a = processName;
            } else {
                int i10 = f5922b;
                if (i10 == 0) {
                    i10 = Process.myPid();
                    f5922b = i10;
                }
                String str = null;
                str = null;
                str = null;
                BufferedReader bufferedReader2 = null;
                if (i10 > 0) {
                    try {
                        String str2 = "/proc/" + i10 + "/cmdline";
                        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
                        try {
                            bufferedReader = new BufferedReader(new FileReader(str2));
                            try {
                                String readLine = bufferedReader.readLine();
                                n5.q.k(readLine);
                                str = readLine.trim();
                            } catch (IOException unused) {
                            } catch (Throwable th) {
                                th = th;
                                bufferedReader2 = bufferedReader;
                                j.a(bufferedReader2);
                                throw th;
                            }
                        } finally {
                            StrictMode.setThreadPolicy(allowThreadDiskReads);
                        }
                    } catch (IOException unused2) {
                        bufferedReader = null;
                    } catch (Throwable th2) {
                        th = th2;
                    }
                    j.a(bufferedReader);
                }
                f5921a = str;
            }
        }
        return f5921a;
    }

    public static boolean b() {
        boolean isIsolated;
        Boolean bool = f5923c;
        if (bool == null) {
            if (k.f()) {
                isIsolated = Process.isIsolated();
                bool = Boolean.valueOf(isIsolated);
            } else {
                try {
                    Object a10 = c6.h.a(Process.class, "isIsolated", new c6.g[0]);
                    Object[] objArr = new Object[0];
                    if (a10 != null) {
                        bool = (Boolean) a10;
                    } else {
                        throw new c6.c(c6.b.a("expected a non-null reference", objArr));
                    }
                } catch (ReflectiveOperationException unused) {
                    bool = Boolean.FALSE;
                }
            }
            f5923c = bool;
        }
        return bool.booleanValue();
    }
}
