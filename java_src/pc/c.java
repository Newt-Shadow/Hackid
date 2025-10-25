package pc;

import defpackage.h;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.BinaryMessenger;
import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public final class c implements FlutterPlugin, h, ActivityAware {

    /* renamed from: a  reason: collision with root package name */
    private b f27917a;

    @Override // defpackage.h
    public void a(d msg) {
        m.e(msg, "msg");
        b bVar = this.f27917a;
        m.b(bVar);
        bVar.d(msg);
    }

    @Override // defpackage.h
    public defpackage.c isEnabled() {
        b bVar = this.f27917a;
        m.b(bVar);
        return bVar.b();
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onAttachedToActivity(ActivityPluginBinding binding) {
        m.e(binding, "binding");
        b bVar = this.f27917a;
        if (bVar != null) {
            bVar.c(binding.getActivity());
        }
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        m.e(flutterPluginBinding, "flutterPluginBinding");
        h.a aVar = h.f16438g0;
        BinaryMessenger binaryMessenger = flutterPluginBinding.getBinaryMessenger();
        m.d(binaryMessenger, "getBinaryMessenger(...)");
        aVar.f(binaryMessenger, this);
        this.f27917a = new b();
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivity() {
        b bVar = this.f27917a;
        if (bVar != null) {
            bVar.c(null);
        }
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivityForConfigChanges() {
        onDetachedFromActivity();
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding binding) {
        m.e(binding, "binding");
        h.a aVar = h.f16438g0;
        BinaryMessenger binaryMessenger = binding.getBinaryMessenger();
        m.d(binaryMessenger, "getBinaryMessenger(...)");
        aVar.f(binaryMessenger, null);
        this.f27917a = null;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onReattachedToActivityForConfigChanges(ActivityPluginBinding binding) {
        m.e(binding, "binding");
        onAttachedToActivity(binding);
    }
}
