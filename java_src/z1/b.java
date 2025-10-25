package z1;

import android.app.Activity;
import android.content.Context;
import android.os.PowerManager;
import android.provider.Settings;
import android.view.WindowManager;
import id.l;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.EventChannel;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import java.lang.reflect.Field;
import kotlin.jvm.internal.d0;
import kotlin.jvm.internal.m;
import kotlin.jvm.internal.p;
import ld.d;
import pd.k;
import xc.t;
/* loaded from: classes.dex */
public final class b implements FlutterPlugin, MethodChannel.MethodCallHandler, ActivityAware {

    /* renamed from: h  reason: collision with root package name */
    static final /* synthetic */ k[] f33366h = {d0.d(new p(b.class, "systemBrightness", "getSystemBrightness()F", 0)), d0.d(new p(b.class, "maximumBrightness", "getMaximumBrightness()F", 0))};

    /* renamed from: a  reason: collision with root package name */
    private MethodChannel f33367a;

    /* renamed from: b  reason: collision with root package name */
    private EventChannel f33368b;

    /* renamed from: c  reason: collision with root package name */
    private a2.b f33369c;

    /* renamed from: d  reason: collision with root package name */
    private Activity f33370d;

    /* renamed from: e  reason: collision with root package name */
    private final d f33371e;

    /* renamed from: f  reason: collision with root package name */
    private final d f33372f;

    /* renamed from: g  reason: collision with root package name */
    private Float f33373g;

    public b() {
        ld.a aVar = ld.a.f25535a;
        this.f33371e = aVar.a();
        this.f33372f = aVar.a();
    }

    private final float b() {
        return ((Number) this.f33372f.a(this, f33366h[1])).floatValue();
    }

    private final float c(Context context) {
        Object obj;
        try {
            PowerManager powerManager = (PowerManager) context.getSystemService("power");
            if (powerManager != null) {
                Field[] declaredFields = powerManager.getClass().getDeclaredFields();
                m.d(declaredFields, "getDeclaredFields(...)");
                for (Field field : declaredFields) {
                    if (field.getName().equals("BRIGHTNESS_ON")) {
                        field.setAccessible(true);
                        m.c(field.get(powerManager), "null cannot be cast to non-null type kotlin.Int");
                        return ((Integer) obj).intValue();
                    }
                }
                return 255.0f;
            }
            throw new ClassNotFoundException();
        } catch (Exception unused) {
            return 255.0f;
        }
    }

    private final float d() {
        return ((Number) this.f33371e.a(this, f33366h[0])).floatValue();
    }

    private final float e(Context context) {
        return Settings.System.getInt(context.getContentResolver(), "screen_brightness") / b();
    }

    private final void f(float f10) {
        a2.b bVar = this.f33369c;
        if (bVar != null) {
            bVar.b(f10);
        }
    }

    private final void g(MethodChannel.Result result) {
        boolean z10;
        Activity activity = this.f33370d;
        if (activity == null) {
            result.error("-10", "Unexpected error on activity binding", null);
            return;
        }
        WindowManager.LayoutParams attributes = activity.getWindow().getAttributes();
        m.d(attributes, "getAttributes(...)");
        Float valueOf = Float.valueOf(attributes.screenBrightness);
        if (Math.signum(valueOf.floatValue()) == -1.0f) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            result.success(valueOf);
            return;
        }
        try {
            result.success(Float.valueOf(e(activity)));
        } catch (Settings.SettingNotFoundException e10) {
            e10.printStackTrace();
            result.error("-11", "Could not found system setting screen brightness value", null);
        }
    }

    private final void h(MethodChannel.Result result) {
        result.success(Float.valueOf(d()));
    }

    private final void i(MethodChannel.Result result) {
        boolean z10;
        if (this.f33373g != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        result.success(Boolean.valueOf(z10));
    }

    private final void j(MethodChannel.Result result) {
        if (this.f33370d == null) {
            result.error("-10", "Unexpected error on activity binding", null);
        } else if (!o(-1.0f)) {
            result.error("-1", "Unable to change screen brightness", null);
        } else {
            this.f33373g = null;
            f(d());
            result.success(null);
        }
    }

    private final void k(MethodCall methodCall, MethodChannel.Result result) {
        Double d10;
        Float f10;
        if (this.f33370d == null) {
            result.error("-10", "Unexpected error on activity binding", null);
            return;
        }
        Object argument = methodCall.argument("brightness");
        if (argument instanceof Double) {
            d10 = (Double) argument;
        } else {
            d10 = null;
        }
        if (d10 != null) {
            f10 = Float.valueOf((float) d10.doubleValue());
        } else {
            f10 = null;
        }
        if (f10 == null) {
            result.error("-2", "Unexpected error on null brightness", null);
        } else if (!o(f10.floatValue())) {
            result.error("-1", "Unable to change screen brightness", null);
        } else {
            this.f33373g = f10;
            f(f10.floatValue());
            result.success(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final t l(b bVar, ActivityPluginBinding activityPluginBinding, EventChannel.EventSink eventSink) {
        m.e(eventSink, "eventSink");
        Activity activity = activityPluginBinding.getActivity();
        m.d(activity, "getActivity(...)");
        bVar.n(bVar.e(activity));
        if (bVar.f33373g == null) {
            eventSink.success(Float.valueOf(bVar.d()));
        }
        return t.f32733a;
    }

    private final void m(float f10) {
        this.f33372f.b(this, f33366h[1], Float.valueOf(f10));
    }

    private final void n(float f10) {
        this.f33371e.b(this, f33366h[0], Float.valueOf(f10));
    }

    private final boolean o(float f10) {
        try {
            Activity activity = this.f33370d;
            m.b(activity);
            WindowManager.LayoutParams attributes = activity.getWindow().getAttributes();
            m.d(attributes, "getAttributes(...)");
            attributes.screenBrightness = f10;
            Activity activity2 = this.f33370d;
            m.b(activity2);
            activity2.getWindow().setAttributes(attributes);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onAttachedToActivity(final ActivityPluginBinding binding) {
        m.e(binding, "binding");
        this.f33370d = binding.getActivity();
        Activity activity = binding.getActivity();
        m.d(activity, "getActivity(...)");
        l lVar = new l() { // from class: z1.a
            @Override // id.l
            public final Object invoke(Object obj) {
                t l10;
                l10 = b.l(b.this, binding, (EventChannel.EventSink) obj);
                return l10;
            }
        };
        EventChannel eventChannel = null;
        this.f33369c = new a2.b(activity, null, lVar);
        EventChannel eventChannel2 = this.f33368b;
        if (eventChannel2 == null) {
            m.s("currentBrightnessChangeEventChannel");
        } else {
            eventChannel = eventChannel2;
        }
        eventChannel.setStreamHandler(this.f33369c);
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        m.e(flutterPluginBinding, "flutterPluginBinding");
        MethodChannel methodChannel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "github.com/aaassseee/screen_brightness");
        this.f33367a = methodChannel;
        methodChannel.setMethodCallHandler(this);
        this.f33368b = new EventChannel(flutterPluginBinding.getBinaryMessenger(), "github.com/aaassseee/screen_brightness/change");
        try {
            Context applicationContext = flutterPluginBinding.getApplicationContext();
            m.d(applicationContext, "getApplicationContext(...)");
            m(c(applicationContext));
            Context applicationContext2 = flutterPluginBinding.getApplicationContext();
            m.d(applicationContext2, "getApplicationContext(...)");
            n(e(applicationContext2));
        } catch (Settings.SettingNotFoundException e10) {
            e10.printStackTrace();
        }
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivity() {
        this.f33370d = null;
        EventChannel eventChannel = this.f33368b;
        if (eventChannel == null) {
            m.s("currentBrightnessChangeEventChannel");
            eventChannel = null;
        }
        eventChannel.setStreamHandler(null);
        this.f33369c = null;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivityForConfigChanges() {
        this.f33370d = null;
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding binding) {
        m.e(binding, "binding");
        MethodChannel methodChannel = this.f33367a;
        if (methodChannel == null) {
            m.s("methodChannel");
            methodChannel = null;
        }
        methodChannel.setMethodCallHandler(null);
        EventChannel eventChannel = this.f33368b;
        if (eventChannel == null) {
            m.s("currentBrightnessChangeEventChannel");
            eventChannel = null;
        }
        eventChannel.setStreamHandler(null);
        this.f33369c = null;
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall call, MethodChannel.Result result) {
        m.e(call, "call");
        m.e(result, "result");
        String str = call.method;
        if (str != null) {
            switch (str.hashCode()) {
                case -1523636550:
                    if (str.equals("hasChanged")) {
                        i(result);
                        return;
                    }
                    break;
                case -1368320692:
                    if (str.equals("resetScreenBrightness")) {
                        j(result);
                        return;
                    }
                    break;
                case -1350947233:
                    if (str.equals("setScreenBrightness")) {
                        k(call, result);
                        return;
                    }
                    break;
                case 192780627:
                    if (str.equals("getScreenBrightness")) {
                        g(result);
                        return;
                    }
                    break;
                case 576725282:
                    if (str.equals("getSystemScreenBrightness")) {
                        h(result);
                        return;
                    }
                    break;
            }
        }
        result.notImplemented();
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onReattachedToActivityForConfigChanges(ActivityPluginBinding binding) {
        m.e(binding, "binding");
        this.f33370d = binding.getActivity();
    }
}
