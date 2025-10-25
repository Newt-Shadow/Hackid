package androidx.core.content;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Process;
import android.text.TextUtils;
import androidx.core.app.p;
import java.io.File;
import java.util.concurrent.Executor;
import z.h;
/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f2023a = new Object();

    /* renamed from: androidx.core.content.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    static class C0030a {
        static Drawable a(Context context, int i10) {
            return context.getDrawable(i10);
        }

        static File b(Context context) {
            return context.getNoBackupFilesDir();
        }
    }

    /* loaded from: classes.dex */
    static class b {
        static int a(Context context, int i10) {
            return context.getColor(i10);
        }
    }

    /* loaded from: classes.dex */
    static class c {
        static Context a(Context context) {
            return context.createDeviceProtectedStorageContext();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class d {
        static Intent a(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, String str, Handler handler, int i10) {
            if ((i10 & 4) != 0 && str == null) {
                return context.registerReceiver(broadcastReceiver, intentFilter, a.j(context), handler);
            }
            return context.registerReceiver(broadcastReceiver, intentFilter, str, handler, i10 & 1);
        }

        static ComponentName b(Context context, Intent intent) {
            return context.startForegroundService(intent);
        }
    }

    /* loaded from: classes.dex */
    static class e {
        static Executor a(Context context) {
            return context.getMainExecutor();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class f {
        static Intent a(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, String str, Handler handler, int i10) {
            return context.registerReceiver(broadcastReceiver, intentFilter, str, handler, i10);
        }
    }

    public static int a(Context context, String str) {
        c0.b.d(str, "permission must be non-null");
        if (Build.VERSION.SDK_INT < 33 && TextUtils.equals("android.permission.POST_NOTIFICATIONS", str)) {
            if (p.e(context).a()) {
                return 0;
            }
            return -1;
        }
        return context.checkPermission(str, Process.myPid(), Process.myUid());
    }

    public static Context b(Context context) {
        return c.a(context);
    }

    public static int c(Context context, int i10) {
        return b.a(context, i10);
    }

    public static ColorStateList d(Context context, int i10) {
        return u.f.c(context.getResources(), i10, context.getTheme());
    }

    public static Drawable e(Context context, int i10) {
        return C0030a.a(context, i10);
    }

    public static File[] f(Context context) {
        return context.getExternalCacheDirs();
    }

    public static File[] g(Context context, String str) {
        return context.getExternalFilesDirs(str);
    }

    public static Executor h(Context context) {
        if (Build.VERSION.SDK_INT >= 28) {
            return e.a(context);
        }
        return h.a(new Handler(context.getMainLooper()));
    }

    public static File i(Context context) {
        return C0030a.b(context);
    }

    static String j(Context context) {
        String str = context.getPackageName() + ".DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION";
        if (androidx.core.content.e.b(context, str) == 0) {
            return str;
        }
        throw new RuntimeException("Permission " + str + " is required by your application to receive broadcasts, please add it to your manifest");
    }

    public static Intent k(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, int i10) {
        return l(context, broadcastReceiver, intentFilter, null, null, i10);
    }

    public static Intent l(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, String str, Handler handler, int i10) {
        int i11 = i10 & 1;
        if (i11 != 0 && (i10 & 4) != 0) {
            throw new IllegalArgumentException("Cannot specify both RECEIVER_VISIBLE_TO_INSTANT_APPS and RECEIVER_NOT_EXPORTED");
        }
        if (i11 != 0) {
            i10 |= 2;
        }
        int i12 = i10;
        int i13 = i12 & 2;
        if (i13 == 0 && (i12 & 4) == 0) {
            throw new IllegalArgumentException("One of either RECEIVER_EXPORTED or RECEIVER_NOT_EXPORTED is required");
        }
        if (i13 != 0 && (i12 & 4) != 0) {
            throw new IllegalArgumentException("Cannot specify both RECEIVER_EXPORTED and RECEIVER_NOT_EXPORTED");
        }
        int i14 = Build.VERSION.SDK_INT;
        if (i14 >= 33) {
            return f.a(context, broadcastReceiver, intentFilter, str, handler, i12);
        }
        if (i14 >= 26) {
            return d.a(context, broadcastReceiver, intentFilter, str, handler, i12);
        }
        if ((i12 & 4) != 0 && str == null) {
            return context.registerReceiver(broadcastReceiver, intentFilter, j(context), handler);
        }
        return context.registerReceiver(broadcastReceiver, intentFilter, str, handler);
    }

    public static boolean m(Context context, Intent[] intentArr, Bundle bundle) {
        context.startActivities(intentArr, bundle);
        return true;
    }

    public static void n(Context context, Intent intent, Bundle bundle) {
        context.startActivity(intent, bundle);
    }

    public static void o(Context context, Intent intent) {
        if (Build.VERSION.SDK_INT >= 26) {
            d.b(context, intent);
        } else {
            context.startService(intent);
        }
    }
}
