package kc;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.BatteryManager;
import android.os.Build;
import android.os.PowerManager;
import android.provider.Settings;
import io.appmetrica.analytics.coreutils.internal.services.telephony.CellularNetworkTypeExtractor;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.EventChannel;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import java.util.Locale;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public final class a implements MethodChannel.MethodCallHandler, EventChannel.StreamHandler, FlutterPlugin {

    /* renamed from: e  reason: collision with root package name */
    public static final C0234a f24884e = new C0234a(null);

    /* renamed from: a  reason: collision with root package name */
    private Context f24885a;

    /* renamed from: b  reason: collision with root package name */
    private BroadcastReceiver f24886b;

    /* renamed from: c  reason: collision with root package name */
    private MethodChannel f24887c;

    /* renamed from: d  reason: collision with root package name */
    private EventChannel f24888d;

    /* renamed from: kc.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0234a {
        private C0234a() {
        }

        public /* synthetic */ C0234a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ EventChannel.EventSink f24890b;

        b(EventChannel.EventSink eventSink) {
            this.f24890b = eventSink;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            m.e(context, "context");
            m.e(intent, "intent");
            int intExtra = intent.getIntExtra("status", -1);
            a aVar = a.this;
            aVar.l(this.f24890b, aVar.d(intExtra));
        }
    }

    private final boolean c() {
        Context context = this.f24885a;
        m.b(context);
        Object systemService = context.getSystemService("power");
        m.c(systemService, "null cannot be cast to non-null type android.os.PowerManager");
        return ((PowerManager) systemService).isPowerSaveMode();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String d(int i10) {
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        if (i10 != 5) {
                            return null;
                        }
                        return "full";
                    }
                    return "connected_not_charging";
                }
                return "discharging";
            }
            return "charging";
        }
        return CellularNetworkTypeExtractor.UNKNOWN_NETWORK_TYPE_VALUE;
    }

    private final BroadcastReceiver e(EventChannel.EventSink eventSink) {
        return new b(eventSink);
    }

    private final int f(int i10) {
        Context context = this.f24885a;
        m.b(context);
        Object systemService = context.getSystemService("batterymanager");
        m.c(systemService, "null cannot be cast to non-null type android.os.BatteryManager");
        return ((BatteryManager) systemService).getIntProperty(i10);
    }

    private final String g() {
        int i10;
        if (Build.VERSION.SDK_INT >= 26) {
            i10 = f(6);
        } else {
            Intent registerReceiver = new ContextWrapper(this.f24885a).registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            if (registerReceiver != null) {
                i10 = registerReceiver.getIntExtra("status", -1);
            } else {
                i10 = -1;
            }
        }
        return d(i10);
    }

    private final boolean h() {
        Context context = this.f24885a;
        m.b(context);
        int i10 = Settings.System.getInt(context.getContentResolver(), "SmartModeStatus", -1);
        if (i10 != -1) {
            if (i10 == 4) {
                return true;
            }
            return false;
        }
        return c();
    }

    private final Boolean i() {
        String MANUFACTURER = Build.MANUFACTURER;
        m.d(MANUFACTURER, "MANUFACTURER");
        Locale locale = Locale.getDefault();
        m.d(locale, "getDefault(...)");
        String lowerCase = MANUFACTURER.toLowerCase(locale);
        m.d(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        int hashCode = lowerCase.hashCode();
        if (hashCode != -1206476313) {
            if (hashCode != -759499589) {
                if (hashCode == 1864941562 && lowerCase.equals("samsung")) {
                    return Boolean.valueOf(j());
                }
            } else if (lowerCase.equals("xiaomi")) {
                return Boolean.valueOf(k());
            }
        } else if (lowerCase.equals("huawei")) {
            return Boolean.valueOf(h());
        }
        return Boolean.valueOf(c());
    }

    private final boolean j() {
        String str;
        if (Build.VERSION.SDK_INT < 31) {
            Context context = this.f24885a;
            m.b(context);
            str = Settings.System.getString(context.getContentResolver(), "psm_switch");
        } else {
            str = null;
        }
        if (str == null) {
            return c();
        }
        return m.a(str, "1");
    }

    private final boolean k() {
        Context context = this.f24885a;
        m.b(context);
        int i10 = Settings.System.getInt(context.getContentResolver(), "POWER_SAVE_MODE_OPEN", -1);
        if (i10 != -1) {
            if (i10 == 1) {
                return true;
            }
            return false;
        }
        return c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void l(EventChannel.EventSink eventSink, String str) {
        if (str != null) {
            eventSink.success(str);
        } else {
            eventSink.error("UNAVAILABLE", "Charging status unavailable", null);
        }
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding binding) {
        m.e(binding, "binding");
        this.f24885a = binding.getApplicationContext();
        this.f24887c = new MethodChannel(binding.getBinaryMessenger(), "dev.fluttercommunity.plus/battery");
        EventChannel eventChannel = new EventChannel(binding.getBinaryMessenger(), "dev.fluttercommunity.plus/charging");
        this.f24888d = eventChannel;
        m.b(eventChannel);
        eventChannel.setStreamHandler(this);
        MethodChannel methodChannel = this.f24887c;
        m.b(methodChannel);
        methodChannel.setMethodCallHandler(this);
    }

    @Override // io.flutter.plugin.common.EventChannel.StreamHandler
    public void onCancel(Object obj) {
        Context context = this.f24885a;
        m.b(context);
        context.unregisterReceiver(this.f24886b);
        this.f24886b = null;
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding binding) {
        m.e(binding, "binding");
        this.f24885a = null;
        MethodChannel methodChannel = this.f24887c;
        m.b(methodChannel);
        methodChannel.setMethodCallHandler(null);
        this.f24887c = null;
        EventChannel eventChannel = this.f24888d;
        m.b(eventChannel);
        eventChannel.setStreamHandler(null);
        this.f24888d = null;
    }

    @Override // io.flutter.plugin.common.EventChannel.StreamHandler
    public void onListen(Object obj, EventChannel.EventSink events) {
        m.e(events, "events");
        BroadcastReceiver e10 = e(events);
        this.f24886b = e10;
        Context context = this.f24885a;
        if (context != null) {
            androidx.core.content.a.k(context, e10, new IntentFilter("android.intent.action.BATTERY_CHANGED"), 4);
        }
        l(events, g());
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall call, MethodChannel.Result result) {
        m.e(call, "call");
        m.e(result, "result");
        String str = call.method;
        if (str != null) {
            int hashCode = str.hashCode();
            if (hashCode != -82096147) {
                if (hashCode != -75204358) {
                    if (hashCode == 144057854 && str.equals("isInBatterySaveMode")) {
                        Boolean i10 = i();
                        if (i10 != null) {
                            result.success(i10);
                            return;
                        } else {
                            result.error("UNAVAILABLE", "Battery save mode not available.", null);
                            return;
                        }
                    }
                } else if (str.equals("getBatteryState")) {
                    String g10 = g();
                    if (g10 != null) {
                        result.success(g10);
                        return;
                    } else {
                        result.error("UNAVAILABLE", "Charging status not available.", null);
                        return;
                    }
                }
            } else if (str.equals("getBatteryLevel")) {
                int f10 = f(4);
                if (f10 != -1) {
                    result.success(Integer.valueOf(f10));
                    return;
                } else {
                    result.error("UNAVAILABLE", "Battery level not available.", null);
                    return;
                }
            }
        }
        result.notImplemented();
    }
}
