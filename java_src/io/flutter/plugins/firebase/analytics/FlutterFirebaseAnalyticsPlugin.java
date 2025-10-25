package io.flutter.plugins.firebase.analytics;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import com.google.firebase.analytics.FirebaseAnalytics;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugins.firebase.analytics.FirebaseAnalyticsHostApi;
import io.flutter.plugins.firebase.core.FlutterFirebasePlugin;
import io.flutter.plugins.firebase.core.FlutterFirebasePluginRegistry;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import m6.Task;
import xc.l;
/* loaded from: classes2.dex */
public final class FlutterFirebaseAnalyticsPlugin implements FlutterFirebasePlugin, FlutterPlugin, FirebaseAnalyticsHostApi {
    private FirebaseAnalytics analytics;
    private MethodChannel channel;
    private BinaryMessenger messenger;

    private final Bundle createBundleFromMap(Map<String, ? extends Object> map) {
        if (map == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        for (Map.Entry<String, ? extends Object> entry : map.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            if (value instanceof String) {
                bundle.putString(key, (String) value);
            } else if (value instanceof Integer) {
                bundle.putLong(key, ((Number) value).intValue());
            } else if (value instanceof Long) {
                bundle.putLong(key, ((Number) value).longValue());
            } else if (value instanceof Double) {
                bundle.putDouble(key, ((Number) value).doubleValue());
            } else if (value instanceof Boolean) {
                bundle.putBoolean(key, ((Boolean) value).booleanValue());
            } else if (value == null) {
                bundle.putString(key, null);
            } else if (value instanceof Iterable) {
                ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
                for (Object obj : (Iterable) value) {
                    if (obj instanceof Map) {
                        arrayList.add(createBundleFromMap((Map) obj));
                    } else if (obj != null) {
                        String canonicalName = obj.getClass().getCanonicalName();
                        throw new IllegalArgumentException("Unsupported value type: " + canonicalName + " in list at key " + key);
                    }
                }
                bundle.putParcelableArrayList(key, arrayList);
            } else if (value instanceof Map) {
                bundle.putParcelable(key, createBundleFromMap((Map) value));
            } else {
                String canonicalName2 = value.getClass().getCanonicalName();
                throw new IllegalArgumentException("Unsupported value type: " + canonicalName2);
            }
        }
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void didReinitializeFirebaseCore$lambda$1(m6.l lVar) {
        try {
            lVar.c(null);
        } catch (Exception e10) {
            lVar.b(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getAppInstanceId$lambda$20(FlutterFirebaseAnalyticsPlugin flutterFirebaseAnalyticsPlugin, id.l lVar, Task task) {
        kotlin.jvm.internal.m.e(task, "task");
        flutterFirebaseAnalyticsPlugin.handleTypedTaskResult(task, lVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getPluginConstantsForFirebaseApp$lambda$0(m6.l lVar) {
        try {
            lVar.c(new HashMap());
        } catch (Exception e10) {
            lVar.b(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getSessionId$lambda$21(FlutterFirebaseAnalyticsPlugin flutterFirebaseAnalyticsPlugin, id.l lVar, Task task) {
        kotlin.jvm.internal.m.e(task, "task");
        flutterFirebaseAnalyticsPlugin.handleTypedTaskResult(task, lVar);
    }

    private final Task handleGetAppInstanceId() {
        final m6.l lVar = new m6.l();
        FlutterFirebasePlugin.cachedThreadPool.execute(new Runnable() { // from class: io.flutter.plugins.firebase.analytics.j0
            @Override // java.lang.Runnable
            public final void run() {
                FlutterFirebaseAnalyticsPlugin.handleGetAppInstanceId$lambda$11(m6.l.this, this);
            }
        });
        Task a10 = lVar.a();
        kotlin.jvm.internal.m.d(a10, "getTask(...)");
        return a10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleGetAppInstanceId$lambda$11(m6.l lVar, FlutterFirebaseAnalyticsPlugin flutterFirebaseAnalyticsPlugin) {
        try {
            FirebaseAnalytics firebaseAnalytics = flutterFirebaseAnalyticsPlugin.analytics;
            if (firebaseAnalytics == null) {
                kotlin.jvm.internal.m.s("analytics");
                firebaseAnalytics = null;
            }
            lVar.c(m6.n.a(firebaseAnalytics.a()));
        } catch (Exception e10) {
            lVar.b(e10);
        }
    }

    private final Task handleGetSessionId() {
        final m6.l lVar = new m6.l();
        FlutterFirebasePlugin.cachedThreadPool.execute(new Runnable() { // from class: io.flutter.plugins.firebase.analytics.d0
            @Override // java.lang.Runnable
            public final void run() {
                FlutterFirebaseAnalyticsPlugin.handleGetSessionId$lambda$2(m6.l.this, this);
            }
        });
        Task a10 = lVar.a();
        kotlin.jvm.internal.m.d(a10, "getTask(...)");
        return a10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleGetSessionId$lambda$2(m6.l lVar, FlutterFirebaseAnalyticsPlugin flutterFirebaseAnalyticsPlugin) {
        try {
            FirebaseAnalytics firebaseAnalytics = flutterFirebaseAnalyticsPlugin.analytics;
            if (firebaseAnalytics == null) {
                kotlin.jvm.internal.m.s("analytics");
                firebaseAnalytics = null;
            }
            lVar.c(m6.n.a(firebaseAnalytics.b()));
        } catch (Exception e10) {
            lVar.b(e10);
        }
    }

    private final Task handleLogEvent(final Map<String, ? extends Object> map) {
        final m6.l lVar = new m6.l();
        FlutterFirebasePlugin.cachedThreadPool.execute(new Runnable() { // from class: io.flutter.plugins.firebase.analytics.r0
            @Override // java.lang.Runnable
            public final void run() {
                FlutterFirebaseAnalyticsPlugin.handleLogEvent$lambda$3(map, this, lVar);
            }
        });
        Task a10 = lVar.a();
        kotlin.jvm.internal.m.d(a10, "getTask(...)");
        return a10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleLogEvent$lambda$3(Map map, FlutterFirebaseAnalyticsPlugin flutterFirebaseAnalyticsPlugin, m6.l lVar) {
        try {
            Object obj = map.get(Constants.EVENT_NAME);
            Objects.requireNonNull(obj);
            kotlin.jvm.internal.m.c(obj, "null cannot be cast to non-null type kotlin.String");
            String str = (String) obj;
            Bundle createBundleFromMap = flutterFirebaseAnalyticsPlugin.createBundleFromMap((Map) map.get(Constants.PARAMETERS));
            FirebaseAnalytics firebaseAnalytics = flutterFirebaseAnalyticsPlugin.analytics;
            if (firebaseAnalytics == null) {
                kotlin.jvm.internal.m.s("analytics");
                firebaseAnalytics = null;
            }
            firebaseAnalytics.c(str, createBundleFromMap);
            lVar.c(null);
        } catch (Exception e10) {
            lVar.b(e10);
        }
    }

    private final Task handleResetAnalyticsData() {
        final m6.l lVar = new m6.l();
        FlutterFirebasePlugin.cachedThreadPool.execute(new Runnable() { // from class: io.flutter.plugins.firebase.analytics.l0
            @Override // java.lang.Runnable
            public final void run() {
                FlutterFirebaseAnalyticsPlugin.handleResetAnalyticsData$lambda$8(FlutterFirebaseAnalyticsPlugin.this, lVar);
            }
        });
        Task a10 = lVar.a();
        kotlin.jvm.internal.m.d(a10, "getTask(...)");
        return a10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleResetAnalyticsData$lambda$8(FlutterFirebaseAnalyticsPlugin flutterFirebaseAnalyticsPlugin, m6.l lVar) {
        try {
            FirebaseAnalytics firebaseAnalytics = flutterFirebaseAnalyticsPlugin.analytics;
            if (firebaseAnalytics == null) {
                kotlin.jvm.internal.m.s("analytics");
                firebaseAnalytics = null;
            }
            firebaseAnalytics.d();
            lVar.c(null);
        } catch (Exception e10) {
            lVar.b(e10);
        }
    }

    private final Task handleSetAnalyticsCollectionEnabled(final boolean z10) {
        final m6.l lVar = new m6.l();
        FlutterFirebasePlugin.cachedThreadPool.execute(new Runnable() { // from class: io.flutter.plugins.firebase.analytics.b0
            @Override // java.lang.Runnable
            public final void run() {
                FlutterFirebaseAnalyticsPlugin.handleSetAnalyticsCollectionEnabled$lambda$5(FlutterFirebaseAnalyticsPlugin.this, z10, lVar);
            }
        });
        Task a10 = lVar.a();
        kotlin.jvm.internal.m.d(a10, "getTask(...)");
        return a10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleSetAnalyticsCollectionEnabled$lambda$5(FlutterFirebaseAnalyticsPlugin flutterFirebaseAnalyticsPlugin, boolean z10, m6.l lVar) {
        try {
            FirebaseAnalytics firebaseAnalytics = flutterFirebaseAnalyticsPlugin.analytics;
            if (firebaseAnalytics == null) {
                kotlin.jvm.internal.m.s("analytics");
                firebaseAnalytics = null;
            }
            firebaseAnalytics.e(z10);
            lVar.c(null);
        } catch (Exception e10) {
            lVar.b(e10);
        }
    }

    private final Task handleSetConsent(final Map<String, Boolean> map) {
        final m6.l lVar = new m6.l();
        FlutterFirebasePlugin.cachedThreadPool.execute(new Runnable() { // from class: io.flutter.plugins.firebase.analytics.i0
            @Override // java.lang.Runnable
            public final void run() {
                FlutterFirebaseAnalyticsPlugin.handleSetConsent$lambda$9(map, this, lVar);
            }
        });
        Task a10 = lVar.a();
        kotlin.jvm.internal.m.d(a10, "getTask(...)");
        return a10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleSetConsent$lambda$9(Map map, FlutterFirebaseAnalyticsPlugin flutterFirebaseAnalyticsPlugin, m6.l lVar) {
        FirebaseAnalytics.a aVar;
        FirebaseAnalytics.a aVar2;
        FirebaseAnalytics.a aVar3;
        FirebaseAnalytics.a aVar4;
        try {
            Boolean bool = (Boolean) map.get(Constants.AD_STORAGE_CONSENT_GRANTED);
            Boolean bool2 = (Boolean) map.get(Constants.ANALYTICS_STORAGE_CONSENT_GRANTED);
            Boolean bool3 = (Boolean) map.get(Constants.AD_PERSONALIZATION_SIGNALS_CONSENT_GRANTED);
            Boolean bool4 = (Boolean) map.get(Constants.AD_USER_DATA_CONSENT_GRANTED);
            HashMap hashMap = new HashMap();
            if (bool != null) {
                FirebaseAnalytics.b bVar = FirebaseAnalytics.b.AD_STORAGE;
                if (bool.booleanValue()) {
                    aVar4 = FirebaseAnalytics.a.GRANTED;
                } else {
                    aVar4 = FirebaseAnalytics.a.DENIED;
                }
                hashMap.put(bVar, aVar4);
            }
            if (bool2 != null) {
                FirebaseAnalytics.b bVar2 = FirebaseAnalytics.b.ANALYTICS_STORAGE;
                if (bool2.booleanValue()) {
                    aVar3 = FirebaseAnalytics.a.GRANTED;
                } else {
                    aVar3 = FirebaseAnalytics.a.DENIED;
                }
                hashMap.put(bVar2, aVar3);
            }
            if (bool3 != null) {
                FirebaseAnalytics.b bVar3 = FirebaseAnalytics.b.AD_PERSONALIZATION;
                if (bool3.booleanValue()) {
                    aVar2 = FirebaseAnalytics.a.GRANTED;
                } else {
                    aVar2 = FirebaseAnalytics.a.DENIED;
                }
                hashMap.put(bVar3, aVar2);
            }
            if (bool4 != null) {
                FirebaseAnalytics.b bVar4 = FirebaseAnalytics.b.AD_USER_DATA;
                if (bool4.booleanValue()) {
                    aVar = FirebaseAnalytics.a.GRANTED;
                } else {
                    aVar = FirebaseAnalytics.a.DENIED;
                }
                hashMap.put(bVar4, aVar);
            }
            FirebaseAnalytics firebaseAnalytics = flutterFirebaseAnalyticsPlugin.analytics;
            if (firebaseAnalytics == null) {
                kotlin.jvm.internal.m.s("analytics");
                firebaseAnalytics = null;
            }
            firebaseAnalytics.f(hashMap);
            lVar.c(null);
        } catch (Exception e10) {
            lVar.b(e10);
        }
    }

    private final Task handleSetDefaultEventParameters(final Map<String, ? extends Object> map) {
        final m6.l lVar = new m6.l();
        FlutterFirebasePlugin.cachedThreadPool.execute(new Runnable() { // from class: io.flutter.plugins.firebase.analytics.m0
            @Override // java.lang.Runnable
            public final void run() {
                FlutterFirebaseAnalyticsPlugin.handleSetDefaultEventParameters$lambda$10(FlutterFirebaseAnalyticsPlugin.this, map, lVar);
            }
        });
        Task a10 = lVar.a();
        kotlin.jvm.internal.m.d(a10, "getTask(...)");
        return a10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleSetDefaultEventParameters$lambda$10(FlutterFirebaseAnalyticsPlugin flutterFirebaseAnalyticsPlugin, Map map, m6.l lVar) {
        try {
            FirebaseAnalytics firebaseAnalytics = flutterFirebaseAnalyticsPlugin.analytics;
            if (firebaseAnalytics == null) {
                kotlin.jvm.internal.m.s("analytics");
                firebaseAnalytics = null;
            }
            firebaseAnalytics.g(flutterFirebaseAnalyticsPlugin.createBundleFromMap(map));
            lVar.c(null);
        } catch (Exception e10) {
            lVar.b(e10);
        }
    }

    private final Task handleSetSessionTimeoutDuration(final long j10) {
        final m6.l lVar = new m6.l();
        FlutterFirebasePlugin.cachedThreadPool.execute(new Runnable() { // from class: io.flutter.plugins.firebase.analytics.y
            @Override // java.lang.Runnable
            public final void run() {
                FlutterFirebaseAnalyticsPlugin.handleSetSessionTimeoutDuration$lambda$6(FlutterFirebaseAnalyticsPlugin.this, j10, lVar);
            }
        });
        Task a10 = lVar.a();
        kotlin.jvm.internal.m.d(a10, "getTask(...)");
        return a10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleSetSessionTimeoutDuration$lambda$6(FlutterFirebaseAnalyticsPlugin flutterFirebaseAnalyticsPlugin, long j10, m6.l lVar) {
        try {
            FirebaseAnalytics firebaseAnalytics = flutterFirebaseAnalyticsPlugin.analytics;
            if (firebaseAnalytics == null) {
                kotlin.jvm.internal.m.s("analytics");
                firebaseAnalytics = null;
            }
            firebaseAnalytics.h(j10);
            lVar.c(null);
        } catch (Exception e10) {
            lVar.b(e10);
        }
    }

    private final Task handleSetUserId(final String str) {
        final m6.l lVar = new m6.l();
        FlutterFirebasePlugin.cachedThreadPool.execute(new Runnable() { // from class: io.flutter.plugins.firebase.analytics.a0
            @Override // java.lang.Runnable
            public final void run() {
                FlutterFirebaseAnalyticsPlugin.handleSetUserId$lambda$4(FlutterFirebaseAnalyticsPlugin.this, str, lVar);
            }
        });
        Task a10 = lVar.a();
        kotlin.jvm.internal.m.d(a10, "getTask(...)");
        return a10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleSetUserId$lambda$4(FlutterFirebaseAnalyticsPlugin flutterFirebaseAnalyticsPlugin, String str, m6.l lVar) {
        try {
            FirebaseAnalytics firebaseAnalytics = flutterFirebaseAnalyticsPlugin.analytics;
            if (firebaseAnalytics == null) {
                kotlin.jvm.internal.m.s("analytics");
                firebaseAnalytics = null;
            }
            firebaseAnalytics.i(str);
            lVar.c(null);
        } catch (Exception e10) {
            lVar.b(e10);
        }
    }

    private final Task handleSetUserProperty(final String str, final String str2) {
        final m6.l lVar = new m6.l();
        FlutterFirebasePlugin.cachedThreadPool.execute(new Runnable() { // from class: io.flutter.plugins.firebase.analytics.s0
            @Override // java.lang.Runnable
            public final void run() {
                FlutterFirebaseAnalyticsPlugin.handleSetUserProperty$lambda$7(FlutterFirebaseAnalyticsPlugin.this, str, str2, lVar);
            }
        });
        Task a10 = lVar.a();
        kotlin.jvm.internal.m.d(a10, "getTask(...)");
        return a10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleSetUserProperty$lambda$7(FlutterFirebaseAnalyticsPlugin flutterFirebaseAnalyticsPlugin, String str, String str2, m6.l lVar) {
        try {
            FirebaseAnalytics firebaseAnalytics = flutterFirebaseAnalyticsPlugin.analytics;
            if (firebaseAnalytics == null) {
                kotlin.jvm.internal.m.s("analytics");
                firebaseAnalytics = null;
            }
            firebaseAnalytics.j(str, str2);
            lVar.c(null);
        } catch (Exception e10) {
            lVar.b(e10);
        }
    }

    private final <T> void handleTypedTaskResult(Task task, id.l lVar) {
        if (task.p()) {
            l.a aVar = xc.l.f32718b;
            lVar.invoke(xc.l.a(xc.l.b(task.l())));
            return;
        }
        Exception k10 = task.k();
        String str = (k10 == null || (str = k10.getMessage()) == null) ? "An unknown error occurred" : "An unknown error occurred";
        l.a aVar2 = xc.l.f32718b;
        lVar.invoke(xc.l.a(xc.l.b(xc.m.a(new FlutterError("firebase_analytics", str, null)))));
    }

    private final void handleVoidTaskResult(Task task, id.l lVar) {
        if (task.p()) {
            l.a aVar = xc.l.f32718b;
            lVar.invoke(xc.l.a(xc.l.b(xc.t.f32733a)));
            return;
        }
        Exception k10 = task.k();
        String str = (k10 == null || (str = k10.getMessage()) == null) ? "An unknown error occurred" : "An unknown error occurred";
        l.a aVar2 = xc.l.f32718b;
        lVar.invoke(xc.l.a(xc.l.b(xc.m.a(new FlutterError("firebase_analytics", str, null)))));
    }

    private final void initInstance(BinaryMessenger binaryMessenger, Context context) {
        this.analytics = FirebaseAnalytics.getInstance(context);
        this.channel = new MethodChannel(binaryMessenger, "plugins.flutter.io/firebase_analytics");
        FirebaseAnalyticsHostApi.Companion.setUp$default(FirebaseAnalyticsHostApi.Companion, binaryMessenger, this, null, 4, null);
        FlutterFirebasePluginRegistry.registerPlugin("plugins.flutter.io/firebase_analytics", this);
        this.messenger = binaryMessenger;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void logEvent$lambda$12(FlutterFirebaseAnalyticsPlugin flutterFirebaseAnalyticsPlugin, id.l lVar, Task task) {
        kotlin.jvm.internal.m.e(task, "task");
        flutterFirebaseAnalyticsPlugin.handleVoidTaskResult(task, lVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void resetAnalyticsData$lambda$16(FlutterFirebaseAnalyticsPlugin flutterFirebaseAnalyticsPlugin, id.l lVar, Task task) {
        kotlin.jvm.internal.m.e(task, "task");
        flutterFirebaseAnalyticsPlugin.handleVoidTaskResult(task, lVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setAnalyticsCollectionEnabled$lambda$15(FlutterFirebaseAnalyticsPlugin flutterFirebaseAnalyticsPlugin, id.l lVar, Task task) {
        kotlin.jvm.internal.m.e(task, "task");
        flutterFirebaseAnalyticsPlugin.handleVoidTaskResult(task, lVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setConsent$lambda$18(FlutterFirebaseAnalyticsPlugin flutterFirebaseAnalyticsPlugin, id.l lVar, Task task) {
        kotlin.jvm.internal.m.e(task, "task");
        flutterFirebaseAnalyticsPlugin.handleVoidTaskResult(task, lVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setDefaultEventParameters$lambda$19(FlutterFirebaseAnalyticsPlugin flutterFirebaseAnalyticsPlugin, id.l lVar, Task task) {
        kotlin.jvm.internal.m.e(task, "task");
        flutterFirebaseAnalyticsPlugin.handleVoidTaskResult(task, lVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setSessionTimeoutDuration$lambda$17(FlutterFirebaseAnalyticsPlugin flutterFirebaseAnalyticsPlugin, id.l lVar, Task task) {
        kotlin.jvm.internal.m.e(task, "task");
        flutterFirebaseAnalyticsPlugin.handleVoidTaskResult(task, lVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setUserId$lambda$13(FlutterFirebaseAnalyticsPlugin flutterFirebaseAnalyticsPlugin, id.l lVar, Task task) {
        kotlin.jvm.internal.m.e(task, "task");
        flutterFirebaseAnalyticsPlugin.handleVoidTaskResult(task, lVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setUserProperty$lambda$14(FlutterFirebaseAnalyticsPlugin flutterFirebaseAnalyticsPlugin, id.l lVar, Task task) {
        kotlin.jvm.internal.m.e(task, "task");
        flutterFirebaseAnalyticsPlugin.handleVoidTaskResult(task, lVar);
    }

    @Override // io.flutter.plugins.firebase.core.FlutterFirebasePlugin
    public Task didReinitializeFirebaseCore() {
        final m6.l lVar = new m6.l();
        FlutterFirebasePlugin.cachedThreadPool.execute(new Runnable() { // from class: io.flutter.plugins.firebase.analytics.p0
            @Override // java.lang.Runnable
            public final void run() {
                FlutterFirebaseAnalyticsPlugin.didReinitializeFirebaseCore$lambda$1(m6.l.this);
            }
        });
        Task a10 = lVar.a();
        kotlin.jvm.internal.m.d(a10, "getTask(...)");
        return a10;
    }

    @Override // io.flutter.plugins.firebase.analytics.FirebaseAnalyticsHostApi
    public void getAppInstanceId(final id.l callback) {
        kotlin.jvm.internal.m.e(callback, "callback");
        handleGetAppInstanceId().c(new m6.f() { // from class: io.flutter.plugins.firebase.analytics.o0
            @Override // m6.f
            public final void onComplete(Task task) {
                FlutterFirebaseAnalyticsPlugin.getAppInstanceId$lambda$20(FlutterFirebaseAnalyticsPlugin.this, callback, task);
            }
        });
    }

    @Override // io.flutter.plugins.firebase.core.FlutterFirebasePlugin
    public Task getPluginConstantsForFirebaseApp(h7.f fVar) {
        final m6.l lVar = new m6.l();
        FlutterFirebasePlugin.cachedThreadPool.execute(new Runnable() { // from class: io.flutter.plugins.firebase.analytics.z
            @Override // java.lang.Runnable
            public final void run() {
                FlutterFirebaseAnalyticsPlugin.getPluginConstantsForFirebaseApp$lambda$0(m6.l.this);
            }
        });
        Task a10 = lVar.a();
        kotlin.jvm.internal.m.d(a10, "getTask(...)");
        return a10;
    }

    @Override // io.flutter.plugins.firebase.analytics.FirebaseAnalyticsHostApi
    public void getSessionId(final id.l callback) {
        kotlin.jvm.internal.m.e(callback, "callback");
        handleGetSessionId().c(new m6.f() { // from class: io.flutter.plugins.firebase.analytics.f0
            @Override // m6.f
            public final void onComplete(Task task) {
                FlutterFirebaseAnalyticsPlugin.getSessionId$lambda$21(FlutterFirebaseAnalyticsPlugin.this, callback, task);
            }
        });
    }

    @Override // io.flutter.plugins.firebase.analytics.FirebaseAnalyticsHostApi
    public void initiateOnDeviceConversionMeasurement(Map<String, String> arguments, id.l callback) {
        kotlin.jvm.internal.m.e(arguments, "arguments");
        kotlin.jvm.internal.m.e(callback, "callback");
        l.a aVar = xc.l.f32718b;
        callback.invoke(xc.l.a(xc.l.b(xc.m.a(new FlutterError("unimplemented", "initiateOnDeviceConversionMeasurement is only available on iOS.", null)))));
    }

    @Override // io.flutter.plugins.firebase.analytics.FirebaseAnalyticsHostApi
    public void logEvent(Map<String, ? extends Object> event, final id.l callback) {
        kotlin.jvm.internal.m.e(event, "event");
        kotlin.jvm.internal.m.e(callback, "callback");
        handleLogEvent(event).c(new m6.f() { // from class: io.flutter.plugins.firebase.analytics.k0
            @Override // m6.f
            public final void onComplete(Task task) {
                FlutterFirebaseAnalyticsPlugin.logEvent$lambda$12(FlutterFirebaseAnalyticsPlugin.this, callback, task);
            }
        });
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding binding) {
        kotlin.jvm.internal.m.e(binding, "binding");
        BinaryMessenger binaryMessenger = binding.getBinaryMessenger();
        kotlin.jvm.internal.m.d(binaryMessenger, "getBinaryMessenger(...)");
        Context applicationContext = binding.getApplicationContext();
        kotlin.jvm.internal.m.d(applicationContext, "getApplicationContext(...)");
        initInstance(binaryMessenger, applicationContext);
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding binding) {
        kotlin.jvm.internal.m.e(binding, "binding");
        MethodChannel methodChannel = this.channel;
        if (methodChannel != null) {
            methodChannel.setMethodCallHandler(null);
        }
        BinaryMessenger binaryMessenger = this.messenger;
        if (binaryMessenger != null) {
            FirebaseAnalyticsHostApi.Companion companion = FirebaseAnalyticsHostApi.Companion;
            kotlin.jvm.internal.m.b(binaryMessenger);
            FirebaseAnalyticsHostApi.Companion.setUp$default(companion, binaryMessenger, null, null, 4, null);
            this.channel = null;
            this.messenger = null;
            return;
        }
        throw new IllegalStateException("Required value was null.".toString());
    }

    @Override // io.flutter.plugins.firebase.analytics.FirebaseAnalyticsHostApi
    public void resetAnalyticsData(final id.l callback) {
        kotlin.jvm.internal.m.e(callback, "callback");
        handleResetAnalyticsData().c(new m6.f() { // from class: io.flutter.plugins.firebase.analytics.c0
            @Override // m6.f
            public final void onComplete(Task task) {
                FlutterFirebaseAnalyticsPlugin.resetAnalyticsData$lambda$16(FlutterFirebaseAnalyticsPlugin.this, callback, task);
            }
        });
    }

    @Override // io.flutter.plugins.firebase.analytics.FirebaseAnalyticsHostApi
    public void setAnalyticsCollectionEnabled(boolean z10, final id.l callback) {
        kotlin.jvm.internal.m.e(callback, "callback");
        handleSetAnalyticsCollectionEnabled(z10).c(new m6.f() { // from class: io.flutter.plugins.firebase.analytics.h0
            @Override // m6.f
            public final void onComplete(Task task) {
                FlutterFirebaseAnalyticsPlugin.setAnalyticsCollectionEnabled$lambda$15(FlutterFirebaseAnalyticsPlugin.this, callback, task);
            }
        });
    }

    @Override // io.flutter.plugins.firebase.analytics.FirebaseAnalyticsHostApi
    public void setConsent(Map<String, Boolean> consent, final id.l callback) {
        kotlin.jvm.internal.m.e(consent, "consent");
        kotlin.jvm.internal.m.e(callback, "callback");
        handleSetConsent(consent).c(new m6.f() { // from class: io.flutter.plugins.firebase.analytics.g0
            @Override // m6.f
            public final void onComplete(Task task) {
                FlutterFirebaseAnalyticsPlugin.setConsent$lambda$18(FlutterFirebaseAnalyticsPlugin.this, callback, task);
            }
        });
    }

    @Override // io.flutter.plugins.firebase.analytics.FirebaseAnalyticsHostApi
    public void setDefaultEventParameters(Map<String, ? extends Object> map, final id.l callback) {
        kotlin.jvm.internal.m.e(callback, "callback");
        handleSetDefaultEventParameters(map).c(new m6.f() { // from class: io.flutter.plugins.firebase.analytics.e0
            @Override // m6.f
            public final void onComplete(Task task) {
                FlutterFirebaseAnalyticsPlugin.setDefaultEventParameters$lambda$19(FlutterFirebaseAnalyticsPlugin.this, callback, task);
            }
        });
    }

    @Override // io.flutter.plugins.firebase.analytics.FirebaseAnalyticsHostApi
    public void setSessionTimeoutDuration(long j10, final id.l callback) {
        kotlin.jvm.internal.m.e(callback, "callback");
        handleSetSessionTimeoutDuration(j10).c(new m6.f() { // from class: io.flutter.plugins.firebase.analytics.q0
            @Override // m6.f
            public final void onComplete(Task task) {
                FlutterFirebaseAnalyticsPlugin.setSessionTimeoutDuration$lambda$17(FlutterFirebaseAnalyticsPlugin.this, callback, task);
            }
        });
    }

    @Override // io.flutter.plugins.firebase.analytics.FirebaseAnalyticsHostApi
    public void setUserId(String str, final id.l callback) {
        kotlin.jvm.internal.m.e(callback, "callback");
        handleSetUserId(str).c(new m6.f() { // from class: io.flutter.plugins.firebase.analytics.n0
            @Override // m6.f
            public final void onComplete(Task task) {
                FlutterFirebaseAnalyticsPlugin.setUserId$lambda$13(FlutterFirebaseAnalyticsPlugin.this, callback, task);
            }
        });
    }

    @Override // io.flutter.plugins.firebase.analytics.FirebaseAnalyticsHostApi
    public void setUserProperty(String name, String str, final id.l callback) {
        kotlin.jvm.internal.m.e(name, "name");
        kotlin.jvm.internal.m.e(callback, "callback");
        handleSetUserProperty(name, str).c(new m6.f() { // from class: io.flutter.plugins.firebase.analytics.t0
            @Override // m6.f
            public final void onComplete(Task task) {
                FlutterFirebaseAnalyticsPlugin.setUserProperty$lambda$14(FlutterFirebaseAnalyticsPlugin.this, callback, task);
            }
        });
    }
}
