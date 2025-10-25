package jc;

import android.content.ContentResolver;
import android.provider.Settings;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public final class a implements FlutterPlugin, MethodChannel.MethodCallHandler {

    /* renamed from: a  reason: collision with root package name */
    private MethodChannel f24593a;

    /* renamed from: b  reason: collision with root package name */
    private ContentResolver f24594b;

    private final String a() {
        ContentResolver contentResolver = this.f24594b;
        if (contentResolver == null) {
            m.s("contentResolver");
            contentResolver = null;
        }
        return Settings.Secure.getString(contentResolver, "android_id");
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        m.e(flutterPluginBinding, "flutterPluginBinding");
        this.f24594b = flutterPluginBinding.getApplicationContext().getContentResolver();
        MethodChannel methodChannel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "android_id");
        this.f24593a = methodChannel;
        methodChannel.setMethodCallHandler(this);
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding binding) {
        m.e(binding, "binding");
        MethodChannel methodChannel = this.f24593a;
        if (methodChannel == null) {
            m.s("channel");
            methodChannel = null;
        }
        methodChannel.setMethodCallHandler(null);
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall call, MethodChannel.Result result) {
        m.e(call, "call");
        m.e(result, "result");
        if (m.a(call.method, "getId")) {
            try {
                result.success(a());
                return;
            } catch (Exception e10) {
                result.error("ERROR_GETTING_ID", "Failed to get Android ID", e10.getLocalizedMessage());
                return;
            }
        }
        result.notImplemented();
    }
}
