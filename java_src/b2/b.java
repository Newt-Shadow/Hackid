package b2;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import androidx.browser.customtabs.d;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.PluginRegistry;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import xc.t;
/* loaded from: classes.dex */
public final class b implements FlutterPlugin, MethodChannel.MethodCallHandler, ActivityAware, PluginRegistry.ActivityResultListener {

    /* renamed from: d  reason: collision with root package name */
    public static final a f3751d = new a(null);

    /* renamed from: e  reason: collision with root package name */
    private static MethodChannel.Result f3752e;

    /* renamed from: f  reason: collision with root package name */
    private static id.a f3753f;

    /* renamed from: a  reason: collision with root package name */
    private final int f3754a = 1001;

    /* renamed from: b  reason: collision with root package name */
    private MethodChannel f3755b;

    /* renamed from: c  reason: collision with root package name */
    private ActivityPluginBinding f3756c;

    /* loaded from: classes.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final t b(Activity activity) {
        Intent launchIntentForPackage = activity.getPackageManager().getLaunchIntentForPackage(activity.getPackageName());
        if (launchIntentForPackage != null) {
            launchIntentForPackage.setPackage(null);
        }
        if (launchIntentForPackage != null) {
            launchIntentForPackage.setFlags(67108864);
        }
        activity.startActivity(launchIntentForPackage);
        return t.f32733a;
    }

    @Override // io.flutter.plugin.common.PluginRegistry.ActivityResultListener
    public boolean onActivityResult(int i10, int i11, Intent intent) {
        MethodChannel.Result result;
        if (i10 == this.f3754a && (result = f3752e) != null) {
            result.error("authorization-error/canceled", "The user closed the Custom Tab", null);
            f3752e = null;
            f3753f = null;
            return false;
        }
        return false;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onAttachedToActivity(ActivityPluginBinding binding) {
        m.e(binding, "binding");
        this.f3756c = binding;
        binding.addActivityResultListener(this);
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        m.e(flutterPluginBinding, "flutterPluginBinding");
        MethodChannel methodChannel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "com.aboutyou.dart_packages.sign_in_with_apple");
        this.f3755b = methodChannel;
        methodChannel.setMethodCallHandler(this);
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivity() {
        ActivityPluginBinding activityPluginBinding = this.f3756c;
        if (activityPluginBinding != null) {
            activityPluginBinding.removeActivityResultListener(this);
        }
        this.f3756c = null;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivityForConfigChanges() {
        onDetachedFromActivity();
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding binding) {
        m.e(binding, "binding");
        MethodChannel methodChannel = this.f3755b;
        if (methodChannel != null) {
            methodChannel.setMethodCallHandler(null);
        }
        this.f3755b = null;
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall call, MethodChannel.Result result) {
        final Activity activity;
        m.e(call, "call");
        m.e(result, "result");
        String str = call.method;
        if (m.a(str, "isAvailable")) {
            result.success(Boolean.TRUE);
        } else if (m.a(str, "performAuthorizationRequest")) {
            ActivityPluginBinding activityPluginBinding = this.f3756c;
            if (activityPluginBinding != null) {
                activity = activityPluginBinding.getActivity();
            } else {
                activity = null;
            }
            if (activity == null) {
                result.error("MISSING_ACTIVITY", "Plugin is not attached to an activity", call.arguments);
                return;
            }
            String str2 = (String) call.argument("url");
            if (str2 == null) {
                result.error("MISSING_ARG", "Missing 'url' argument", call.arguments);
                return;
            }
            MethodChannel.Result result2 = f3752e;
            if (result2 != null) {
                result2.error("NEW_REQUEST", "A new request came in while this was still pending. The previous request (this one) was then cancelled.", null);
            }
            id.a aVar = f3753f;
            if (aVar != null) {
                m.b(aVar);
                aVar.invoke();
            }
            f3752e = result;
            f3753f = new id.a() { // from class: b2.a
                @Override // id.a
                public final Object invoke() {
                    t b10;
                    b10 = b.b(activity);
                    return b10;
                }
            };
            d b10 = new d.C0021d().b();
            m.d(b10, "build(...)");
            b10.f1780a.setData(Uri.parse(str2));
            activity.startActivityForResult(b10.f1780a, this.f3754a, b10.f1781b);
        } else {
            result.notImplemented();
        }
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onReattachedToActivityForConfigChanges(ActivityPluginBinding binding) {
        m.e(binding, "binding");
        onAttachedToActivity(binding);
    }
}
