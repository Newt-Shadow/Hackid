package ic;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.util.Log;
import com.google.android.play.core.review.ReviewInfo;
import com.google.android.play.core.review.ReviewManager;
import com.google.android.play.core.review.ReviewManagerFactory;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import m6.Task;
import m6.f;
/* loaded from: classes2.dex */
public class d implements FlutterPlugin, MethodChannel.MethodCallHandler, ActivityAware {

    /* renamed from: a  reason: collision with root package name */
    private MethodChannel f17407a;

    /* renamed from: b  reason: collision with root package name */
    private Context f17408b;

    /* renamed from: c  reason: collision with root package name */
    private Activity f17409c;

    /* renamed from: d  reason: collision with root package name */
    private ReviewInfo f17410d;

    /* renamed from: e  reason: collision with root package name */
    private final String f17411e = "InAppReviewPlugin";

    private void d(final MethodChannel.Result result) {
        Log.i("InAppReviewPlugin", "cacheReviewInfo: called");
        if (m(result)) {
            return;
        }
        Task requestReviewFlow = ReviewManagerFactory.create(this.f17408b).requestReviewFlow();
        Log.i("InAppReviewPlugin", "cacheReviewInfo: Requesting review flow");
        requestReviewFlow.c(new f() { // from class: ic.b
            @Override // m6.f
            public final void onComplete(Task task) {
                d.this.h(result, task);
            }
        });
    }

    private void e(MethodChannel.Result result) {
        boolean z10;
        Log.i("InAppReviewPlugin", "isAvailable: called");
        if (l()) {
            result.success(Boolean.FALSE);
            return;
        }
        if (g() && f()) {
            z10 = true;
        } else {
            z10 = false;
        }
        Log.i("InAppReviewPlugin", "isAvailable: playStoreAndPlayServicesAvailable: " + z10);
        Log.i("InAppReviewPlugin", "isAvailable: lollipopOrLater: true");
        if (z10) {
            Log.i("InAppReviewPlugin", "isAvailable: Play Store, Play Services and Android version requirements met");
            d(result);
            return;
        }
        Log.w("InAppReviewPlugin", "isAvailable: The Play Store must be installed, Play Services must be available and Android 5 or later must be used");
        result.success(Boolean.FALSE);
    }

    private boolean f() {
        if (l5.f.m().g(this.f17408b) != 0) {
            Log.i("InAppReviewPlugin", "Google Play Services not available");
            return false;
        }
        return true;
    }

    private boolean g() {
        PackageManager.PackageInfoFlags of2;
        try {
            if (Build.VERSION.SDK_INT >= 33) {
                PackageManager packageManager = this.f17408b.getPackageManager();
                of2 = PackageManager.PackageInfoFlags.of(0L);
                packageManager.getPackageInfo("com.android.vending", of2);
                return true;
            }
            this.f17408b.getPackageManager().getPackageInfo("com.android.vending", 0);
            return true;
        } catch (PackageManager.NameNotFoundException unused) {
            Log.i("InAppReviewPlugin", "Play Store not installed.");
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h(MethodChannel.Result result, Task task) {
        if (task.p()) {
            Log.i("InAppReviewPlugin", "onComplete: Successfully requested review flow");
            this.f17410d = (ReviewInfo) task.l();
            result.success(Boolean.TRUE);
            return;
        }
        Log.w("InAppReviewPlugin", "onComplete: Unsuccessfully requested review flow");
        result.success(Boolean.FALSE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j(MethodChannel.Result result, ReviewManager reviewManager, Task task) {
        if (task.p()) {
            Log.i("InAppReviewPlugin", "onComplete: Successfully requested review flow");
            k(result, reviewManager, (ReviewInfo) task.l());
            return;
        }
        Log.w("InAppReviewPlugin", "onComplete: Unsuccessfully requested review flow");
        result.error("error", "In-App Review API unavailable", null);
    }

    private void k(final MethodChannel.Result result, ReviewManager reviewManager, ReviewInfo reviewInfo) {
        Log.i("InAppReviewPlugin", "launchReviewFlow: called");
        if (m(result)) {
            return;
        }
        reviewManager.launchReviewFlow(this.f17409c, reviewInfo).c(new f() { // from class: ic.c
            @Override // m6.f
            public final void onComplete(Task task) {
                MethodChannel.Result.this.success(null);
            }
        });
    }

    private boolean l() {
        Log.i("InAppReviewPlugin", "noContextOrActivity: called");
        if (this.f17408b == null) {
            Log.e("InAppReviewPlugin", "noContextOrActivity: Android context not available");
            return true;
        } else if (this.f17409c == null) {
            Log.e("InAppReviewPlugin", "noContextOrActivity: Android activity not available");
            return true;
        } else {
            return false;
        }
    }

    private boolean m(MethodChannel.Result result) {
        Log.i("InAppReviewPlugin", "noContextOrActivity: called");
        if (this.f17408b == null) {
            Log.e("InAppReviewPlugin", "noContextOrActivity: Android context not available");
            result.error("error", "Android context not available", null);
            return true;
        } else if (this.f17409c == null) {
            Log.e("InAppReviewPlugin", "noContextOrActivity: Android activity not available");
            result.error("error", "Android activity not available", null);
            return true;
        } else {
            return false;
        }
    }

    private void n(MethodChannel.Result result) {
        Log.i("InAppReviewPlugin", "openStoreListing: called");
        if (m(result)) {
            return;
        }
        String packageName = this.f17408b.getPackageName();
        this.f17409c.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://play.google.com/store/apps/details?id=" + packageName)));
        result.success(null);
    }

    private void o(final MethodChannel.Result result) {
        Log.i("InAppReviewPlugin", "requestReview: called");
        if (m(result)) {
            return;
        }
        final ReviewManager create = ReviewManagerFactory.create(this.f17408b);
        ReviewInfo reviewInfo = this.f17410d;
        if (reviewInfo != null) {
            k(result, create, reviewInfo);
            return;
        }
        Task requestReviewFlow = create.requestReviewFlow();
        Log.i("InAppReviewPlugin", "requestReview: Requesting review flow");
        requestReviewFlow.c(new f() { // from class: ic.a
            @Override // m6.f
            public final void onComplete(Task task) {
                d.this.j(result, create, task);
            }
        });
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onAttachedToActivity(ActivityPluginBinding activityPluginBinding) {
        this.f17409c = activityPluginBinding.getActivity();
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        MethodChannel methodChannel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "dev.britannio.in_app_review");
        this.f17407a = methodChannel;
        methodChannel.setMethodCallHandler(this);
        this.f17408b = flutterPluginBinding.getApplicationContext();
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivity() {
        this.f17409c = null;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivityForConfigChanges() {
        onDetachedFromActivity();
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        this.f17407a.setMethodCallHandler(null);
        this.f17408b = null;
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        Log.i("InAppReviewPlugin", "onMethodCall: " + methodCall.method);
        String str = methodCall.method;
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case 159262157:
                if (str.equals("openStoreListing")) {
                    c10 = 0;
                    break;
                }
                break;
            case 444517567:
                if (str.equals("isAvailable")) {
                    c10 = 1;
                    break;
                }
                break;
            case 1361080007:
                if (str.equals("requestReview")) {
                    c10 = 2;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                n(result);
                return;
            case 1:
                e(result);
                return;
            case 2:
                o(result);
                return;
            default:
                result.notImplemented();
                return;
        }
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onReattachedToActivityForConfigChanges(ActivityPluginBinding activityPluginBinding) {
        onAttachedToActivity(activityPluginBinding);
    }
}
