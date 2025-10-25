package lc;

import android.content.Context;
import android.net.ConnectivityManager;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.EventChannel;
import io.flutter.plugin.common.MethodChannel;
/* loaded from: classes2.dex */
public class f implements FlutterPlugin {

    /* renamed from: a  reason: collision with root package name */
    private MethodChannel f25532a;

    /* renamed from: b  reason: collision with root package name */
    private EventChannel f25533b;

    /* renamed from: c  reason: collision with root package name */
    private d f25534c;

    private void a(BinaryMessenger binaryMessenger, Context context) {
        this.f25532a = new MethodChannel(binaryMessenger, "dev.fluttercommunity.plus/connectivity");
        this.f25533b = new EventChannel(binaryMessenger, "dev.fluttercommunity.plus/connectivity_status");
        a aVar = new a((ConnectivityManager) context.getSystemService("connectivity"));
        e eVar = new e(aVar);
        this.f25534c = new d(context, aVar);
        this.f25532a.setMethodCallHandler(eVar);
        this.f25533b.setStreamHandler(this.f25534c);
    }

    private void b() {
        this.f25532a.setMethodCallHandler(null);
        this.f25533b.setStreamHandler(null);
        this.f25534c.onCancel(null);
        this.f25532a = null;
        this.f25533b = null;
        this.f25534c = null;
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        a(flutterPluginBinding.getBinaryMessenger(), flutterPluginBinding.getApplicationContext());
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        b();
    }
}
