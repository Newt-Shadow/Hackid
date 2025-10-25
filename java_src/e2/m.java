package e2;

import android.app.Activity;
import android.content.Context;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodChannel;
/* loaded from: classes.dex */
public final class m implements FlutterPlugin, ActivityAware {

    /* renamed from: a  reason: collision with root package name */
    private q f15254a;

    /* renamed from: b  reason: collision with root package name */
    private MethodChannel f15255b;

    /* renamed from: c  reason: collision with root package name */
    private ActivityPluginBinding f15256c;

    /* renamed from: d  reason: collision with root package name */
    private l f15257d;

    private void a() {
        ActivityPluginBinding activityPluginBinding = this.f15256c;
        if (activityPluginBinding != null) {
            activityPluginBinding.removeActivityResultListener(this.f15254a);
            this.f15256c.removeRequestPermissionsResultListener(this.f15254a);
        }
    }

    private void b() {
        ActivityPluginBinding activityPluginBinding = this.f15256c;
        if (activityPluginBinding != null) {
            activityPluginBinding.addActivityResultListener(this.f15254a);
            this.f15256c.addRequestPermissionsResultListener(this.f15254a);
        }
    }

    private void c(Context context, BinaryMessenger binaryMessenger) {
        this.f15255b = new MethodChannel(binaryMessenger, "flutter.baseflow.com/permissions/methods");
        l lVar = new l(context, new a(), this.f15254a, new y());
        this.f15257d = lVar;
        this.f15255b.setMethodCallHandler(lVar);
    }

    private void d(Activity activity) {
        q qVar = this.f15254a;
        if (qVar != null) {
            qVar.h(activity);
        }
    }

    private void e() {
        this.f15255b.setMethodCallHandler(null);
        this.f15255b = null;
        this.f15257d = null;
    }

    private void f() {
        q qVar = this.f15254a;
        if (qVar != null) {
            qVar.h(null);
        }
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onAttachedToActivity(ActivityPluginBinding activityPluginBinding) {
        d(activityPluginBinding.getActivity());
        this.f15256c = activityPluginBinding;
        b();
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        this.f15254a = new q(flutterPluginBinding.getApplicationContext());
        c(flutterPluginBinding.getApplicationContext(), flutterPluginBinding.getBinaryMessenger());
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivity() {
        f();
        a();
        this.f15256c = null;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivityForConfigChanges() {
        onDetachedFromActivity();
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        e();
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onReattachedToActivityForConfigChanges(ActivityPluginBinding activityPluginBinding) {
        onAttachedToActivity(activityPluginBinding);
    }
}
