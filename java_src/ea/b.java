package ea;

import android.app.Activity;
import fa.b0;
import fa.d0;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.PluginRegistry;
import io.flutter.view.TextureRegistry;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public final class b extends defpackage.a implements FlutterPlugin, ActivityAware {

    /* renamed from: a  reason: collision with root package name */
    private FlutterPlugin.FlutterPluginBinding f15447a;

    /* renamed from: b  reason: collision with root package name */
    private b0 f15448b;

    private final void d(Activity activity, BinaryMessenger binaryMessenger, d0.b bVar, TextureRegistry textureRegistry) {
        this.f15448b = new b0(activity, binaryMessenger, new d0(), bVar, textureRegistry);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(ActivityPluginBinding activityPluginBinding, PluginRegistry.RequestPermissionsResultListener requestPermissionsResultListener) {
        m.b(requestPermissionsResultListener);
        activityPluginBinding.addRequestPermissionsResultListener(requestPermissionsResultListener);
    }

    @Override // defpackage.a
    public void b(defpackage.b bVar) {
        b0 b0Var = this.f15448b;
        if (b0Var != null) {
            b0Var.g(bVar);
        }
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onAttachedToActivity(final ActivityPluginBinding binding) {
        m.e(binding, "binding");
        Activity activity = binding.getActivity();
        m.d(activity, "getActivity(...)");
        FlutterPlugin.FlutterPluginBinding flutterPluginBinding = this.f15447a;
        m.b(flutterPluginBinding);
        BinaryMessenger binaryMessenger = flutterPluginBinding.getBinaryMessenger();
        m.d(binaryMessenger, "getBinaryMessenger(...)");
        d0.b bVar = new d0.b() { // from class: ea.a
            @Override // fa.d0.b
            public final void a(PluginRegistry.RequestPermissionsResultListener requestPermissionsResultListener) {
                b.e(ActivityPluginBinding.this, requestPermissionsResultListener);
            }
        };
        FlutterPlugin.FlutterPluginBinding flutterPluginBinding2 = this.f15447a;
        m.b(flutterPluginBinding2);
        TextureRegistry textureRegistry = flutterPluginBinding2.getTextureRegistry();
        m.d(textureRegistry, "getTextureRegistry(...)");
        d(activity, binaryMessenger, bVar, textureRegistry);
        FlutterPlugin.FlutterPluginBinding flutterPluginBinding3 = this.f15447a;
        m.b(flutterPluginBinding3);
        io.flutter.embedding.engine.plugins.PluginRegistry plugins = flutterPluginBinding3.getFlutterEngine().getPlugins();
        m.d(plugins, "getPlugins(...)");
        a(plugins, "FlutterCameraPlugin", this);
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding binding) {
        m.e(binding, "binding");
        this.f15447a = binding;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivity() {
        b0 b0Var = this.f15448b;
        if (b0Var != null) {
            b0Var.h();
        }
        this.f15448b = null;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivityForConfigChanges() {
        onDetachedFromActivity();
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding binding) {
        m.e(binding, "binding");
        this.f15447a = null;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onReattachedToActivityForConfigChanges(ActivityPluginBinding binding) {
        m.e(binding, "binding");
        onAttachedToActivity(binding);
    }
}
