package ua;

import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import java.util.HashMap;
import kotlin.jvm.internal.m;
import org.apache.tika.metadata.ClimateForcast;
/* loaded from: classes.dex */
public final class a implements FlutterPlugin, MethodChannel.MethodCallHandler {

    /* renamed from: a  reason: collision with root package name */
    private MethodChannel f31081a;

    /* renamed from: b  reason: collision with root package name */
    private HashMap f31082b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    private HashMap f31083c = new HashMap();

    private final void a(String str, String str2, MethodChannel.Result result) {
        if (!this.f31082b.containsKey(str)) {
            result.error("404", "Source unregistered", "has no source for name:" + str);
        } else if (!this.f31083c.containsKey(str2)) {
            result.error("404", "Target unregistered", "has no target for name:" + str2);
        } else {
            defpackage.a aVar = (defpackage.a) this.f31082b.get(str);
            if (aVar != null) {
                aVar.b((b) this.f31083c.get(str2));
            }
            result.success(Boolean.TRUE);
        }
    }

    private final void d(String str, MethodChannel.Result result) {
        if (!this.f31082b.containsKey(str)) {
            result.error("404", "Source unregistered", "has no source for name:" + str);
            return;
        }
        defpackage.a aVar = (defpackage.a) this.f31082b.get(str);
        if (aVar != null) {
            aVar.b(null);
        }
        result.success(Boolean.TRUE);
    }

    public final void b(String className, defpackage.a source) {
        m.e(className, "className");
        m.e(source, "source");
        this.f31082b.put(className, source);
    }

    public final void c(String className, b target) {
        m.e(className, "className");
        m.e(target, "target");
        this.f31083c.put(className, target);
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        m.e(flutterPluginBinding, "flutterPluginBinding");
        MethodChannel methodChannel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "image_stream_binder");
        this.f31081a = methodChannel;
        methodChannel.setMethodCallHandler(this);
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding binding) {
        m.e(binding, "binding");
        MethodChannel methodChannel = this.f31081a;
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
        String str = call.method;
        if (m.a(str, "bind")) {
            Object argument = call.argument(ClimateForcast.SOURCE);
            m.c(argument, "null cannot be cast to non-null type kotlin.String");
            Object argument2 = call.argument("target");
            m.c(argument2, "null cannot be cast to non-null type kotlin.String");
            a((String) argument, (String) argument2, result);
        } else if (m.a(str, "unbind")) {
            Object argument3 = call.argument(ClimateForcast.SOURCE);
            m.c(argument3, "null cannot be cast to non-null type kotlin.String");
            d((String) argument3, result);
        } else {
            result.notImplemented();
        }
    }
}
