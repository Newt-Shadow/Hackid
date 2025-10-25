package oc;

import android.content.Context;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.MethodChannel;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public final class e implements FlutterPlugin, ActivityAware {

    /* renamed from: d  reason: collision with root package name */
    public static final a f27555d = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private d f27556a;

    /* renamed from: b  reason: collision with root package name */
    private dev.fluttercommunity.plus.share.a f27557b;

    /* renamed from: c  reason: collision with root package name */
    private MethodChannel f27558c;

    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onAttachedToActivity(ActivityPluginBinding binding) {
        m.e(binding, "binding");
        dev.fluttercommunity.plus.share.a aVar = this.f27557b;
        d dVar = null;
        if (aVar == null) {
            m.s("manager");
            aVar = null;
        }
        binding.addActivityResultListener(aVar);
        d dVar2 = this.f27556a;
        if (dVar2 == null) {
            m.s("share");
        } else {
            dVar = dVar2;
        }
        dVar.o(binding.getActivity());
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding binding) {
        m.e(binding, "binding");
        this.f27558c = new MethodChannel(binding.getBinaryMessenger(), "dev.fluttercommunity.plus/share");
        Context applicationContext = binding.getApplicationContext();
        m.d(applicationContext, "getApplicationContext(...)");
        this.f27557b = new dev.fluttercommunity.plus.share.a(applicationContext);
        Context applicationContext2 = binding.getApplicationContext();
        m.d(applicationContext2, "getApplicationContext(...)");
        dev.fluttercommunity.plus.share.a aVar = this.f27557b;
        MethodChannel methodChannel = null;
        if (aVar == null) {
            m.s("manager");
            aVar = null;
        }
        d dVar = new d(applicationContext2, null, aVar);
        this.f27556a = dVar;
        dev.fluttercommunity.plus.share.a aVar2 = this.f27557b;
        if (aVar2 == null) {
            m.s("manager");
            aVar2 = null;
        }
        oc.a aVar3 = new oc.a(dVar, aVar2);
        MethodChannel methodChannel2 = this.f27558c;
        if (methodChannel2 == null) {
            m.s("methodChannel");
        } else {
            methodChannel = methodChannel2;
        }
        methodChannel.setMethodCallHandler(aVar3);
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivity() {
        d dVar = this.f27556a;
        if (dVar == null) {
            m.s("share");
            dVar = null;
        }
        dVar.o(null);
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivityForConfigChanges() {
        onDetachedFromActivity();
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding binding) {
        m.e(binding, "binding");
        MethodChannel methodChannel = this.f27558c;
        if (methodChannel == null) {
            m.s("methodChannel");
            methodChannel = null;
        }
        methodChannel.setMethodCallHandler(null);
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onReattachedToActivityForConfigChanges(ActivityPluginBinding binding) {
        m.e(binding, "binding");
        onAttachedToActivity(binding);
    }
}
