package q7;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.arthenica.ffmpegkit.flutter.FFmpegKitFlutterPlugin;
/* loaded from: classes.dex */
class f {

    /* renamed from: a  reason: collision with root package name */
    private final Float f28428a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f28429b;

    private f(Float f10, boolean z10) {
        this.f28429b = z10;
        this.f28428a = f10;
    }

    public static f a(Context context) {
        boolean z10 = false;
        Float f10 = null;
        try {
            Intent registerReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            if (registerReceiver != null) {
                z10 = e(registerReceiver);
                f10 = d(registerReceiver);
            }
        } catch (IllegalStateException e10) {
            n7.g.f().e("An error occurred getting battery state.", e10);
        }
        return new f(f10, z10);
    }

    private static Float d(Intent intent) {
        int intExtra = intent.getIntExtra(FFmpegKitFlutterPlugin.KEY_LOG_LEVEL, -1);
        int intExtra2 = intent.getIntExtra("scale", -1);
        if (intExtra != -1 && intExtra2 != -1) {
            return Float.valueOf(intExtra / intExtra2);
        }
        return null;
    }

    private static boolean e(Intent intent) {
        int intExtra = intent.getIntExtra("status", -1);
        if (intExtra == -1) {
            return false;
        }
        if (intExtra != 2 && intExtra != 5) {
            return false;
        }
        return true;
    }

    public Float b() {
        return this.f28428a;
    }

    public int c() {
        Float f10;
        if (this.f28429b && (f10 = this.f28428a) != null) {
            if (f10.floatValue() < 0.99d) {
                return 2;
            }
            return 3;
        }
        return 1;
    }
}
