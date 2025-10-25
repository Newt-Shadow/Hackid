package io.sentry.flutter;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.os.Looper;
import android.util.Log;
import android.view.Display;
import android.view.Window;
import android.view.WindowManager;
import android.view.WindowMetrics;
import com.arthenica.ffmpegkit.Chapter;
import com.arthenica.ffmpegkit.StreamInformation;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugins.firebase.crashlytics.Constants;
import io.sentry.android.core.SentryAndroidOptions;
import io.sentry.android.core.f1;
import io.sentry.android.core.k1;
import io.sentry.android.core.n1;
import io.sentry.android.core.performance.g;
import io.sentry.android.core.y1;
import io.sentry.android.replay.ReplayIntegration;
import io.sentry.android.replay.u;
import io.sentry.e1;
import io.sentry.e3;
import io.sentry.j;
import io.sentry.k0;
import io.sentry.protocol.DebugImage;
import io.sentry.protocol.b0;
import io.sentry.protocol.r;
import io.sentry.q3;
import io.sentry.s5;
import io.sentry.transport.n;
import io.sentry.u0;
import io.sentry.u5;
import io.sentry.y3;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import xc.q;
import yc.h0;
import yc.o;
import yc.p;
import yc.t;
import yc.w;
/* loaded from: classes2.dex */
public final class SentryFlutterPlugin implements FlutterPlugin, MethodChannel.MethodCallHandler, ActivityAware {
    public static final Companion Companion = new Companion(null);
    private static final long NATIVE_CRASH_WAIT_TIME = 500;
    private WeakReference<Activity> activity;
    private MethodChannel channel;
    private Context context;
    private io.sentry.android.core.h framesTracker;
    private Long pluginRegistrationTime;
    private ReplayIntegration replay;
    private u replayConfig = new u(16, 16, 1.0f, 1.0f, 1, 75000);
    private SentryFlutter sentryFlutter;

    /* loaded from: classes2.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final double adjustReplaySizeToBlockSize(double d10) {
            double d11 = 16;
            double d12 = d10 % d11;
            return d12 <= 8.0d ? d10 - d12 : d10 + (d11 - d12);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void crash() {
            RuntimeException runtimeException = new RuntimeException("FlutterSentry Native Integration: Sample RuntimeException");
            Thread thread = Looper.getMainLooper().getThread();
            m.d(thread, "getMainLooper().thread");
            thread.getUncaughtExceptionHandler().uncaughtException(thread, runtimeException);
            thread.join(SentryFlutterPlugin.NATIVE_CRASH_WAIT_TIME);
        }
    }

    private final void addBreadcrumb(Map<String, ? extends Object> map, MethodChannel.Result result) {
        if (map != null) {
            s5 B = k0.h().B();
            m.d(B, "getInstance().options");
            q3.e(io.sentry.e.g(map, B));
        }
        result.success("");
    }

    private final void addReplayScreenshot(String str, Long l10, MethodChannel.Result result) {
        ReplayIntegration replayIntegration = null;
        if (str != null && l10 != null) {
            ReplayIntegration replayIntegration2 = this.replay;
            if (replayIntegration2 == null) {
                m.s("replay");
            } else {
                replayIntegration = replayIntegration2;
            }
            replayIntegration.k0(new File(str), l10.longValue());
            result.success("");
            return;
        }
        result.error("5", "Arguments are null", null);
    }

    private final void addToMap(io.sentry.android.core.performance.h hVar, Map<String, Object> map) {
        String b10;
        Map h10;
        if (hVar.m() != null && (b10 = hVar.b()) != null) {
            h10 = h0.h(q.a("startTimestampMsSinceEpoch", Long.valueOf(hVar.n())), q.a("stopTimestampMsSinceEpoch", Long.valueOf(hVar.j())));
            map.put(b10, h10);
        }
    }

    private final void beginNativeFrames(MethodChannel.Result result) {
        Activity activity;
        io.sentry.android.core.h hVar;
        SentryFlutter sentryFlutter = this.sentryFlutter;
        if (sentryFlutter == null) {
            m.s("sentryFlutter");
            sentryFlutter = null;
        }
        if (!sentryFlutter.getAutoPerformanceTracingEnabled()) {
            result.success(null);
            return;
        }
        WeakReference<Activity> weakReference = this.activity;
        if (weakReference != null && (activity = weakReference.get()) != null && (hVar = this.framesTracker) != null) {
            hVar.e(activity);
        }
        result.success(null);
    }

    private final void captureEnvelope(MethodCall methodCall, MethodChannel.Result result) {
        Object O;
        boolean z10;
        if (!q3.t()) {
            result.error("1", "The Sentry Android SDK is disabled", null);
            return;
        }
        List list = (List) methodCall.arguments();
        if (list == null) {
            list = o.h();
        }
        if (!list.isEmpty()) {
            O = w.O(list);
            byte[] bArr = (byte[]) O;
            Object obj = list.get(1);
            m.c(obj, "null cannot be cast to non-null type kotlin.Boolean");
            boolean booleanValue = ((Boolean) obj).booleanValue();
            if (bArr != null) {
                if (bArr.length == 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (true ^ z10) {
                    if (k1.d(bArr, booleanValue) != null) {
                        result.success("");
                        return;
                    } else {
                        result.error("2", "Failed to capture envelope", null);
                        return;
                    }
                }
            }
        }
        result.error("3", "Envelope is null or empty", null);
    }

    private final void captureReplay(Boolean bool, MethodChannel.Result result) {
        ReplayIntegration replayIntegration = null;
        if (bool == null) {
            result.error("5", "Arguments are null", null);
            return;
        }
        ReplayIntegration replayIntegration2 = this.replay;
        if (replayIntegration2 == null) {
            m.s("replay");
            replayIntegration2 = null;
        }
        replayIntegration2.b(bool);
        ReplayIntegration replayIntegration3 = this.replay;
        if (replayIntegration3 == null) {
            m.s("replay");
        } else {
            replayIntegration = replayIntegration3;
        }
        result.success(replayIntegration.W().toString());
    }

    private final void clearBreadcrumbs(MethodChannel.Result result) {
        q3.i();
        result.success("");
    }

    private final void closeNativeSdk(MethodChannel.Result result) {
        k0.h().g();
        io.sentry.android.core.h hVar = this.framesTracker;
        if (hVar != null) {
            hVar.p();
        }
        this.framesTracker = null;
        result.success("");
    }

    private final void displayRefreshRate(MethodChannel.Result result) {
        Display display;
        Activity activity;
        Window window;
        WindowManager windowManager;
        Display display2;
        Activity activity2;
        Integer num = null;
        if (Build.VERSION.SDK_INT >= 30) {
            WeakReference<Activity> weakReference = this.activity;
            if (weakReference != null && (activity2 = weakReference.get()) != null) {
                display2 = activity2.getDisplay();
            } else {
                display2 = null;
            }
            if (display2 != null) {
                num = Integer.valueOf((int) display2.getRefreshRate());
            }
        } else {
            WeakReference<Activity> weakReference2 = this.activity;
            if (weakReference2 != null && (activity = weakReference2.get()) != null && (window = activity.getWindow()) != null && (windowManager = window.getWindowManager()) != null) {
                display = windowManager.getDefaultDisplay();
            } else {
                display = null;
            }
            if (display != null) {
                num = Integer.valueOf((int) display.getRefreshRate());
            }
        }
        result.success(num);
    }

    private final void endNativeFrames(String str, MethodChannel.Result result) {
        Activity activity;
        Map map;
        int i10;
        int i11;
        Map h10;
        io.sentry.protocol.h hVar;
        Number a10;
        io.sentry.protocol.h hVar2;
        Number a11;
        io.sentry.protocol.h hVar3;
        Number a12;
        WeakReference<Activity> weakReference = this.activity;
        if (weakReference != null) {
            activity = weakReference.get();
        } else {
            activity = null;
        }
        SentryFlutter sentryFlutter = this.sentryFlutter;
        if (sentryFlutter == null) {
            m.s("sentryFlutter");
            sentryFlutter = null;
        }
        if (sentryFlutter.getAutoPerformanceTracingEnabled() && activity != null && str != null) {
            r rVar = new r(str);
            io.sentry.android.core.h hVar4 = this.framesTracker;
            if (hVar4 != null) {
                hVar4.n(activity, rVar);
            }
            io.sentry.android.core.h hVar5 = this.framesTracker;
            if (hVar5 != null) {
                map = hVar5.q(rVar);
            } else {
                map = null;
            }
            int i12 = 0;
            if (map != null && (hVar3 = (io.sentry.protocol.h) map.get("frames_total")) != null && (a12 = hVar3.a()) != null) {
                i10 = a12.intValue();
            } else {
                i10 = 0;
            }
            if (map != null && (hVar2 = (io.sentry.protocol.h) map.get("frames_slow")) != null && (a11 = hVar2.a()) != null) {
                i11 = a11.intValue();
            } else {
                i11 = 0;
            }
            if (map != null && (hVar = (io.sentry.protocol.h) map.get("frames_frozen")) != null && (a10 = hVar.a()) != null) {
                i12 = a10.intValue();
            }
            if (i10 != 0 || i11 != 0 || i12 != 0) {
                h10 = h0.h(q.a("totalFrames", Integer.valueOf(i10)), q.a("slowFrames", Integer.valueOf(i11)), q.a("frozenFrames", Integer.valueOf(i12)));
                result.success(h10);
                return;
            }
            result.success(null);
            return;
        }
        if (str == null) {
            Log.w("Sentry", "Parameter id cannot be null when calling endNativeFrames.");
        }
        result.success(null);
    }

    private final void fetchNativeAppStart(MethodChannel.Result result) {
        boolean z10;
        Map i10;
        SentryFlutter sentryFlutter = this.sentryFlutter;
        if (sentryFlutter == null) {
            m.s("sentryFlutter");
            sentryFlutter = null;
        }
        if (!sentryFlutter.getAutoPerformanceTracingEnabled()) {
            result.success(null);
            return;
        }
        io.sentry.android.core.performance.g p10 = io.sentry.android.core.performance.g.p();
        m.d(p10, "getInstance()");
        if (p10.r() && p10.j().f() <= 60000) {
            io.sentry.android.core.performance.h j10 = p10.j();
            m.d(j10, "appStartMetrics.appStartTimeSpan");
            y3 m10 = j10.m();
            if (p10.l() == g.a.COLD) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (m10 == null) {
                Log.w("Sentry", "App start won't be sent due to missing appStartTime");
                result.success(null);
                return;
            }
            i10 = h0.i(q.a("pluginRegistrationTime", this.pluginRegistrationTime), q.a("appStartTime", Double.valueOf(j.k(m10.l()))), q.a("isColdStart", Boolean.valueOf(z10)));
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            io.sentry.android.core.performance.h hVar = new io.sentry.android.core.performance.h();
            hVar.v("Process Initialization");
            hVar.w(j10.n());
            hVar.x(j10.p());
            hVar.y(p10.n());
            addToMap(hVar, linkedHashMap);
            io.sentry.android.core.performance.h m11 = p10.m();
            m.d(m11, "appStartMetrics.applicationOnCreateTimeSpan");
            addToMap(m11, linkedHashMap);
            List<io.sentry.android.core.performance.h> o10 = p10.o();
            m.d(o10, "appStartMetrics.contentProviderOnCreateTimeSpans");
            for (io.sentry.android.core.performance.h span : o10) {
                m.d(span, "span");
                addToMap(span, linkedHashMap);
            }
            List<io.sentry.android.core.performance.b> g10 = p10.g();
            m.d(g10, "appStartMetrics.activityLifecycleTimeSpans");
            for (io.sentry.android.core.performance.b bVar : g10) {
                io.sentry.android.core.performance.h b10 = bVar.b();
                m.d(b10, "span.onCreate");
                addToMap(b10, linkedHashMap);
                io.sentry.android.core.performance.h f10 = bVar.f();
                m.d(f10, "span.onStart");
                addToMap(f10, linkedHashMap);
            }
            i10.put("nativeSpanTimes", linkedHashMap);
            result.success(i10);
            return;
        }
        Log.w("Sentry", "Invalid app start data: app not launched in foreground or app start took too long (>60s)");
        result.success(null);
    }

    private final void initNativeSdk(MethodCall methodCall, MethodChannel.Result result) {
        Context context = null;
        if (this.context == null) {
            result.error("1", "Context is null", null);
            return;
        }
        final Map map = (Map) methodCall.arguments();
        if (map == null) {
            map = h0.e();
        }
        if (map.isEmpty()) {
            result.error("4", "Arguments is null or empty", null);
            return;
        }
        Context context2 = this.context;
        if (context2 == null) {
            m.s("context");
        } else {
            context = context2;
        }
        y1.e(context, new q3.a() { // from class: io.sentry.flutter.c
            @Override // io.sentry.q3.a
            public final void a(s5 s5Var) {
                SentryFlutterPlugin.initNativeSdk$lambda$0(SentryFlutterPlugin.this, map, (SentryAndroidOptions) s5Var);
            }
        });
        result.success("");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initNativeSdk$lambda$0(SentryFlutterPlugin sentryFlutterPlugin, Map map, SentryAndroidOptions options) {
        m.e(options, "options");
        SentryFlutter sentryFlutter = sentryFlutterPlugin.sentryFlutter;
        SentryFlutter sentryFlutter2 = null;
        if (sentryFlutter == null) {
            m.s("sentryFlutter");
            sentryFlutter = null;
        }
        sentryFlutter.updateOptions(options, map);
        SentryFlutter sentryFlutter3 = sentryFlutterPlugin.sentryFlutter;
        if (sentryFlutter3 == null) {
            m.s("sentryFlutter");
        } else {
            sentryFlutter2 = sentryFlutter3;
        }
        if (sentryFlutter2.getAutoPerformanceTracingEnabled()) {
            sentryFlutterPlugin.framesTracker = new io.sentry.android.core.h(new n1(), options);
        }
        sentryFlutterPlugin.setupReplay(options);
    }

    private final void loadContexts(MethodChannel.Result result) {
        s5 B = k0.h().B();
        m.d(B, "getInstance().options");
        Context context = null;
        if (!(B instanceof SentryAndroidOptions)) {
            result.success(null);
            return;
        }
        u0 g10 = k1.g();
        Context context2 = this.context;
        if (context2 == null) {
            m.s("context");
        } else {
            context = context2;
        }
        Map k10 = k1.k(context, (SentryAndroidOptions) B, g10);
        m.d(k10, "serializeScope(\n        …    currentScope,\n      )");
        result.success(k10);
    }

    private final void loadImageList(MethodCall methodCall, MethodChannel.Result result) {
        Set o02;
        List<Map<String, Object>> serialize;
        s5 B = k0.h().B();
        m.c(B, "null cannot be cast to non-null type io.sentry.android.core.SentryAndroidOptions");
        SentryAndroidOptions sentryAndroidOptions = (SentryAndroidOptions) B;
        List list = (List) methodCall.arguments();
        if (list == null) {
            list = o.h();
        }
        List<DebugImage> list2 = null;
        if (list.isEmpty()) {
            List b10 = sentryAndroidOptions.getDebugImagesLoader().b();
            if (b10 != null) {
                list2 = w.k0(b10);
            }
            serialize = serialize(list2);
        } else {
            f1 debugImagesLoader = sentryAndroidOptions.getDebugImagesLoader();
            o02 = w.o0(list);
            Collection a10 = debugImagesLoader.a(o02);
            if (a10 != null) {
                if (a10.isEmpty()) {
                    a10 = sentryAndroidOptions.getDebugImagesLoader().b();
                }
                if (a10 != null) {
                    list2 = w.k0(a10);
                }
            }
            serialize = serialize(list2);
        }
        result.success(serialize);
    }

    private final void removeContexts(final String str, final MethodChannel.Result result) {
        if (str == null) {
            result.success("");
        } else {
            q3.k(new e3() { // from class: io.sentry.flutter.d
                @Override // io.sentry.e3
                public final void a(u0 u0Var) {
                    SentryFlutterPlugin.removeContexts$lambda$7(str, result, u0Var);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void removeContexts$lambda$7(String str, MethodChannel.Result result, u0 scope) {
        m.e(scope, "scope");
        scope.j(str);
        result.success("");
    }

    private final void removeExtra(String str, MethodChannel.Result result) {
        if (str == null) {
            result.success("");
            return;
        }
        q3.A(str);
        result.success("");
    }

    private final void removeTag(String str, MethodChannel.Result result) {
        if (str == null) {
            result.success("");
            return;
        }
        q3.B(str);
        result.success("");
    }

    private final List<Map<String, Object>> serialize(List<DebugImage> list) {
        int r10;
        if (list != null) {
            List<DebugImage> list2 = list;
            r10 = p.r(list2, 10);
            ArrayList arrayList = new ArrayList(r10);
            for (DebugImage debugImage : list2) {
                arrayList.add(serialize(debugImage));
            }
            return arrayList;
        }
        return null;
    }

    private final void setContexts(final String str, final Object obj, final MethodChannel.Result result) {
        if (str != null && obj != null) {
            q3.k(new e3() { // from class: io.sentry.flutter.e
                @Override // io.sentry.e3
                public final void a(u0 u0Var) {
                    SentryFlutterPlugin.setContexts$lambda$6(str, obj, result, u0Var);
                }
            });
        } else {
            result.success("");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setContexts$lambda$6(String str, Object obj, MethodChannel.Result result, u0 scope) {
        m.e(scope, "scope");
        scope.z(str, obj);
        result.success("");
    }

    private final void setExtra(String str, String str2, MethodChannel.Result result) {
        if (str != null && str2 != null) {
            q3.D(str, str2);
            result.success("");
            return;
        }
        result.success("");
    }

    private final void setReplayConfig(MethodCall methodCall, MethodChannel.Result result) {
        Double d10;
        double d11;
        Double d12;
        double d13;
        double d14;
        Rect rect;
        int b10;
        int b11;
        Integer num;
        int i10;
        Integer num2;
        WindowMetrics currentWindowMetrics;
        Object argument = methodCall.argument(StreamInformation.KEY_WIDTH);
        ReplayIntegration replayIntegration = null;
        if (argument instanceof Double) {
            d10 = (Double) argument;
        } else {
            d10 = null;
        }
        double d15 = 0.0d;
        if (d10 != null) {
            d11 = d10.doubleValue();
        } else {
            d11 = 0.0d;
        }
        Object argument2 = methodCall.argument(StreamInformation.KEY_HEIGHT);
        if (argument2 instanceof Double) {
            d12 = (Double) argument2;
        } else {
            d12 = null;
        }
        if (d12 != null) {
            d15 = d12.doubleValue();
        }
        if (d11 < d15) {
            Companion companion = Companion;
            d14 = companion.adjustReplaySizeToBlockSize(d11);
            d13 = companion.adjustReplaySizeToBlockSize(d15 * (d14 / d11));
        } else {
            Companion companion2 = Companion;
            double adjustReplaySizeToBlockSize = companion2.adjustReplaySizeToBlockSize(d15);
            double adjustReplaySizeToBlockSize2 = companion2.adjustReplaySizeToBlockSize(d11 * (adjustReplaySizeToBlockSize / d15));
            d13 = adjustReplaySizeToBlockSize;
            d14 = adjustReplaySizeToBlockSize2;
        }
        Context context = this.context;
        if (context == null) {
            m.s("context");
            context = null;
        }
        Object systemService = context.getSystemService("window");
        m.c(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        WindowManager windowManager = (WindowManager) systemService;
        int i11 = 0;
        if (Build.VERSION.SDK_INT >= 30) {
            currentWindowMetrics = windowManager.getCurrentWindowMetrics();
            rect = currentWindowMetrics.getBounds();
        } else {
            Point point = new Point();
            windowManager.getDefaultDisplay().getRealSize(point);
            rect = new Rect(0, 0, point.x, point.y);
        }
        m.d(rect, "if (VERSION.SDK_INT >= V…, screenBounds.y)\n      }");
        b10 = kd.c.b(d14);
        b11 = kd.c.b(d13);
        float width = ((float) d14) / rect.width();
        float height = ((float) d13) / rect.height();
        Object argument3 = methodCall.argument("frameRate");
        if (argument3 instanceof Integer) {
            num = (Integer) argument3;
        } else {
            num = null;
        }
        if (num != null) {
            i10 = num.intValue();
        } else {
            i10 = 0;
        }
        Object argument4 = methodCall.argument("bitRate");
        if (argument4 instanceof Integer) {
            num2 = (Integer) argument4;
        } else {
            num2 = null;
        }
        if (num2 != null) {
            i11 = num2.intValue();
        }
        u uVar = new u(b10, b11, width, height, i10, i11);
        this.replayConfig = uVar;
        String format = String.format("Configuring replay: %dx%d at %d FPS, %d BPS", Arrays.copyOf(new Object[]{Integer.valueOf(uVar.d()), Integer.valueOf(this.replayConfig.c()), Integer.valueOf(this.replayConfig.b()), Integer.valueOf(this.replayConfig.a())}, 4));
        m.d(format, "format(this, *args)");
        Log.i("Sentry", format);
        ReplayIntegration replayIntegration2 = this.replay;
        if (replayIntegration2 == null) {
            m.s("replay");
        } else {
            replayIntegration = replayIntegration2;
        }
        replayIntegration.onConfigurationChanged(new Configuration());
        result.success("");
    }

    private final void setTag(String str, String str2, MethodChannel.Result result) {
        if (str != null && str2 != null) {
            q3.E(str, str2);
            result.success("");
            return;
        }
        result.success("");
    }

    private final void setUser(Map<String, ? extends Object> map, MethodChannel.Result result) {
        if (map != null) {
            s5 B = k0.h().B();
            m.d(B, "getInstance().options");
            q3.F(b0.j(map, B));
        } else {
            q3.F(null);
        }
        result.success("");
    }

    private final void setupReplay(SentryAndroidOptions sentryAndroidOptions) {
        boolean z10;
        Context context;
        List<e1> integrations = sentryAndroidOptions.getIntegrations();
        m.d(integrations, "options.integrations");
        t.A(integrations, SentryFlutterPlugin$setupReplay$1.INSTANCE);
        String cacheDirPath = sentryAndroidOptions.getCacheDirPath();
        u5 sessionReplay = sentryAndroidOptions.getSessionReplay();
        m.d(sessionReplay, "options.sessionReplay");
        if (!sessionReplay.o() && !sessionReplay.p()) {
            z10 = false;
        } else {
            z10 = true;
        }
        ReplayIntegration replayIntegration = null;
        if (cacheDirPath != null && z10) {
            Context context2 = this.context;
            if (context2 == null) {
                m.s("context");
                context = null;
            } else {
                context = context2;
            }
            io.sentry.transport.p b10 = n.b();
            m.d(b10, "getInstance()");
            ReplayIntegration replayIntegration2 = new ReplayIntegration(context, b10, new SentryFlutterPlugin$setupReplay$2(this), new SentryFlutterPlugin$setupReplay$3(this), null);
            this.replay = replayIntegration2;
            replayIntegration2.D0(new SentryFlutterReplayBreadcrumbConverter());
            ReplayIntegration replayIntegration3 = this.replay;
            if (replayIntegration3 == null) {
                m.s("replay");
                replayIntegration3 = null;
            }
            sentryAndroidOptions.addIntegration(replayIntegration3);
            ReplayIntegration replayIntegration4 = this.replay;
            if (replayIntegration4 == null) {
                m.s("replay");
            } else {
                replayIntegration = replayIntegration4;
            }
            sentryAndroidOptions.setReplayController(replayIntegration);
            return;
        }
        sentryAndroidOptions.setReplayController(null);
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onAttachedToActivity(ActivityPluginBinding binding) {
        m.e(binding, "binding");
        this.activity = new WeakReference<>(binding.getActivity());
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        m.e(flutterPluginBinding, "flutterPluginBinding");
        this.pluginRegistrationTime = Long.valueOf(System.currentTimeMillis());
        Context applicationContext = flutterPluginBinding.getApplicationContext();
        m.d(applicationContext, "flutterPluginBinding.applicationContext");
        this.context = applicationContext;
        MethodChannel methodChannel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "sentry_flutter");
        this.channel = methodChannel;
        methodChannel.setMethodCallHandler(this);
        this.sentryFlutter = new SentryFlutter();
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivity() {
        this.activity = null;
        this.framesTracker = null;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivityForConfigChanges() {
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding binding) {
        m.e(binding, "binding");
        MethodChannel methodChannel = this.channel;
        if (methodChannel == null) {
            return;
        }
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
        String str = call.method;
        if (str != null) {
            switch (str.hashCode()) {
                case -1446499610:
                    if (str.equals("beginNativeFrames")) {
                        beginNativeFrames(result);
                        return;
                    }
                    break;
                case -905799720:
                    if (str.equals("setTag")) {
                        setTag((String) call.argument("key"), (String) call.argument("value"), result);
                        return;
                    }
                    break;
                case -853417589:
                    if (str.equals("closeNativeSdk")) {
                        closeNativeSdk(result);
                        return;
                    }
                    break;
                case -535605191:
                    if (str.equals("displayRefreshRate")) {
                        displayRefreshRate(result);
                        return;
                    }
                    break;
                case -366888622:
                    if (str.equals("fetchNativeAppStart")) {
                        fetchNativeAppStart(result);
                        return;
                    }
                    break;
                case -317432340:
                    if (str.equals("removeExtra")) {
                        removeExtra((String) call.argument("key"), result);
                        return;
                    }
                    break;
                case 89815947:
                    if (str.equals("setReplayConfig")) {
                        setReplayConfig(call, result);
                        return;
                    }
                    break;
                case 98996078:
                    if (str.equals("addReplayScreenshot")) {
                        addReplayScreenshot((String) call.argument("path"), (Long) call.argument(Constants.TIMESTAMP), result);
                        return;
                    }
                    break;
                case 145462582:
                    if (str.equals("captureEnvelope")) {
                        captureEnvelope(call, result);
                        return;
                    }
                    break;
                case 263988819:
                    if (str.equals("loadImageList")) {
                        loadImageList(call, result);
                        return;
                    }
                    break;
                case 545314163:
                    if (str.equals("initNativeSdk")) {
                        initNativeSdk(call, result);
                        return;
                    }
                    break;
                case 716465066:
                    if (str.equals("loadContexts")) {
                        loadContexts(result);
                        return;
                    }
                    break;
                case 783581208:
                    if (str.equals("endNativeFrames")) {
                        endNativeFrames((String) call.argument(Chapter.KEY_ID), result);
                        return;
                    }
                    break;
                case 1126756228:
                    if (str.equals("addBreadcrumb")) {
                        addBreadcrumb((Map) call.argument("breadcrumb"), result);
                        return;
                    }
                    break;
                case 1282363510:
                    if (str.equals("removeTag")) {
                        removeTag((String) call.argument("key"), result);
                        return;
                    }
                    break;
                case 1391678670:
                    if (str.equals("setExtra")) {
                        setExtra((String) call.argument("key"), (String) call.argument("value"), result);
                        return;
                    }
                    break;
                case 1422008102:
                    if (str.equals("setContexts")) {
                        setContexts((String) call.argument("key"), call.argument("value"), result);
                        return;
                    }
                    break;
                case 1725209040:
                    if (str.equals("nativeCrash")) {
                        Companion.crash();
                        return;
                    }
                    break;
                case 1838399555:
                    if (str.equals("clearBreadcrumbs")) {
                        clearBreadcrumbs(result);
                        return;
                    }
                    break;
                case 1919151821:
                    if (str.equals("captureReplay")) {
                        captureReplay((Boolean) call.argument("isCrash"), result);
                        return;
                    }
                    break;
                case 1985026893:
                    if (str.equals("setUser")) {
                        setUser((Map) call.argument("user"), result);
                        return;
                    }
                    break;
                case 2133203272:
                    if (str.equals("removeContexts")) {
                        removeContexts((String) call.argument("key"), result);
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
    }

    private final Map<String, Object> serialize(DebugImage debugImage) {
        Map<String, Object> h10;
        h10 = h0.h(q.a("image_addr", debugImage.getImageAddr()), q.a("image_size", debugImage.getImageSize()), q.a("code_file", debugImage.getCodeFile()), q.a("type", debugImage.getType()), q.a("debug_id", debugImage.getDebugId()), q.a("code_id", debugImage.getCodeId()), q.a("debug_file", debugImage.getDebugFile()));
        return h10;
    }
}
