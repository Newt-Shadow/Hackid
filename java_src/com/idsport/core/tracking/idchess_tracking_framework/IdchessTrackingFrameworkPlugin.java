package com.idsport.core.tracking.idchess_tracking_framework;

import android.content.res.AssetManager;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public final class IdchessTrackingFrameworkPlugin implements FlutterPlugin, MethodChannel.MethodCallHandler {

    /* renamed from: a  reason: collision with root package name */
    private MethodChannel f9372a;

    public IdchessTrackingFrameworkPlugin() {
        System.loadLibrary("idchess_tracking");
    }

    private final native void setupAssetManager(AssetManager assetManager);

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        m.e(flutterPluginBinding, "flutterPluginBinding");
        MethodChannel methodChannel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "idchess_tracking_framework");
        this.f9372a = methodChannel;
        methodChannel.setMethodCallHandler(this);
        AssetManager assets = flutterPluginBinding.getApplicationContext().getAssets();
        m.d(assets, "getAssets(...)");
        setupAssetManager(assets);
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding binding) {
        m.e(binding, "binding");
        MethodChannel methodChannel = this.f9372a;
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
        if (m.a(call.method, "getCoreVersion")) {
            result.success("0.0.1");
        } else {
            result.notImplemented();
        }
    }
}
