package e2;

import android.app.Activity;
import android.app.AlarmManager;
import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.PowerManager;
import android.provider.Settings;
import android.util.Log;
import io.flutter.plugin.common.PluginRegistry;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
final class q implements PluginRegistry.ActivityResultListener, PluginRegistry.RequestPermissionsResultListener {

    /* renamed from: a  reason: collision with root package name */
    private final Context f15258a;

    /* renamed from: b  reason: collision with root package name */
    private b f15259b;

    /* renamed from: c  reason: collision with root package name */
    private Activity f15260c;

    /* renamed from: d  reason: collision with root package name */
    private int f15261d;

    /* renamed from: e  reason: collision with root package name */
    private Map f15262e;

    /* loaded from: classes.dex */
    interface a {
        void onSuccess(int i10);
    }

    /* loaded from: classes.dex */
    interface b {
        void a(Map map);
    }

    /* loaded from: classes.dex */
    interface c {
        void a(boolean z10);
    }

    public q(Context context) {
        this.f15258a = context;
    }

    private int a() {
        boolean z10;
        List c10 = u.c(this.f15258a, 21);
        if (c10 != null && !c10.isEmpty()) {
            z10 = false;
        } else {
            z10 = true;
        }
        if (!z10) {
            return 1;
        }
        Log.d("permissions_handler", "Bluetooth permission missing in manifest");
        return 0;
    }

    private int b() {
        if (Build.VERSION.SDK_INT < 33) {
            if (androidx.core.app.p.e(this.f15258a).a()) {
                return 1;
            }
            return 0;
        } else if (this.f15258a.checkSelfPermission("android.permission.POST_NOTIFICATIONS") == 0) {
            return 1;
        } else {
            return u.b(this.f15260c, "android.permission.POST_NOTIFICATIONS");
        }
    }

    private int d(int i10) {
        Object[] objArr;
        boolean isExternalStorageManager;
        boolean canRequestPackageInstalls;
        boolean canScheduleExactAlarms;
        int i11;
        if (i10 == 17) {
            return b();
        }
        if (i10 == 21) {
            return a();
        }
        if ((i10 == 30 || i10 == 28 || i10 == 29) && Build.VERSION.SDK_INT < 31) {
            return a();
        }
        if ((i10 == 37 || i10 == 0) && !e()) {
            return 0;
        }
        List<String> c10 = u.c(this.f15258a, i10);
        if (c10 == null) {
            Log.d("permissions_handler", "No android specific permissions needed for: " + i10);
            return 1;
        } else if (c10.size() == 0) {
            Log.d("permissions_handler", "No permissions found in manifest for: " + c10 + i10);
            if (i10 != 22 || Build.VERSION.SDK_INT >= 30) {
                return 0;
            }
            return 2;
        } else {
            if (this.f15258a.getApplicationInfo().targetSdkVersion >= 23) {
                objArr = 1;
            } else {
                objArr = null;
            }
            if (objArr != null) {
                HashSet hashSet = new HashSet();
                for (String str : c10) {
                    if (i10 == 16) {
                        String packageName = this.f15258a.getPackageName();
                        PowerManager powerManager = (PowerManager) this.f15258a.getSystemService("power");
                        if (powerManager != null && powerManager.isIgnoringBatteryOptimizations(packageName)) {
                            hashSet.add(1);
                        } else {
                            hashSet.add(0);
                        }
                    } else if (i10 == 22) {
                        if (Build.VERSION.SDK_INT < 30) {
                            hashSet.add(2);
                        }
                        isExternalStorageManager = Environment.isExternalStorageManager();
                        hashSet.add(Integer.valueOf(isExternalStorageManager ? 1 : 0));
                    } else if (i10 == 23) {
                        hashSet.add(Integer.valueOf(Settings.canDrawOverlays(this.f15258a) ? 1 : 0));
                    } else if (i10 == 24) {
                        if (Build.VERSION.SDK_INT >= 26) {
                            canRequestPackageInstalls = this.f15258a.getPackageManager().canRequestPackageInstalls();
                            hashSet.add(Integer.valueOf(canRequestPackageInstalls ? 1 : 0));
                        }
                    } else if (i10 == 27) {
                        hashSet.add(Integer.valueOf(((NotificationManager) this.f15258a.getSystemService("notification")).isNotificationPolicyAccessGranted() ? 1 : 0));
                    } else if (i10 == 34) {
                        if (Build.VERSION.SDK_INT >= 31) {
                            canScheduleExactAlarms = ((AlarmManager) this.f15258a.getSystemService("alarm")).canScheduleExactAlarms();
                            hashSet.add(Integer.valueOf(canScheduleExactAlarms ? 1 : 0));
                        } else {
                            hashSet.add(1);
                        }
                    } else if (i10 != 9 && i10 != 32) {
                        if (androidx.core.content.a.a(this.f15258a, str) != 0) {
                            hashSet.add(Integer.valueOf(u.b(this.f15260c, str)));
                        }
                    } else {
                        int a10 = androidx.core.content.a.a(this.f15258a, str);
                        if (Build.VERSION.SDK_INT >= 34) {
                            i11 = androidx.core.content.a.a(this.f15258a, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED");
                        } else {
                            i11 = a10;
                        }
                        if (i11 == 0 && a10 == -1) {
                            hashSet.add(3);
                        } else if (a10 == 0) {
                            hashSet.add(1);
                        } else {
                            hashSet.add(Integer.valueOf(u.b(this.f15260c, str)));
                        }
                    }
                }
                if (!hashSet.isEmpty()) {
                    return u.j(hashSet).intValue();
                }
            }
            return 1;
        }
    }

    private boolean e() {
        boolean z10;
        boolean z11;
        boolean z12;
        List c10 = u.c(this.f15258a, 37);
        if (c10 != null && c10.contains("android.permission.WRITE_CALENDAR")) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (c10 != null && c10.contains("android.permission.READ_CALENDAR")) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (z10 && z11) {
            z12 = true;
        } else {
            z12 = false;
        }
        if (z12) {
            return true;
        }
        if (!z10) {
            Log.d("permissions_handler", "android.permission.WRITE_CALENDAR missing in manifest");
        }
        if (!z11) {
            Log.d("permissions_handler", "android.permission.READ_CALENDAR missing in manifest");
        }
        return false;
    }

    private void f(String str, int i10) {
        if (this.f15260c == null) {
            return;
        }
        Intent intent = new Intent(str);
        if (!str.equals("android.settings.NOTIFICATION_POLICY_ACCESS_SETTINGS")) {
            intent.setData(Uri.parse("package:" + this.f15260c.getPackageName()));
        }
        this.f15260c.startActivityForResult(intent, i10);
        this.f15261d++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(int i10, a aVar) {
        aVar.onSuccess(d(i10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g(List list, b bVar, e2.b bVar2) {
        if (this.f15261d > 0) {
            bVar2.a("PermissionHandler.PermissionManager", "A request for permissions is already running, please wait for it to finish before doing another request (note that you can request multiple permissions at the same time).");
        } else if (this.f15260c == null) {
            Log.d("permissions_handler", "Unable to detect current Activity.");
            bVar2.a("PermissionHandler.PermissionManager", "Unable to detect current Android Activity.");
        } else {
            this.f15259b = bVar;
            this.f15262e = new HashMap();
            this.f15261d = 0;
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                Integer num = (Integer) it.next();
                if (d(num.intValue()) == 1) {
                    if (!this.f15262e.containsKey(num)) {
                        this.f15262e.put(num, 1);
                    }
                } else {
                    List c10 = u.c(this.f15260c, num.intValue());
                    if (c10 != null && !c10.isEmpty()) {
                        int i10 = Build.VERSION.SDK_INT;
                        if (num.intValue() == 16) {
                            f("android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS", 209);
                        } else if (i10 >= 30 && num.intValue() == 22) {
                            f("android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION", 210);
                        } else if (num.intValue() == 23) {
                            f("android.settings.action.MANAGE_OVERLAY_PERMISSION", 211);
                        } else if (i10 >= 26 && num.intValue() == 24) {
                            f("android.settings.MANAGE_UNKNOWN_APP_SOURCES", 212);
                        } else if (num.intValue() == 27) {
                            f("android.settings.NOTIFICATION_POLICY_ACCESS_SETTINGS", 213);
                        } else if (i10 >= 31 && num.intValue() == 34) {
                            f("android.settings.REQUEST_SCHEDULE_EXACT_ALARM", 214);
                        } else if (num.intValue() != 37 && num.intValue() != 0) {
                            arrayList.addAll(c10);
                            this.f15261d += c10.size();
                        } else if (e()) {
                            arrayList.add("android.permission.WRITE_CALENDAR");
                            arrayList.add("android.permission.READ_CALENDAR");
                            this.f15261d += 2;
                        } else {
                            this.f15262e.put(num, 0);
                        }
                    } else if (!this.f15262e.containsKey(num)) {
                        num.intValue();
                        this.f15262e.put(num, 0);
                        if (num.intValue() == 22 && Build.VERSION.SDK_INT < 30) {
                            this.f15262e.put(num, 2);
                        } else {
                            this.f15262e.put(num, 0);
                        }
                    }
                }
            }
            if (arrayList.size() > 0) {
                androidx.core.app.b.v(this.f15260c, (String[]) arrayList.toArray(new String[0]), 24);
            }
            b bVar3 = this.f15259b;
            if (bVar3 != null && this.f15261d == 0) {
                bVar3.a(this.f15262e);
            }
        }
    }

    public void h(Activity activity) {
        this.f15260c = activity;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void i(int i10, c cVar, e2.b bVar) {
        Activity activity = this.f15260c;
        if (activity == null) {
            Log.d("permissions_handler", "Unable to detect current Activity.");
            bVar.a("PermissionHandler.PermissionManager", "Unable to detect current Android Activity.");
            return;
        }
        List c10 = u.c(activity, i10);
        if (c10 == null) {
            Log.d("permissions_handler", "No android specific permissions needed for: " + i10);
            cVar.a(false);
        } else if (c10.isEmpty()) {
            Log.d("permissions_handler", "No permissions found in manifest for: " + i10 + " no need to show request rationale");
            cVar.a(false);
        } else {
            cVar.a(androidx.core.app.b.y(this.f15260c, (String) c10.get(0)));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.flutter.plugin.common.PluginRegistry.ActivityResultListener
    public boolean onActivityResult(int i10, int i11, Intent intent) {
        boolean z10;
        int i12;
        boolean canScheduleExactAlarms;
        boolean canRequestPackageInstalls;
        boolean isExternalStorageManager;
        int i13;
        Activity activity = this.f15260c;
        boolean z11 = false;
        z11 = false;
        if (activity == null) {
            return false;
        }
        if (this.f15262e == null) {
            this.f15261d = 0;
            return false;
        }
        if (i10 == 209) {
            String packageName = this.f15258a.getPackageName();
            PowerManager powerManager = (PowerManager) this.f15258a.getSystemService("power");
            if (powerManager != null && powerManager.isIgnoringBatteryOptimizations(packageName)) {
                z11 = true;
            }
            i12 = 16;
            i13 = z11;
        } else if (i10 == 210) {
            if (Build.VERSION.SDK_INT >= 30) {
                isExternalStorageManager = Environment.isExternalStorageManager();
                i12 = 22;
                i13 = isExternalStorageManager;
            } else {
                return false;
            }
        } else if (i10 == 211) {
            i12 = 23;
            i13 = Settings.canDrawOverlays(activity);
        } else if (i10 == 212) {
            if (Build.VERSION.SDK_INT >= 26) {
                canRequestPackageInstalls = activity.getPackageManager().canRequestPackageInstalls();
                i12 = 24;
                i13 = canRequestPackageInstalls;
            } else {
                return false;
            }
        } else if (i10 == 213) {
            i12 = 27;
            i13 = ((NotificationManager) activity.getSystemService("notification")).isNotificationPolicyAccessGranted();
        } else if (i10 != 214) {
            return false;
        } else {
            AlarmManager alarmManager = (AlarmManager) activity.getSystemService("alarm");
            if (Build.VERSION.SDK_INT >= 31) {
                canScheduleExactAlarms = alarmManager.canScheduleExactAlarms();
                z10 = canScheduleExactAlarms;
            } else {
                z10 = true;
            }
            i12 = 34;
            i13 = z10;
        }
        this.f15262e.put(Integer.valueOf(i12), Integer.valueOf(i13));
        int i14 = this.f15261d - 1;
        this.f15261d = i14;
        b bVar = this.f15259b;
        if (bVar != null && i14 == 0) {
            bVar.a(this.f15262e);
        }
        return true;
    }

    @Override // io.flutter.plugin.common.PluginRegistry.RequestPermissionsResultListener
    public boolean onRequestPermissionsResult(int i10, String[] strArr, int[] iArr) {
        int g10;
        if (i10 != 24) {
            this.f15261d = 0;
            return false;
        } else if (this.f15262e == null) {
            return false;
        } else {
            if (strArr.length == 0 && iArr.length == 0) {
                this.f15261d = 0;
                Log.w("permissions_handler", "onRequestPermissionsResult is called without results. This is probably caused by interfering request codes. If you see this error, please file an issue in flutter-permission-handler, including a list of plugins used by this application: https://github.com/Baseflow/flutter-permission-handler/issues");
                return false;
            }
            List asList = Arrays.asList(strArr);
            int indexOf = asList.indexOf("android.permission.WRITE_CALENDAR");
            if (indexOf >= 0) {
                int k10 = u.k(this.f15260c, "android.permission.WRITE_CALENDAR", iArr[indexOf]);
                this.f15262e.put(36, Integer.valueOf(k10));
                int indexOf2 = asList.indexOf("android.permission.READ_CALENDAR");
                if (indexOf2 >= 0) {
                    int intValue = u.i(Integer.valueOf(k10), Integer.valueOf(u.k(this.f15260c, "android.permission.READ_CALENDAR", iArr[indexOf2]))).intValue();
                    this.f15262e.put(37, Integer.valueOf(intValue));
                    this.f15262e.put(0, Integer.valueOf(intValue));
                }
            }
            for (int i11 = 0; i11 < strArr.length; i11++) {
                String str = strArr[i11];
                if (!str.equals("android.permission.WRITE_CALENDAR") && !str.equals("android.permission.READ_CALENDAR") && (g10 = u.g(str)) != 20) {
                    int i12 = iArr[i11];
                    if (g10 == 8) {
                        this.f15262e.put(8, u.i((Integer) this.f15262e.get(8), Integer.valueOf(u.k(this.f15260c, str, i12))));
                    } else if (g10 == 7) {
                        if (!this.f15262e.containsKey(7)) {
                            this.f15262e.put(7, Integer.valueOf(u.k(this.f15260c, str, i12)));
                        }
                        if (!this.f15262e.containsKey(14)) {
                            this.f15262e.put(14, Integer.valueOf(u.k(this.f15260c, str, i12)));
                        }
                    } else if (g10 == 4) {
                        int k11 = u.k(this.f15260c, str, i12);
                        if (!this.f15262e.containsKey(4)) {
                            this.f15262e.put(4, Integer.valueOf(k11));
                        }
                    } else if (g10 == 3) {
                        int k12 = u.k(this.f15260c, str, i12);
                        if (Build.VERSION.SDK_INT < 29 && !this.f15262e.containsKey(4)) {
                            this.f15262e.put(4, Integer.valueOf(k12));
                        }
                        if (!this.f15262e.containsKey(5)) {
                            this.f15262e.put(5, Integer.valueOf(k12));
                        }
                        this.f15262e.put(Integer.valueOf(g10), Integer.valueOf(k12));
                    } else if (g10 != 9 && g10 != 32) {
                        if (!this.f15262e.containsKey(Integer.valueOf(g10))) {
                            this.f15262e.put(Integer.valueOf(g10), Integer.valueOf(u.k(this.f15260c, str, i12)));
                        }
                    } else {
                        this.f15262e.put(Integer.valueOf(g10), Integer.valueOf(d(g10)));
                    }
                }
            }
            int length = this.f15261d - iArr.length;
            this.f15261d = length;
            b bVar = this.f15259b;
            if (bVar != null && length == 0) {
                bVar.a(this.f15262e);
                return true;
            }
            return true;
        }
    }
}
