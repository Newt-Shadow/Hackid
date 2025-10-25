package db;

import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.MethodChannel;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public final class a implements FlutterPlugin {

    /* renamed from: a  reason: collision with root package name */
    private MethodChannel f15129a;

    /* renamed from: b  reason: collision with root package name */
    private b f15130b = new b();

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        m.e(flutterPluginBinding, "flutterPluginBinding");
        MethodChannel methodChannel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "disk_space_plus");
        this.f15129a = methodChannel;
        methodChannel.setMethodCallHandler(this.f15130b);
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding binding) {
        m.e(binding, "binding");
        MethodChannel methodChannel = this.f15129a;
        if (methodChannel == null) {
            m.s("channel");
            methodChannel = null;
        }
        methodChannel.setMethodCallHandler(null);
    }
}
