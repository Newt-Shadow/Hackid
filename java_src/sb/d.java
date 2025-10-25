package sb;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityOptions;
import android.app.AlarmManager;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.PowerManager;
import android.provider.Settings;
import android.view.Window;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public abstract class d {

    /* renamed from: a  reason: collision with root package name */
    public static final a f29579a = new a(null);

    /* loaded from: classes.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean a(Context context) {
            m.e(context, "context");
            return Settings.canDrawOverlays(context);
        }

        public final boolean b(Context context) {
            boolean canScheduleExactAlarms;
            m.e(context, "context");
            if (Build.VERSION.SDK_INT >= 31) {
                Object systemService = context.getSystemService("alarm");
                m.c(systemService, "null cannot be cast to non-null type android.app.AlarmManager");
                canScheduleExactAlarms = ((AlarmManager) systemService).canScheduleExactAlarms();
                return canScheduleExactAlarms;
            }
            return true;
        }

        public final boolean c(Context context) {
            m.e(context, "context");
            Object systemService = context.getSystemService("activity");
            m.c(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
            List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) systemService).getRunningAppProcesses();
            if (runningAppProcesses == null) {
                return false;
            }
            String packageName = context.getPackageName();
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (runningAppProcessInfo.importance == 100 && runningAppProcessInfo.processName.equals(packageName)) {
                    return true;
                }
            }
            return false;
        }

        public final boolean d(Context context) {
            m.e(context, "context");
            Object systemService = context.getSystemService("power");
            m.c(systemService, "null cannot be cast to non-null type android.os.PowerManager");
            return ((PowerManager) systemService).isIgnoringBatteryOptimizations(context.getPackageName());
        }

        public final void e(Context context, String str) {
            m.e(context, "context");
            Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(context.getPackageName());
            if (launchIntentForPackage != null) {
                launchIntentForPackage.setFlags(268435456);
                if (str != null) {
                    launchIntentForPackage.putExtra("route", str);
                }
                if (Build.VERSION.SDK_INT >= 34) {
                    ActivityOptions makeBasic = ActivityOptions.makeBasic();
                    makeBasic.setPendingIntentBackgroundActivityStartMode(1);
                    context.startActivity(launchIntentForPackage, makeBasic.toBundle());
                    return;
                }
                context.startActivity(launchIntentForPackage);
            }
        }

        public final void f(Activity activity) {
            m.e(activity, "activity");
            activity.moveTaskToBack(true);
        }

        public final void g(Activity activity, int i10) {
            m.e(activity, "activity");
            if (Build.VERSION.SDK_INT >= 31) {
                activity.startActivityForResult(new Intent("android.settings.REQUEST_SCHEDULE_EXACT_ALARM", Uri.parse("package:" + activity.getPackageName())), i10);
                return;
            }
            throw new pb.b("only supports Android 12.0+");
        }

        public final void h(Activity activity, int i10) {
            m.e(activity, "activity");
            activity.startActivityForResult(new Intent("android.settings.IGNORE_BATTERY_OPTIMIZATION_SETTINGS"), i10);
        }

        public final void i(Activity activity, int i10) {
            m.e(activity, "activity");
            activity.startActivityForResult(new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", Uri.parse("package:" + activity.getPackageName())), i10);
        }

        public final void j(Activity activity, int i10) {
            m.e(activity, "activity");
            activity.startActivityForResult(new Intent("android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS", Uri.parse("package:" + activity.getPackageName())), i10);
        }

        public final void k(Activity activity, boolean z10) {
            m.e(activity, "activity");
            if (Build.VERSION.SDK_INT >= 27) {
                activity.setShowWhenLocked(z10);
            } else if (z10) {
                Window window = activity.getWindow();
                if (window != null) {
                    window.addFlags(524288);
                }
            } else {
                Window window2 = activity.getWindow();
                if (window2 != null) {
                    window2.clearFlags(524288);
                }
            }
        }

        public final void l(Context context) {
            m.e(context, "context");
            Object systemService = context.getSystemService("power");
            m.c(systemService, "null cannot be cast to non-null type android.os.PowerManager");
            PowerManager.WakeLock newWakeLock = ((PowerManager) systemService).newWakeLock(805306378, "PluginUtils:WakeLock");
            newWakeLock.acquire(1000L);
            newWakeLock.release();
        }
    }
}
