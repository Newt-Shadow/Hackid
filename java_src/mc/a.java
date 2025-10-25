package mc;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageManager;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodChannel;
import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public final class a implements FlutterPlugin {

    /* renamed from: a  reason: collision with root package name */
    private MethodChannel f26017a;

    private final void a(BinaryMessenger binaryMessenger, Context context) {
        this.f26017a = new MethodChannel(binaryMessenger, "dev.fluttercommunity.plus/device_info");
        PackageManager packageManager = context.getPackageManager();
        m.d(packageManager, "getPackageManager(...)");
        Object systemService = context.getSystemService("activity");
        m.c(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
        c cVar = new c(packageManager, (ActivityManager) systemService);
        MethodChannel methodChannel = this.f26017a;
        if (methodChannel == null) {
            m.s("methodChannel");
            methodChannel = null;
        }
        methodChannel.setMethodCallHandler(cVar);
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding binding) {
        m.e(binding, "binding");
        BinaryMessenger binaryMessenger = binding.getBinaryMessenger();
        m.d(binaryMessenger, "getBinaryMessenger(...)");
        Context applicationContext = binding.getApplicationContext();
        m.d(applicationContext, "getApplicationContext(...)");
        a(binaryMessenger, applicationContext);
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding binding) {
        m.e(binding, "binding");
        MethodChannel methodChannel = this.f26017a;
        if (methodChannel == null) {
            m.s("methodChannel");
            methodChannel = null;
        }
        methodChannel.setMethodCallHandler(null);
    }
}
