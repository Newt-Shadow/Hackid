package l2;

import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
/* loaded from: classes.dex */
public class a implements FlutterPlugin, MethodChannel.MethodCallHandler {

    /* renamed from: a  reason: collision with root package name */
    private static NotificationManager f25171a;

    /* renamed from: b  reason: collision with root package name */
    private static Context f25172b;

    private int a() {
        return f25171a.getCurrentInterruptionFilter();
    }

    private void b() {
        Intent intent = new Intent("android.settings.NOTIFICATION_POLICY_ACCESS_SETTINGS");
        intent.addFlags(268435456);
        f25172b.startActivity(intent);
    }

    private boolean c() {
        return true;
    }

    private boolean d() {
        return f25171a.isNotificationPolicyAccessGranted();
    }

    private boolean e(int i10) {
        if (f25171a.isNotificationPolicyAccessGranted()) {
            f25171a.setInterruptionFilter(i10);
            return true;
        }
        return false;
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        Context applicationContext = flutterPluginBinding.getApplicationContext();
        f25172b = applicationContext;
        f25171a = (NotificationManager) applicationContext.getSystemService("notification");
        new MethodChannel(flutterPluginBinding.getFlutterEngine().getDartExecutor(), "flutter_dnd").setMethodCallHandler(new a());
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        if (!c()) {
            result.error("ERROR: INCOMPATIBLE_ANDROID_VERSION", "This methods required android version above 23", null);
            return;
        }
        String str = methodCall.method;
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1247241424:
                if (str.equals("isNotificationPolicyAccessGranted")) {
                    c10 = 0;
                    break;
                }
                break;
            case -726245729:
                if (str.equals("setInterruptionFilter")) {
                    c10 = 1;
                    break;
                }
                break;
            case 1469482304:
                if (str.equals("getCurrentInterruptionFilter")) {
                    c10 = 2;
                    break;
                }
                break;
            case 1938757560:
                if (str.equals("gotoPolicySettings")) {
                    c10 = 3;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                result.success(Boolean.valueOf(d()));
                return;
            case 1:
                result.success(Boolean.valueOf(e(((Integer) methodCall.arguments()).intValue())));
                return;
            case 2:
                result.success(Integer.valueOf(a()));
                return;
            case 3:
                b();
                result.success(null);
                return;
            default:
                result.notImplemented();
                return;
        }
    }
}
