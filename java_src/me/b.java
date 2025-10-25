package me;

import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.platform.PlatformViewRegistry;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public final class b implements FlutterPlugin, ActivityAware {

    /* renamed from: a  reason: collision with root package name */
    public static final a f26023a = new a(null);

    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onAttachedToActivity(ActivityPluginBinding activityPluginBinding) {
        m.e(activityPluginBinding, "activityPluginBinding");
        h hVar = h.f26045a;
        hVar.c(activityPluginBinding.getActivity());
        hVar.d(activityPluginBinding);
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        m.e(flutterPluginBinding, "flutterPluginBinding");
        PlatformViewRegistry platformViewRegistry = flutterPluginBinding.getPlatformViewRegistry();
        BinaryMessenger binaryMessenger = flutterPluginBinding.getBinaryMessenger();
        m.d(binaryMessenger, "getBinaryMessenger(...)");
        platformViewRegistry.registerViewFactory("net.touchcapture.qr.flutterqr/qrview", new f(binaryMessenger));
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivity() {
        h hVar = h.f26045a;
        hVar.c(null);
        hVar.d(null);
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivityForConfigChanges() {
        h hVar = h.f26045a;
        hVar.c(null);
        hVar.d(null);
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding binding) {
        m.e(binding, "binding");
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onReattachedToActivityForConfigChanges(ActivityPluginBinding activityPluginBinding) {
        m.e(activityPluginBinding, "activityPluginBinding");
        h hVar = h.f26045a;
        hVar.c(activityPluginBinding.getActivity());
        hVar.d(activityPluginBinding);
    }
}
