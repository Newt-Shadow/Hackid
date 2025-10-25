package e2;

import android.bluetooth.BluetoothManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.location.LocationManager;
import android.net.Uri;
import android.os.Build;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.util.Log;
import java.util.List;
/* loaded from: classes.dex */
final class y {

    /* loaded from: classes.dex */
    interface a {
        void onSuccess(int i10);
    }

    private List b(PackageManager packageManager) {
        PackageManager.ResolveInfoFlags of2;
        List queryIntentActivities;
        Intent intent = new Intent("android.intent.action.CALL");
        intent.setData(Uri.parse("tel:123123"));
        if (Build.VERSION.SDK_INT >= 33) {
            of2 = PackageManager.ResolveInfoFlags.of(0L);
            queryIntentActivities = packageManager.queryIntentActivities(intent, of2);
            return queryIntentActivities;
        }
        return packageManager.queryIntentActivities(intent, 0);
    }

    private boolean c(Context context) {
        return ((BluetoothManager) context.getSystemService("bluetooth")).getAdapter().isEnabled();
    }

    private boolean d(Context context) {
        boolean isLocationEnabled;
        if (Build.VERSION.SDK_INT >= 28) {
            LocationManager locationManager = (LocationManager) context.getSystemService(LocationManager.class);
            if (locationManager != null) {
                isLocationEnabled = locationManager.isLocationEnabled();
                return isLocationEnabled;
            }
            return false;
        }
        return e(context);
    }

    private static boolean e(Context context) {
        try {
            if (Settings.Secure.getInt(context.getContentResolver(), "location_mode") == 0) {
                return false;
            }
            return true;
        } catch (Settings.SettingNotFoundException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i10, Context context, a aVar, b bVar) {
        if (context == null) {
            Log.d("permissions_handler", "Context cannot be null.");
            bVar.a("PermissionHandler.ServiceManager", "Android context cannot be null.");
        } else if (i10 != 3 && i10 != 4 && i10 != 5) {
            if (i10 == 21) {
                aVar.onSuccess(c(context) ? 1 : 0);
            } else if (i10 == 8) {
                PackageManager packageManager = context.getPackageManager();
                if (!packageManager.hasSystemFeature("android.hardware.telephony")) {
                    aVar.onSuccess(2);
                    return;
                }
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                if (telephonyManager != null && telephonyManager.getPhoneType() != 0) {
                    if (b(packageManager).isEmpty()) {
                        aVar.onSuccess(2);
                        return;
                    } else if (telephonyManager.getSimState() != 5) {
                        aVar.onSuccess(0);
                        return;
                    } else {
                        aVar.onSuccess(1);
                        return;
                    }
                }
                aVar.onSuccess(2);
            } else if (i10 == 16) {
                aVar.onSuccess(1);
            } else {
                aVar.onSuccess(2);
            }
        } else {
            aVar.onSuccess(d(context) ? 1 : 0);
        }
    }
}
