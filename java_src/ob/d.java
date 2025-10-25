package ob;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.PluginRegistry;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.m;
import qb.j;
import rb.q;
import rb.s;
/* loaded from: classes.dex */
public final class d implements MethodChannel.MethodCallHandler, PluginRegistry.ActivityResultListener {

    /* renamed from: a  reason: collision with root package name */
    private final Context f27541a;

    /* renamed from: b  reason: collision with root package name */
    private final s f27542b;

    /* renamed from: c  reason: collision with root package name */
    private MethodChannel f27543c;

    /* renamed from: d  reason: collision with root package name */
    private Activity f27544d;

    /* renamed from: e  reason: collision with root package name */
    private Map f27545e;

    /* loaded from: classes.dex */
    public static final class a implements q {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ MethodChannel.Result f27546a;

        a(MethodChannel.Result result) {
            this.f27546a = result;
        }

        @Override // rb.q
        public void a(Exception exception) {
            m.e(exception, "exception");
            sb.a.f29576a.a(this.f27546a, exception);
        }

        @Override // rb.q
        public void b(j permissionStatus) {
            m.e(permissionStatus, "permissionStatus");
            this.f27546a.success(Integer.valueOf(permissionStatus.ordinal()));
        }
    }

    public d(Context context, s provider) {
        m.e(context, "context");
        m.e(provider, "provider");
        this.f27541a = context;
        this.f27542b = provider;
        this.f27545e = new LinkedHashMap();
    }

    private final Activity a() {
        Activity activity = this.f27544d;
        if (activity != null) {
            m.b(activity);
            return activity;
        }
        throw new pb.a();
    }

    public void b() {
        MethodChannel methodChannel = this.f27543c;
        if (methodChannel != null) {
            if (methodChannel == null) {
                m.s("channel");
                methodChannel = null;
            }
            methodChannel.setMethodCallHandler(null);
        }
    }

    public void c(BinaryMessenger messenger) {
        m.e(messenger, "messenger");
        MethodChannel methodChannel = new MethodChannel(messenger, "flutter_foreground_task/methods");
        this.f27543c = methodChannel;
        methodChannel.setMethodCallHandler(this);
    }

    public void d(Activity activity) {
        this.f27544d = activity;
    }

    @Override // io.flutter.plugin.common.PluginRegistry.ActivityResultListener
    public boolean onActivityResult(int i10, int i11, Intent intent) {
        MethodChannel.Result result = (MethodChannel.Result) this.f27545e.get(Integer.valueOf(i10));
        if (result == null) {
            return true;
        }
        switch (i10) {
            case 200:
                result.success(Boolean.valueOf(sb.d.f29579a.d(this.f27541a)));
                break;
            case 201:
                result.success(Boolean.valueOf(sb.d.f29579a.d(this.f27541a)));
                break;
            case 202:
                result.success(Boolean.valueOf(sb.d.f29579a.a(this.f27541a)));
                break;
            case 203:
                result.success(Boolean.valueOf(sb.d.f29579a.b(this.f27541a)));
                break;
        }
        return true;
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall call, MethodChannel.Result result) {
        m.e(call, "call");
        m.e(result, "result");
        Object obj = call.arguments;
        try {
            String str = call.method;
            if (str != null) {
                boolean z10 = true;
                switch (str.hashCode()) {
                    case -2070189206:
                        if (!str.equals("setOnLockScreenVisibility")) {
                            break;
                        } else {
                            Activity a10 = a();
                            if (obj instanceof Boolean) {
                                sb.d.f29579a.k(a10, ((Boolean) obj).booleanValue());
                                return;
                            }
                            return;
                        }
                    case -1401626951:
                        if (!str.equals("isAppOnForeground")) {
                            break;
                        } else {
                            result.success(Boolean.valueOf(sb.d.f29579a.c(this.f27541a)));
                            return;
                        }
                    case -958428903:
                        if (!str.equals("requestIgnoreBatteryOptimization")) {
                            break;
                        } else {
                            Activity a11 = a();
                            this.f27545e.put(200, result);
                            sb.d.f29579a.j(a11, 200);
                            return;
                        }
                    case -917901449:
                        if (!str.equals("canDrawOverlays")) {
                            break;
                        } else {
                            result.success(Boolean.valueOf(sb.d.f29579a.a(this.f27541a)));
                            return;
                        }
                    case -843699029:
                        if (!str.equals("wakeUpScreen")) {
                            break;
                        } else {
                            sb.d.f29579a.l(this.f27541a);
                            return;
                        }
                    case -830276983:
                        if (!str.equals("requestNotificationPermission")) {
                            break;
                        } else {
                            this.f27542b.b().e(a(), new a(result));
                            return;
                        }
                    case -802694078:
                        if (!str.equals("checkNotificationPermission")) {
                            break;
                        } else {
                            result.success(Integer.valueOf(this.f27542b.b().a(a()).ordinal()));
                            return;
                        }
                    case -675127954:
                        if (!str.equals("launchApp")) {
                            break;
                        } else {
                            if (obj != null) {
                                z10 = obj instanceof String;
                            }
                            if (z10) {
                                sb.d.f29579a.e(this.f27541a, (String) obj);
                                return;
                            }
                            return;
                        }
                    case -386121002:
                        if (!str.equals("openSystemAlertWindowSettings")) {
                            break;
                        } else {
                            Activity a12 = a();
                            this.f27545e.put(202, result);
                            sb.d.f29579a.i(a12, 202);
                            return;
                        }
                    case 310881216:
                        if (!str.equals("isRunningService")) {
                            break;
                        } else {
                            result.success(Boolean.valueOf(this.f27542b.a().a()));
                            return;
                        }
                    case 481665446:
                        if (!str.equals("restartService")) {
                            break;
                        } else {
                            this.f27542b.a().b(this.f27541a);
                            result.success(Boolean.TRUE);
                            return;
                        }
                    case 488202668:
                        if (!str.equals("updateService")) {
                            break;
                        } else {
                            this.f27542b.a().f(this.f27541a, obj);
                            result.success(Boolean.TRUE);
                            return;
                        }
                    case 677170851:
                        if (!str.equals("minimizeApp")) {
                            break;
                        } else {
                            sb.d.f29579a.f(a());
                            return;
                        }
                    case 699379795:
                        if (!str.equals("stopService")) {
                            break;
                        } else {
                            this.f27542b.a().e(this.f27541a);
                            result.success(Boolean.TRUE);
                            return;
                        }
                    case 827196186:
                        if (!str.equals("canScheduleExactAlarms")) {
                            break;
                        } else {
                            result.success(Boolean.valueOf(sb.d.f29579a.b(this.f27541a)));
                            return;
                        }
                    case 1246965586:
                        if (!str.equals("sendData")) {
                            break;
                        } else {
                            this.f27542b.a().c(obj);
                            return;
                        }
                    case 1263333587:
                        if (!str.equals("attachedActivity")) {
                            break;
                        } else {
                            if (this.f27544d == null) {
                                z10 = false;
                            }
                            result.success(Boolean.valueOf(z10));
                            return;
                        }
                    case 1465118721:
                        if (!str.equals("openIgnoreBatteryOptimizationSettings")) {
                            break;
                        } else {
                            Activity a13 = a();
                            this.f27545e.put(201, result);
                            sb.d.f29579a.h(a13, 201);
                            return;
                        }
                    case 1616958905:
                        if (!str.equals("openAlarmsAndRemindersSettings")) {
                            break;
                        } else {
                            Activity a14 = a();
                            this.f27545e.put(203, result);
                            sb.d.f29579a.g(a14, 203);
                            return;
                        }
                    case 1849706483:
                        if (!str.equals("startService")) {
                            break;
                        } else {
                            this.f27542b.a().d(this.f27541a, obj);
                            result.success(Boolean.TRUE);
                            return;
                        }
                    case 2079768210:
                        if (!str.equals("isIgnoringBatteryOptimizations")) {
                            break;
                        } else {
                            result.success(Boolean.valueOf(sb.d.f29579a.d(this.f27541a)));
                            return;
                        }
                }
            }
            result.notImplemented();
        } catch (Exception e10) {
            sb.a.f29576a.a(result, e10);
        }
    }
}
