package l5;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.text.TextUtils;
import com.arthenica.ffmpegkit.Chapter;
import n5.t1;
/* loaded from: classes.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    public static final int f25293a = k.f25303a;

    /* renamed from: b  reason: collision with root package name */
    private static final g f25294b = new g();

    public static g f() {
        return f25294b;
    }

    public int a(Context context) {
        return k.b(context);
    }

    public Intent b(Context context, int i10, String str) {
        if (i10 != 1 && i10 != 2) {
            if (i10 != 3) {
                return null;
            }
            int i11 = t1.f26399c;
            Uri fromParts = Uri.fromParts("package", "com.google.android.gms", null);
            Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(fromParts);
            return intent;
        } else if (context != null && com.google.android.gms.common.util.h.d(context)) {
            int i12 = t1.f26399c;
            Intent intent2 = new Intent("com.google.android.clockwork.home.UPDATE_ANDROID_WEAR_ACTION");
            intent2.setPackage("com.google.android.wearable.app");
            return intent2;
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("gcore_");
            sb2.append(f25293a);
            sb2.append("-");
            if (!TextUtils.isEmpty(str)) {
                sb2.append(str);
            }
            sb2.append("-");
            if (context != null) {
                sb2.append(context.getPackageName());
            }
            sb2.append("-");
            if (context != null) {
                try {
                    sb2.append(t5.e.a(context).e(context.getPackageName(), 0).versionCode);
                } catch (PackageManager.NameNotFoundException unused) {
                }
            }
            String sb3 = sb2.toString();
            int i13 = t1.f26399c;
            Intent intent3 = new Intent("android.intent.action.VIEW");
            Uri.Builder appendQueryParameter = Uri.parse("market://details").buildUpon().appendQueryParameter(Chapter.KEY_ID, "com.google.android.gms");
            if (!TextUtils.isEmpty(sb3)) {
                appendQueryParameter.appendQueryParameter("pcampaignid", sb3);
            }
            intent3.setData(appendQueryParameter.build());
            intent3.setPackage("com.android.vending");
            intent3.addFlags(524288);
            return intent3;
        }
    }

    public PendingIntent c(Context context, int i10, int i11) {
        return d(context, i10, i11, null);
    }

    public PendingIntent d(Context context, int i10, int i11, String str) {
        Intent b10 = b(context, i10, str);
        if (b10 == null) {
            return null;
        }
        return androidx.core.app.s.b(context, i11, b10, 134217728, false);
    }

    public String e(int i10) {
        return k.c(i10);
    }

    public int g(Context context) {
        return h(context, f25293a);
    }

    public int h(Context context, int i10) {
        int f10 = k.f(context, i10);
        if (k.g(context, f10)) {
            return 18;
        }
        return f10;
    }

    public boolean i(Context context, String str) {
        return k.k(context, str);
    }

    public boolean j(int i10) {
        return k.i(i10);
    }
}
