package cb;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import androidx.lifecycle.DefaultLifecycleObserver;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.embedding.engine.plugins.lifecycle.FlutterLifecycleAdapter;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.EventChannel;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import java.util.ArrayList;
import java.util.HashMap;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import rd.b0;
/* loaded from: classes.dex */
public final class d implements MethodChannel.MethodCallHandler, FlutterPlugin, ActivityAware {

    /* renamed from: i  reason: collision with root package name */
    public static final a f5136i = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private ActivityPluginBinding f5137a;

    /* renamed from: b  reason: collision with root package name */
    private cb.c f5138b;

    /* renamed from: c  reason: collision with root package name */
    private Application f5139c;

    /* renamed from: d  reason: collision with root package name */
    private FlutterPlugin.FlutterPluginBinding f5140d;

    /* renamed from: e  reason: collision with root package name */
    private androidx.lifecycle.i f5141e;

    /* renamed from: f  reason: collision with root package name */
    private b f5142f;

    /* renamed from: g  reason: collision with root package name */
    private Activity f5143g;

    /* renamed from: h  reason: collision with root package name */
    private MethodChannel f5144h;

    /* loaded from: classes.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:31:0x0055 A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:32:0x0058 A[ORIG_RETURN, RETURN] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.String b(java.lang.String r2) {
            /*
                r1 = this;
                int r0 = r2.hashCode()
                switch(r0) {
                    case -1349088399: goto L4c;
                    case 96748: goto L43;
                    case 99469: goto L38;
                    case 93166550: goto L2c;
                    case 100313435: goto L20;
                    case 103772132: goto L14;
                    case 112202875: goto L8;
                    default: goto L7;
                }
            L7:
                goto L58
            L8:
                java.lang.String r0 = "video"
                boolean r2 = r2.equals(r0)
                if (r2 != 0) goto L11
                goto L58
            L11:
                java.lang.String r2 = "video/*"
                goto L59
            L14:
                java.lang.String r0 = "media"
                boolean r2 = r2.equals(r0)
                if (r2 != 0) goto L1d
                goto L58
            L1d:
                java.lang.String r2 = "image/*,video/*"
                goto L59
            L20:
                java.lang.String r0 = "image"
                boolean r2 = r2.equals(r0)
                if (r2 != 0) goto L29
                goto L58
            L29:
                java.lang.String r2 = "image/*"
                goto L59
            L2c:
                java.lang.String r0 = "audio"
                boolean r2 = r2.equals(r0)
                if (r2 != 0) goto L35
                goto L58
            L35:
                java.lang.String r2 = "audio/*"
                goto L59
            L38:
                java.lang.String r0 = "dir"
                boolean r2 = r2.equals(r0)
                if (r2 != 0) goto L41
                goto L58
            L41:
                r2 = r0
                goto L59
            L43:
                java.lang.String r0 = "any"
                boolean r2 = r2.equals(r0)
                if (r2 != 0) goto L55
                goto L58
            L4c:
                java.lang.String r0 = "custom"
                boolean r2 = r2.equals(r0)
                if (r2 != 0) goto L55
                goto L58
            L55:
            */
            //  java.lang.String r2 = "*/*"
            /*
                goto L59
            L58:
                r2 = 0
            L59:
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: cb.d.a.b(java.lang.String):java.lang.String");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public final class b implements Application.ActivityLifecycleCallbacks, DefaultLifecycleObserver {

        /* renamed from: a  reason: collision with root package name */
        private final Activity f5145a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ d f5146b;

        public b(d dVar, Activity thisActivity) {
            m.e(thisActivity, "thisActivity");
            this.f5146b = dVar;
            this.f5145a = thisActivity;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            m.e(activity, "activity");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            m.e(activity, "activity");
            if (this.f5145a == activity && activity.getApplicationContext() != null) {
                Context applicationContext = activity.getApplicationContext();
                m.c(applicationContext, "null cannot be cast to non-null type android.app.Application");
                ((Application) applicationContext).unregisterActivityLifecycleCallbacks(this);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            m.e(activity, "activity");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            m.e(activity, "activity");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle outState) {
            m.e(activity, "activity");
            m.e(outState, "outState");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            m.e(activity, "activity");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            m.e(activity, "activity");
        }

        @Override // androidx.lifecycle.DefaultLifecycleObserver
        public void onCreate(androidx.lifecycle.m owner) {
            m.e(owner, "owner");
        }

        @Override // androidx.lifecycle.DefaultLifecycleObserver
        public void onDestroy(androidx.lifecycle.m owner) {
            m.e(owner, "owner");
            onActivityDestroyed(this.f5145a);
        }

        @Override // androidx.lifecycle.DefaultLifecycleObserver
        public void onPause(androidx.lifecycle.m owner) {
            m.e(owner, "owner");
        }

        @Override // androidx.lifecycle.DefaultLifecycleObserver
        public void onResume(androidx.lifecycle.m owner) {
            m.e(owner, "owner");
        }

        @Override // androidx.lifecycle.DefaultLifecycleObserver
        public void onStart(androidx.lifecycle.m owner) {
            m.e(owner, "owner");
        }

        @Override // androidx.lifecycle.DefaultLifecycleObserver
        public void onStop(androidx.lifecycle.m owner) {
            m.e(owner, "owner");
            onActivityStopped(this.f5145a);
        }
    }

    /* loaded from: classes.dex */
    public static final class c implements EventChannel.StreamHandler {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ cb.c f5147a;

        c(cb.c cVar) {
            this.f5147a = cVar;
        }

        @Override // io.flutter.plugin.common.EventChannel.StreamHandler
        public void onCancel(Object obj) {
            this.f5147a.s(null);
        }

        @Override // io.flutter.plugin.common.EventChannel.StreamHandler
        public void onListen(Object obj, EventChannel.EventSink eventSink) {
            this.f5147a.s(eventSink);
        }
    }

    private final void a(BinaryMessenger binaryMessenger, Application application, Activity activity, ActivityPluginBinding activityPluginBinding) {
        this.f5143g = activity;
        this.f5139c = application;
        this.f5138b = new cb.c(activity, null, 2, null);
        MethodChannel methodChannel = new MethodChannel(binaryMessenger, "miguelruivo.flutter.plugins.filepicker");
        this.f5144h = methodChannel;
        methodChannel.setMethodCallHandler(this);
        cb.c cVar = this.f5138b;
        if (cVar != null) {
            new EventChannel(binaryMessenger, "miguelruivo.flutter.plugins.filepickerevent").setStreamHandler(new c(cVar));
            this.f5142f = new b(this, activity);
            activityPluginBinding.addActivityResultListener(cVar);
            androidx.lifecycle.i activityLifecycle = FlutterLifecycleAdapter.getActivityLifecycle(activityPluginBinding);
            this.f5141e = activityLifecycle;
            b bVar = this.f5142f;
            if (bVar != null && activityLifecycle != null) {
                activityLifecycle.a(bVar);
            }
        }
    }

    private final void b() {
        ActivityPluginBinding activityPluginBinding;
        cb.c cVar = this.f5138b;
        if (cVar != null && (activityPluginBinding = this.f5137a) != null) {
            activityPluginBinding.removeActivityResultListener(cVar);
        }
        this.f5137a = null;
        b bVar = this.f5142f;
        if (bVar != null) {
            androidx.lifecycle.i iVar = this.f5141e;
            if (iVar != null) {
                iVar.c(bVar);
            }
            Application application = this.f5139c;
            if (application != null) {
                application.unregisterActivityLifecycleCallbacks(bVar);
            }
        }
        this.f5141e = null;
        cb.c cVar2 = this.f5138b;
        if (cVar2 != null) {
            cVar2.s(null);
        }
        this.f5138b = null;
        MethodChannel methodChannel = this.f5144h;
        if (methodChannel != null) {
            methodChannel.setMethodCallHandler(null);
        }
        this.f5144h = null;
        this.f5139c = null;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onAttachedToActivity(ActivityPluginBinding binding) {
        m.e(binding, "binding");
        this.f5137a = binding;
        FlutterPlugin.FlutterPluginBinding flutterPluginBinding = this.f5140d;
        if (flutterPluginBinding != null) {
            BinaryMessenger binaryMessenger = flutterPluginBinding.getBinaryMessenger();
            m.d(binaryMessenger, "getBinaryMessenger(...)");
            Context applicationContext = flutterPluginBinding.getApplicationContext();
            m.c(applicationContext, "null cannot be cast to non-null type android.app.Application");
            ActivityPluginBinding activityPluginBinding = this.f5137a;
            m.b(activityPluginBinding);
            Activity activity = activityPluginBinding.getActivity();
            m.d(activity, "getActivity(...)");
            ActivityPluginBinding activityPluginBinding2 = this.f5137a;
            m.b(activityPluginBinding2);
            a(binaryMessenger, (Application) applicationContext, activity, activityPluginBinding2);
        }
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding binding) {
        m.e(binding, "binding");
        this.f5140d = binding;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivity() {
        b();
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivityForConfigChanges() {
        onDetachedFromActivity();
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding binding) {
        m.e(binding, "binding");
        this.f5140d = null;
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall call, MethodChannel.Result rawResult) {
        HashMap hashMap;
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5;
        Object obj6;
        Object obj7;
        Object obj8;
        Object obj9;
        Object obj10;
        boolean N;
        Context applicationContext;
        m.e(call, "call");
        m.e(rawResult, "rawResult");
        Object obj11 = null;
        if (this.f5143g == null) {
            rawResult.error("no_activity", "file picker plugin requires a foreground activity", null);
            return;
        }
        j jVar = new j(rawResult);
        Object obj12 = call.arguments;
        if (obj12 instanceof HashMap) {
            hashMap = (HashMap) obj12;
        } else {
            hashMap = null;
        }
        String str = call.method;
        if (str != null) {
            int hashCode = str.hashCode();
            boolean z10 = true;
            if (hashCode != -1349088399) {
                if (hashCode != 3522941) {
                    if (hashCode == 94746189 && str.equals("clear")) {
                        Activity activity = this.f5143g;
                        if (activity != null && (applicationContext = activity.getApplicationContext()) != null) {
                            obj11 = Boolean.valueOf(f.f(applicationContext));
                        }
                        jVar.success(obj11);
                        return;
                    }
                } else if (str.equals("save")) {
                    a aVar = f5136i;
                    if (hashMap != null) {
                        obj7 = hashMap.get("fileType");
                    } else {
                        obj7 = null;
                    }
                    m.c(obj7, "null cannot be cast to non-null type kotlin.String");
                    String b10 = aVar.b((String) obj7);
                    if (hashMap != null) {
                        obj8 = hashMap.get("initialDirectory");
                    } else {
                        obj8 = null;
                    }
                    String str2 = (String) obj8;
                    if (hashMap != null) {
                        obj9 = hashMap.get("bytes");
                    } else {
                        obj9 = null;
                    }
                    byte[] bArr = (byte[]) obj9;
                    if (hashMap != null) {
                        obj10 = hashMap.get("fileName");
                    } else {
                        obj10 = null;
                    }
                    String valueOf = String.valueOf(obj10);
                    if (valueOf.length() <= 0) {
                        z10 = false;
                    }
                    if (z10) {
                        N = b0.N(valueOf, ".", false, 2, null);
                        if (!N) {
                            valueOf = valueOf + '.' + f.f5148a.l(bArr);
                        }
                    }
                    String str3 = valueOf;
                    cb.c cVar = this.f5138b;
                    if (cVar != null) {
                        f.f5148a.A(cVar, str3, b10, str2, bArr, jVar);
                        return;
                    }
                    return;
                }
            } else if (str.equals("custom")) {
                f fVar = f.f5148a;
                if (hashMap != null) {
                    obj4 = hashMap.get("allowedExtensions");
                } else {
                    obj4 = null;
                }
                ArrayList p10 = fVar.p((ArrayList) obj4);
                if (p10 != null && !p10.isEmpty()) {
                    z10 = false;
                }
                if (z10) {
                    jVar.error("FilePicker", "Unsupported filter. Ensure using extension without dot (e.g., jpg, not .jpg).", null);
                    return;
                }
                cb.c cVar2 = this.f5138b;
                if (cVar2 != null) {
                    String b11 = f5136i.b(str);
                    if (hashMap != null) {
                        obj5 = hashMap.get("allowMultipleSelection");
                    } else {
                        obj5 = null;
                    }
                    Boolean bool = (Boolean) obj5;
                    if (hashMap != null) {
                        obj6 = hashMap.get("withData");
                    } else {
                        obj6 = null;
                    }
                    Boolean bool2 = (Boolean) obj6;
                    if (hashMap != null) {
                        obj11 = hashMap.get("compressionQuality");
                    }
                    fVar.C(cVar2, b11, bool, bool2, p10, (Integer) obj11, jVar);
                    return;
                }
                return;
            }
        }
        a aVar2 = f5136i;
        m.b(str);
        String b12 = aVar2.b(str);
        if (b12 == null) {
            jVar.notImplemented();
            return;
        }
        cb.c cVar3 = this.f5138b;
        if (cVar3 != null) {
            f fVar2 = f.f5148a;
            if (hashMap != null) {
                obj = hashMap.get("allowMultipleSelection");
            } else {
                obj = null;
            }
            Boolean bool3 = (Boolean) obj;
            if (hashMap != null) {
                obj2 = hashMap.get("withData");
            } else {
                obj2 = null;
            }
            Boolean bool4 = (Boolean) obj2;
            if (hashMap != null) {
                obj3 = hashMap.get("allowedExtensions");
            } else {
                obj3 = null;
            }
            ArrayList p11 = fVar2.p((ArrayList) obj3);
            if (hashMap != null) {
                obj11 = hashMap.get("compressionQuality");
            }
            fVar2.C(cVar3, b12, bool3, bool4, p11, (Integer) obj11, jVar);
        }
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onReattachedToActivityForConfigChanges(ActivityPluginBinding binding) {
        m.e(binding, "binding");
        onAttachedToActivity(binding);
    }
}
