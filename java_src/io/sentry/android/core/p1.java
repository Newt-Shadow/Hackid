package io.sentry.android.core;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Bundle;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.sentry.ILogger;
import io.sentry.j5;
import java.util.Arrays;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class p1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:26:0x01e5 A[Catch: all -> 0x03d1, TryCatch #0 {all -> 0x03d1, blocks: (B:3:0x000e, B:5:0x001d, B:7:0x0030, B:9:0x0046, B:10:0x0051, B:12:0x0079, B:14:0x0087, B:15:0x008a, B:18:0x00c9, B:22:0x00d2, B:24:0x00ed, B:26:0x01e5, B:27:0x01ef, B:29:0x01f5, B:31:0x0203, B:32:0x0206, B:34:0x0240, B:36:0x024e, B:37:0x0251, B:39:0x0277, B:40:0x027e, B:44:0x028c, B:46:0x0292, B:47:0x0296, B:49:0x029c, B:54:0x02ae, B:55:0x02b1, B:57:0x02ce, B:58:0x02d3, B:60:0x0305, B:61:0x0309, B:63:0x030f, B:64:0x031d, B:66:0x0375, B:68:0x0383, B:69:0x038a, B:71:0x0394, B:73:0x03a2, B:74:0x03a9, B:52:0x02a4, B:23:0x00e0, B:75:0x03c3), top: B:80:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x01f5 A[Catch: all -> 0x03d1, TryCatch #0 {all -> 0x03d1, blocks: (B:3:0x000e, B:5:0x001d, B:7:0x0030, B:9:0x0046, B:10:0x0051, B:12:0x0079, B:14:0x0087, B:15:0x008a, B:18:0x00c9, B:22:0x00d2, B:24:0x00ed, B:26:0x01e5, B:27:0x01ef, B:29:0x01f5, B:31:0x0203, B:32:0x0206, B:34:0x0240, B:36:0x024e, B:37:0x0251, B:39:0x0277, B:40:0x027e, B:44:0x028c, B:46:0x0292, B:47:0x0296, B:49:0x029c, B:54:0x02ae, B:55:0x02b1, B:57:0x02ce, B:58:0x02d3, B:60:0x0305, B:61:0x0309, B:63:0x030f, B:64:0x031d, B:66:0x0375, B:68:0x0383, B:69:0x038a, B:71:0x0394, B:73:0x03a2, B:74:0x03a9, B:52:0x02a4, B:23:0x00e0, B:75:0x03c3), top: B:80:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0240 A[Catch: all -> 0x03d1, TryCatch #0 {all -> 0x03d1, blocks: (B:3:0x000e, B:5:0x001d, B:7:0x0030, B:9:0x0046, B:10:0x0051, B:12:0x0079, B:14:0x0087, B:15:0x008a, B:18:0x00c9, B:22:0x00d2, B:24:0x00ed, B:26:0x01e5, B:27:0x01ef, B:29:0x01f5, B:31:0x0203, B:32:0x0206, B:34:0x0240, B:36:0x024e, B:37:0x0251, B:39:0x0277, B:40:0x027e, B:44:0x028c, B:46:0x0292, B:47:0x0296, B:49:0x029c, B:54:0x02ae, B:55:0x02b1, B:57:0x02ce, B:58:0x02d3, B:60:0x0305, B:61:0x0309, B:63:0x030f, B:64:0x031d, B:66:0x0375, B:68:0x0383, B:69:0x038a, B:71:0x0394, B:73:0x03a2, B:74:0x03a9, B:52:0x02a4, B:23:0x00e0, B:75:0x03c3), top: B:80:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0277 A[Catch: all -> 0x03d1, TryCatch #0 {all -> 0x03d1, blocks: (B:3:0x000e, B:5:0x001d, B:7:0x0030, B:9:0x0046, B:10:0x0051, B:12:0x0079, B:14:0x0087, B:15:0x008a, B:18:0x00c9, B:22:0x00d2, B:24:0x00ed, B:26:0x01e5, B:27:0x01ef, B:29:0x01f5, B:31:0x0203, B:32:0x0206, B:34:0x0240, B:36:0x024e, B:37:0x0251, B:39:0x0277, B:40:0x027e, B:44:0x028c, B:46:0x0292, B:47:0x0296, B:49:0x029c, B:54:0x02ae, B:55:0x02b1, B:57:0x02ce, B:58:0x02d3, B:60:0x0305, B:61:0x0309, B:63:0x030f, B:64:0x031d, B:66:0x0375, B:68:0x0383, B:69:0x038a, B:71:0x0394, B:73:0x03a2, B:74:0x03a9, B:52:0x02a4, B:23:0x00e0, B:75:0x03c3), top: B:80:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x02ce A[Catch: all -> 0x03d1, TryCatch #0 {all -> 0x03d1, blocks: (B:3:0x000e, B:5:0x001d, B:7:0x0030, B:9:0x0046, B:10:0x0051, B:12:0x0079, B:14:0x0087, B:15:0x008a, B:18:0x00c9, B:22:0x00d2, B:24:0x00ed, B:26:0x01e5, B:27:0x01ef, B:29:0x01f5, B:31:0x0203, B:32:0x0206, B:34:0x0240, B:36:0x024e, B:37:0x0251, B:39:0x0277, B:40:0x027e, B:44:0x028c, B:46:0x0292, B:47:0x0296, B:49:0x029c, B:54:0x02ae, B:55:0x02b1, B:57:0x02ce, B:58:0x02d3, B:60:0x0305, B:61:0x0309, B:63:0x030f, B:64:0x031d, B:66:0x0375, B:68:0x0383, B:69:0x038a, B:71:0x0394, B:73:0x03a2, B:74:0x03a9, B:52:0x02a4, B:23:0x00e0, B:75:0x03c3), top: B:80:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0305 A[Catch: all -> 0x03d1, TryCatch #0 {all -> 0x03d1, blocks: (B:3:0x000e, B:5:0x001d, B:7:0x0030, B:9:0x0046, B:10:0x0051, B:12:0x0079, B:14:0x0087, B:15:0x008a, B:18:0x00c9, B:22:0x00d2, B:24:0x00ed, B:26:0x01e5, B:27:0x01ef, B:29:0x01f5, B:31:0x0203, B:32:0x0206, B:34:0x0240, B:36:0x024e, B:37:0x0251, B:39:0x0277, B:40:0x027e, B:44:0x028c, B:46:0x0292, B:47:0x0296, B:49:0x029c, B:54:0x02ae, B:55:0x02b1, B:57:0x02ce, B:58:0x02d3, B:60:0x0305, B:61:0x0309, B:63:0x030f, B:64:0x031d, B:66:0x0375, B:68:0x0383, B:69:0x038a, B:71:0x0394, B:73:0x03a2, B:74:0x03a9, B:52:0x02a4, B:23:0x00e0, B:75:0x03c3), top: B:80:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0375 A[Catch: all -> 0x03d1, TryCatch #0 {all -> 0x03d1, blocks: (B:3:0x000e, B:5:0x001d, B:7:0x0030, B:9:0x0046, B:10:0x0051, B:12:0x0079, B:14:0x0087, B:15:0x008a, B:18:0x00c9, B:22:0x00d2, B:24:0x00ed, B:26:0x01e5, B:27:0x01ef, B:29:0x01f5, B:31:0x0203, B:32:0x0206, B:34:0x0240, B:36:0x024e, B:37:0x0251, B:39:0x0277, B:40:0x027e, B:44:0x028c, B:46:0x0292, B:47:0x0296, B:49:0x029c, B:54:0x02ae, B:55:0x02b1, B:57:0x02ce, B:58:0x02d3, B:60:0x0305, B:61:0x0309, B:63:0x030f, B:64:0x031d, B:66:0x0375, B:68:0x0383, B:69:0x038a, B:71:0x0394, B:73:0x03a2, B:74:0x03a9, B:52:0x02a4, B:23:0x00e0, B:75:0x03c3), top: B:80:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0394 A[Catch: all -> 0x03d1, TryCatch #0 {all -> 0x03d1, blocks: (B:3:0x000e, B:5:0x001d, B:7:0x0030, B:9:0x0046, B:10:0x0051, B:12:0x0079, B:14:0x0087, B:15:0x008a, B:18:0x00c9, B:22:0x00d2, B:24:0x00ed, B:26:0x01e5, B:27:0x01ef, B:29:0x01f5, B:31:0x0203, B:32:0x0206, B:34:0x0240, B:36:0x024e, B:37:0x0251, B:39:0x0277, B:40:0x027e, B:44:0x028c, B:46:0x0292, B:47:0x0296, B:49:0x029c, B:54:0x02ae, B:55:0x02b1, B:57:0x02ce, B:58:0x02d3, B:60:0x0305, B:61:0x0309, B:63:0x030f, B:64:0x031d, B:66:0x0375, B:68:0x0383, B:69:0x038a, B:71:0x0394, B:73:0x03a2, B:74:0x03a9, B:52:0x02a4, B:23:0x00e0, B:75:0x03c3), top: B:80:0x000e }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(android.content.Context r11, io.sentry.android.core.SentryAndroidOptions r12, io.sentry.android.core.p0 r13) {
        /*
            Method dump skipped, instructions count: 990
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.android.core.p1.a(android.content.Context, io.sentry.android.core.SentryAndroidOptions, io.sentry.android.core.p0):void");
    }

    private static Bundle b(Context context, ILogger iLogger, p0 p0Var) {
        if (p0Var == null) {
            p0Var = new p0(iLogger);
        }
        ApplicationInfo i10 = x0.i(context, p0Var);
        if (i10 != null) {
            return i10.metaData;
        }
        return null;
    }

    private static boolean c(Bundle bundle, ILogger iLogger, String str, boolean z10) {
        boolean z11 = bundle.getBoolean(str, z10);
        j5 j5Var = j5.DEBUG;
        iLogger.c(j5Var, str + " read: " + z11, new Object[0]);
        return z11;
    }

    private static Boolean d(Bundle bundle, ILogger iLogger, String str, Boolean bool) {
        boolean z10;
        if (bundle.getSerializable(str) != null) {
            if (bool == null) {
                z10 = false;
            } else {
                z10 = true;
            }
            boolean z11 = bundle.getBoolean(str, z10);
            iLogger.c(j5.DEBUG, str + " read: " + z11, new Object[0]);
            return Boolean.valueOf(z11);
        }
        iLogger.c(j5.DEBUG, str + " used default " + bool, new Object[0]);
        return bool;
    }

    private static Double e(Bundle bundle, ILogger iLogger, String str) {
        double doubleValue = Float.valueOf(bundle.getFloat(str, -1.0f)).doubleValue();
        if (doubleValue == -1.0d) {
            doubleValue = Integer.valueOf(bundle.getInt(str, -1)).doubleValue();
        }
        j5 j5Var = j5.DEBUG;
        iLogger.c(j5Var, str + " read: " + doubleValue, new Object[0]);
        return Double.valueOf(doubleValue);
    }

    private static List f(Bundle bundle, ILogger iLogger, String str) {
        String string = bundle.getString(str);
        j5 j5Var = j5.DEBUG;
        iLogger.c(j5Var, str + " read: " + string, new Object[0]);
        if (string != null) {
            return Arrays.asList(string.split(StringUtils.COMMA, -1));
        }
        return null;
    }

    private static long g(Bundle bundle, ILogger iLogger, String str, long j10) {
        long j11 = bundle.getInt(str, (int) j10);
        iLogger.c(j5.DEBUG, str + " read: " + j11, new Object[0]);
        return j11;
    }

    private static String h(Bundle bundle, ILogger iLogger, String str, String str2) {
        String string = bundle.getString(str, str2);
        j5 j5Var = j5.DEBUG;
        iLogger.c(j5Var, str + " read: " + string, new Object[0]);
        return string;
    }

    private static String i(Bundle bundle, ILogger iLogger, String str, String str2) {
        String string = bundle.getString(str, str2);
        j5 j5Var = j5.DEBUG;
        iLogger.c(j5Var, str + " read: " + string, new Object[0]);
        return string;
    }
}
