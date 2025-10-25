package rb;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import io.flutter.plugin.common.PluginRegistry;
/* loaded from: classes.dex */
public final class r implements PluginRegistry.RequestPermissionsResultListener {

    /* renamed from: a  reason: collision with root package name */
    private Activity f29080a;

    /* renamed from: b  reason: collision with root package name */
    private q f29081b;

    private final void b() {
        this.f29080a = null;
        this.f29081b = null;
    }

    private final qb.j c(Context context, String str) {
        String string;
        SharedPreferences sharedPreferences = context.getSharedPreferences("com.pravera.flutter_foreground_task.prefs.NOTIFICATION_PERMISSION_STATUS", 0);
        if (sharedPreferences == null || (string = sharedPreferences.getString(str, null)) == null) {
            return null;
        }
        return qb.j.valueOf(string);
    }

    private final boolean d(Context context, String str) {
        if (androidx.core.content.a.a(context, str) == 0) {
            return true;
        }
        return false;
    }

    private final void f(Context context, String str, qb.j jVar) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("com.pravera.flutter_foreground_task.prefs.NOTIFICATION_PERMISSION_STATUS", 0);
        if (sharedPreferences == null) {
            return;
        }
        SharedPreferences.Editor edit = sharedPreferences.edit();
        edit.putString(str, jVar.toString());
        edit.commit();
    }

    public final qb.j a(Activity activity) {
        qb.j jVar;
        kotlin.jvm.internal.m.e(activity, "activity");
        if (Build.VERSION.SDK_INT < 33) {
            return qb.j.f28696a;
        }
        if (d(activity, "android.permission.POST_NOTIFICATIONS")) {
            return qb.j.f28696a;
        }
        qb.j c10 = c(activity, "android.permission.POST_NOTIFICATIONS");
        if (c10 != null && c10 == (jVar = qb.j.f28698c) && !activity.shouldShowRequestPermissionRationale("android.permission.POST_NOTIFICATIONS")) {
            return jVar;
        }
        return qb.j.f28697b;
    }

    public final void e(Activity activity, q callback) {
        kotlin.jvm.internal.m.e(activity, "activity");
        kotlin.jvm.internal.m.e(callback, "callback");
        if (Build.VERSION.SDK_INT < 33) {
            callback.b(qb.j.f28696a);
            return;
        }
        this.f29080a = activity;
        this.f29081b = callback;
        androidx.core.app.b.v(activity, new String[]{"android.permission.POST_NOTIFICATIONS"}, 100);
    }

    @Override // io.flutter.plugin.common.PluginRegistry.RequestPermissionsResultListener
    public boolean onRequestPermissionsResult(int i10, String[] permissions, int[] grantResults) {
        boolean z10;
        int B;
        kotlin.jvm.internal.m.e(permissions, "permissions");
        kotlin.jvm.internal.m.e(grantResults, "grantResults");
        boolean z11 = false;
        if (grantResults.length == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            q qVar = this.f29081b;
            if (qVar != null) {
                qVar.a(new pb.c());
            }
            b();
            return false;
        }
        qb.j jVar = qb.j.f28697b;
        if (i10 == 100) {
            B = yc.k.B(permissions, "android.permission.POST_NOTIFICATIONS");
            if (B >= 0 && grantResults[B] == 0) {
                jVar = qb.j.f28696a;
            } else {
                Activity activity = this.f29080a;
                if (activity != null && !activity.shouldShowRequestPermissionRationale("android.permission.POST_NOTIFICATIONS")) {
                    z11 = true;
                }
                if (z11) {
                    jVar = qb.j.f28698c;
                }
            }
            Activity activity2 = this.f29080a;
            if (activity2 != null) {
                f(activity2, "android.permission.POST_NOTIFICATIONS", jVar);
            }
            q qVar2 = this.f29081b;
            if (qVar2 != null) {
                qVar2.b(jVar);
            }
            b();
            return true;
        }
        return false;
    }
}
