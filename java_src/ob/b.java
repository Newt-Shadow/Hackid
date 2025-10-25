package ob;

import android.content.Context;
import android.content.Intent;
import com.pravera.flutter_foreground_task.service.ForegroundService;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.PluginRegistry;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import rb.r;
import rb.s;
/* loaded from: classes.dex */
public final class b implements FlutterPlugin, ActivityAware, s, PluginRegistry.NewIntentListener {

    /* renamed from: e  reason: collision with root package name */
    public static final a f27532e = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private r f27533a;

    /* renamed from: b  reason: collision with root package name */
    private com.pravera.flutter_foreground_task.service.a f27534b;

    /* renamed from: c  reason: collision with root package name */
    private ActivityPluginBinding f27535c;

    /* renamed from: d  reason: collision with root package name */
    private d f27536d;

    /* loaded from: classes.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Override // rb.s
    public com.pravera.flutter_foreground_task.service.a a() {
        com.pravera.flutter_foreground_task.service.a aVar = this.f27534b;
        if (aVar == null) {
            m.s("foregroundServiceManager");
            return null;
        }
        return aVar;
    }

    @Override // rb.s
    public r b() {
        r rVar = this.f27533a;
        if (rVar == null) {
            m.s("notificationPermissionManager");
            return null;
        }
        return rVar;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onAttachedToActivity(ActivityPluginBinding binding) {
        m.e(binding, "binding");
        d dVar = this.f27536d;
        d dVar2 = null;
        if (dVar == null) {
            m.s("methodCallHandler");
            dVar = null;
        }
        dVar.d(binding.getActivity());
        r rVar = this.f27533a;
        if (rVar == null) {
            m.s("notificationPermissionManager");
            rVar = null;
        }
        binding.addRequestPermissionsResultListener(rVar);
        d dVar3 = this.f27536d;
        if (dVar3 == null) {
            m.s("methodCallHandler");
        } else {
            dVar2 = dVar3;
        }
        binding.addActivityResultListener(dVar2);
        binding.addOnNewIntentListener(this);
        this.f27535c = binding;
        ForegroundService.f9495m.a(binding.getActivity().getIntent());
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding binding) {
        m.e(binding, "binding");
        this.f27533a = new r();
        this.f27534b = new com.pravera.flutter_foreground_task.service.a();
        Context applicationContext = binding.getApplicationContext();
        m.d(applicationContext, "getApplicationContext(...)");
        d dVar = new d(applicationContext, this);
        this.f27536d = dVar;
        BinaryMessenger binaryMessenger = binding.getBinaryMessenger();
        m.d(binaryMessenger, "getBinaryMessenger(...)");
        dVar.c(binaryMessenger);
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivity() {
        ActivityPluginBinding activityPluginBinding = this.f27535c;
        if (activityPluginBinding != null) {
            r rVar = this.f27533a;
            if (rVar == null) {
                m.s("notificationPermissionManager");
                rVar = null;
            }
            activityPluginBinding.removeRequestPermissionsResultListener(rVar);
        }
        ActivityPluginBinding activityPluginBinding2 = this.f27535c;
        if (activityPluginBinding2 != null) {
            d dVar = this.f27536d;
            if (dVar == null) {
                m.s("methodCallHandler");
                dVar = null;
            }
            activityPluginBinding2.removeActivityResultListener(dVar);
        }
        ActivityPluginBinding activityPluginBinding3 = this.f27535c;
        if (activityPluginBinding3 != null) {
            activityPluginBinding3.removeOnNewIntentListener(this);
        }
        this.f27535c = null;
        d dVar2 = this.f27536d;
        if (dVar2 == null) {
            m.s("methodCallHandler");
            dVar2 = null;
        }
        dVar2.d(null);
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivityForConfigChanges() {
        onDetachedFromActivity();
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding binding) {
        m.e(binding, "binding");
        d dVar = this.f27536d;
        if (dVar != null) {
            if (dVar == null) {
                m.s("methodCallHandler");
                dVar = null;
            }
            dVar.b();
        }
    }

    @Override // io.flutter.plugin.common.PluginRegistry.NewIntentListener
    public boolean onNewIntent(Intent intent) {
        m.e(intent, "intent");
        ForegroundService.f9495m.a(intent);
        return true;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onReattachedToActivityForConfigChanges(ActivityPluginBinding binding) {
        m.e(binding, "binding");
        onAttachedToActivity(binding);
    }
}
