package androidx.core.app;

import android.app.Activity;
import android.app.SharedElementCallback;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.HashSet;
/* loaded from: classes.dex */
public abstract class b extends androidx.core.content.a {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class a {
        static void a(Activity activity) {
            activity.finishAfterTransition();
        }

        static void b(Activity activity) {
            activity.postponeEnterTransition();
        }

        static void c(Activity activity, SharedElementCallback sharedElementCallback) {
            activity.setEnterSharedElementCallback(sharedElementCallback);
        }

        static void d(Activity activity, SharedElementCallback sharedElementCallback) {
            activity.setExitSharedElementCallback(sharedElementCallback);
        }

        static void e(Activity activity) {
            activity.startPostponedEnterTransition();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.app.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0026b {
        static void a(Activity activity, String[] strArr, int i10) {
            activity.requestPermissions(strArr, i10);
        }

        static boolean b(Activity activity, String str) {
            return activity.shouldShowRequestPermissionRationale(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class c {
        static boolean a(Activity activity, String str) {
            try {
                return ((Boolean) PackageManager.class.getMethod("shouldShowRequestPermissionRationale", String.class).invoke(activity.getApplication().getPackageManager(), str)).booleanValue();
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
                return activity.shouldShowRequestPermissionRationale(str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class d {
        static boolean a(Activity activity, String str) {
            return activity.shouldShowRequestPermissionRationale(str);
        }
    }

    /* loaded from: classes.dex */
    public interface e {
        void validateRequestPermissionsRequestCode(int i10);
    }

    public static void A(Activity activity, IntentSender intentSender, int i10, Intent intent, int i11, int i12, int i13, Bundle bundle) {
        activity.startIntentSenderForResult(intentSender, i10, intent, i11, i12, i13, bundle);
    }

    public static void B(Activity activity) {
        a.e(activity);
    }

    public static void q(Activity activity) {
        activity.finishAffinity();
    }

    public static void r(Activity activity) {
        a.a(activity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void s(Activity activity) {
        if (!activity.isFinishing() && !androidx.core.app.d.i(activity)) {
            activity.recreate();
        }
    }

    public static void t(Activity activity) {
        a.b(activity);
    }

    public static void u(final Activity activity) {
        if (Build.VERSION.SDK_INT >= 28) {
            activity.recreate();
        } else {
            new Handler(activity.getMainLooper()).post(new Runnable() { // from class: androidx.core.app.a
                @Override // java.lang.Runnable
                public final void run() {
                    b.s(activity);
                }
            });
        }
    }

    public static void v(Activity activity, String[] strArr, int i10) {
        String[] strArr2;
        HashSet hashSet = new HashSet();
        for (int i11 = 0; i11 < strArr.length; i11++) {
            if (!TextUtils.isEmpty(strArr[i11])) {
                if (Build.VERSION.SDK_INT < 33 && TextUtils.equals(strArr[i11], "android.permission.POST_NOTIFICATIONS")) {
                    hashSet.add(Integer.valueOf(i11));
                }
            } else {
                throw new IllegalArgumentException("Permission request for permissions " + Arrays.toString(strArr) + " must not contain null or empty values");
            }
        }
        int size = hashSet.size();
        if (size > 0) {
            strArr2 = new String[strArr.length - size];
        } else {
            strArr2 = strArr;
        }
        if (size > 0) {
            if (size == strArr.length) {
                return;
            }
            int i12 = 0;
            for (int i13 = 0; i13 < strArr.length; i13++) {
                if (!hashSet.contains(Integer.valueOf(i13))) {
                    strArr2[i12] = strArr[i13];
                    i12++;
                }
            }
        }
        if (activity instanceof e) {
            ((e) activity).validateRequestPermissionsRequestCode(i10);
        }
        C0026b.a(activity, strArr, i10);
    }

    public static void w(Activity activity, w wVar) {
        a.c(activity, null);
    }

    public static void x(Activity activity, w wVar) {
        a.d(activity, null);
    }

    public static boolean y(Activity activity, String str) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 33 && TextUtils.equals("android.permission.POST_NOTIFICATIONS", str)) {
            return false;
        }
        if (i10 >= 32) {
            return d.a(activity, str);
        }
        if (i10 == 31) {
            return c.a(activity, str);
        }
        return C0026b.b(activity, str);
    }

    public static void z(Activity activity, Intent intent, int i10, Bundle bundle) {
        activity.startActivityForResult(intent, i10, bundle);
    }
}
