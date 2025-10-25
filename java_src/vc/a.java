package vc;

import android.content.Context;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodChannel;
import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public final class a implements FlutterPlugin {

    /* renamed from: a  reason: collision with root package name */
    private MethodChannel f31346a;

    private final void a(BinaryMessenger binaryMessenger, Context context) {
        this.f31346a = new MethodChannel(binaryMessenger, "PonnamKarthik/fluttertoast");
        e eVar = new e(context);
        MethodChannel methodChannel = this.f31346a;
        if (methodChannel != null) {
            methodChannel.setMethodCallHandler(eVar);
        }
    }

    private final void b() {
        MethodChannel methodChannel = this.f31346a;
        if (methodChannel != null) {
            methodChannel.setMethodCallHandler(null);
        }
        this.f31346a = null;
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
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding p02) {
        m.e(p02, "p0");
        b();
    }
}
