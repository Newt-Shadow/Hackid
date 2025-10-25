package io.flutter.plugins.firebase.crashlytics;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugins.firebase.core.FlutterFirebasePlugin;
import io.flutter.plugins.firebase.core.FlutterFirebasePluginRegistry;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import m6.Task;
import m6.n;
/* loaded from: classes2.dex */
public class FlutterFirebaseCrashlyticsPlugin implements FlutterFirebasePlugin, FlutterPlugin, MethodChannel.MethodCallHandler {
    private static final String FIREBASE_CRASHLYTICS_COLLECTION_ENABLED = "firebase_crashlytics_collection_enabled";
    public static final String TAG = "FLTFirebaseCrashlytics";
    private MethodChannel channel;

    private Task checkForUnsentReports() {
        final m6.l lVar = new m6.l();
        FlutterFirebasePlugin.cachedThreadPool.execute(new Runnable() { // from class: io.flutter.plugins.firebase.crashlytics.c
            @Override // java.lang.Runnable
            public final void run() {
                FlutterFirebaseCrashlyticsPlugin.this.lambda$checkForUnsentReports$0(lVar);
            }
        });
        return lVar.a();
    }

    private void crash() {
        new Handler(Looper.myLooper()).postDelayed(new Runnable() { // from class: io.flutter.plugins.firebase.crashlytics.d
            @Override // java.lang.Runnable
            public final void run() {
                FlutterFirebaseCrashlyticsPlugin.lambda$crash$1();
            }
        }, 50L);
    }

    private Task deleteUnsentReports() {
        final m6.l lVar = new m6.l();
        FlutterFirebasePlugin.cachedThreadPool.execute(new Runnable() { // from class: io.flutter.plugins.firebase.crashlytics.j
            @Override // java.lang.Runnable
            public final void run() {
                FlutterFirebaseCrashlyticsPlugin.lambda$deleteUnsentReports$2(m6.l.this);
            }
        });
        return lVar.a();
    }

    private Task didCrashOnPreviousExecution() {
        final m6.l lVar = new m6.l();
        FlutterFirebasePlugin.cachedThreadPool.execute(new Runnable() { // from class: io.flutter.plugins.firebase.crashlytics.a
            @Override // java.lang.Runnable
            public final void run() {
                FlutterFirebaseCrashlyticsPlugin.this.lambda$didCrashOnPreviousExecution$3(lVar);
            }
        });
        return lVar.a();
    }

    private StackTraceElement generateStackTraceElement(Map<String, String> map) {
        try {
            String str = map.get(Constants.FILE);
            String str2 = map.get(Constants.LINE);
            String str3 = map.get(Constants.CLASS);
            String str4 = map.get(Constants.METHOD);
            if (str3 == null) {
                str3 = "";
            }
            Objects.requireNonNull(str2);
            return new StackTraceElement(str3, str4, str, Integer.parseInt(str2));
        } catch (Exception unused) {
            Log.e(TAG, "Unable to generate stack trace element from Dart error.");
            return null;
        }
    }

    private SharedPreferences getCrashlyticsSharedPrefs(Context context) {
        return context.getSharedPreferences("com.google.firebase.crashlytics", 0);
    }

    private void initInstance(BinaryMessenger binaryMessenger) {
        MethodChannel methodChannel = new MethodChannel(binaryMessenger, "plugins.flutter.io/firebase_crashlytics");
        this.channel = methodChannel;
        methodChannel.setMethodCallHandler(this);
        FlutterFirebasePluginRegistry.registerPlugin("plugins.flutter.io/firebase_crashlytics", this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isCrashlyticsCollectionEnabled(h7.f fVar) {
        SharedPreferences crashlyticsSharedPrefs = getCrashlyticsSharedPrefs(fVar.m());
        if (crashlyticsSharedPrefs.contains(FIREBASE_CRASHLYTICS_COLLECTION_ENABLED)) {
            return crashlyticsSharedPrefs.getBoolean(FIREBASE_CRASHLYTICS_COLLECTION_ENABLED, true);
        }
        Boolean readCrashlyticsDataCollectionEnabledFromManifest = readCrashlyticsDataCollectionEnabledFromManifest(fVar.m());
        com.google.firebase.crashlytics.a.e().k(readCrashlyticsDataCollectionEnabledFromManifest);
        return readCrashlyticsDataCollectionEnabledFromManifest.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkForUnsentReports$0(m6.l lVar) {
        try {
            lVar.c(new HashMap<String, Object>(((Boolean) n.a(com.google.firebase.crashlytics.a.e().b())).booleanValue()) { // from class: io.flutter.plugins.firebase.crashlytics.FlutterFirebaseCrashlyticsPlugin.1
                final /* synthetic */ boolean val$unsentReports;

                {
                    this.val$unsentReports = r2;
                    put(Constants.UNSENT_REPORTS, Boolean.valueOf(r2));
                }
            });
        } catch (Exception e10) {
            lVar.b(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$crash$1() {
        throw new FirebaseCrashlyticsTestCrash();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$deleteUnsentReports$2(m6.l lVar) {
        try {
            com.google.firebase.crashlytics.a.e().c();
            lVar.c(null);
        } catch (Exception e10) {
            lVar.b(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didCrashOnPreviousExecution$3(m6.l lVar) {
        try {
            lVar.c(new HashMap<String, Object>(com.google.firebase.crashlytics.a.e().d()) { // from class: io.flutter.plugins.firebase.crashlytics.FlutterFirebaseCrashlyticsPlugin.2
                final /* synthetic */ boolean val$didCrashOnPreviousExecution;

                {
                    this.val$didCrashOnPreviousExecution = r2;
                    put(Constants.DID_CRASH_ON_PREVIOUS_EXECUTION, Boolean.valueOf(r2));
                }
            });
        } catch (Exception e10) {
            lVar.b(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$didReinitializeFirebaseCore$12(m6.l lVar) {
        try {
            lVar.c(null);
        } catch (Exception e10) {
            lVar.b(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getPluginConstantsForFirebaseApp$11(m6.l lVar, h7.f fVar) {
        try {
            lVar.c(new HashMap<String, Object>(fVar) { // from class: io.flutter.plugins.firebase.crashlytics.FlutterFirebaseCrashlyticsPlugin.4
                final /* synthetic */ h7.f val$firebaseApp;

                {
                    this.val$firebaseApp = fVar;
                    if (fVar.q().equals("[DEFAULT]")) {
                        put(Constants.IS_CRASHLYTICS_COLLECTION_ENABLED, Boolean.valueOf(FlutterFirebaseCrashlyticsPlugin.this.isCrashlyticsCollectionEnabled(h7.f.o())));
                    }
                }
            });
        } catch (Exception e10) {
            lVar.b(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$log$5(Map map, m6.l lVar) {
        try {
            Object obj = map.get("message");
            Objects.requireNonNull(obj);
            com.google.firebase.crashlytics.a.e().h((String) obj);
            lVar.c(null);
        } catch (Exception e10) {
            lVar.b(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onMethodCall$10(MethodChannel.Result result, Task task) {
        String str;
        if (task.p()) {
            result.success(task.l());
            return;
        }
        Exception k10 = task.k();
        if (k10 != null) {
            str = k10.getMessage();
        } else {
            str = "An unknown error occurred";
        }
        result.error("firebase_crashlytics", str, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$recordError$4(Map map, m6.l lVar) {
        FlutterError flutterError;
        try {
            com.google.firebase.crashlytics.a e10 = com.google.firebase.crashlytics.a.e();
            Object obj = map.get(Constants.EXCEPTION);
            Objects.requireNonNull(obj);
            String str = (String) obj;
            String str2 = (String) map.get(Constants.REASON);
            Object obj2 = map.get(Constants.INFORMATION);
            Objects.requireNonNull(obj2);
            String str3 = (String) obj2;
            Object obj3 = map.get(Constants.FATAL);
            Objects.requireNonNull(obj3);
            boolean booleanValue = ((Boolean) obj3).booleanValue();
            Object obj4 = map.get(Constants.BUILD_ID);
            Objects.requireNonNull(obj4);
            String str4 = (String) obj4;
            Object obj5 = map.get(Constants.LOADING_UNITS);
            Objects.requireNonNull(obj5);
            List list = (List) obj5;
            if (str4.length() > 0) {
                com.google.firebase.crashlytics.b.b(str4);
            }
            com.google.firebase.crashlytics.b.c(list);
            if (str2 != null) {
                e10.l(Constants.FLUTTER_ERROR_REASON, "thrown " + str2);
                flutterError = new FlutterError(str + ". Error thrown " + str2 + ".");
            } else {
                flutterError = new FlutterError(str);
            }
            e10.l(Constants.FLUTTER_ERROR_EXCEPTION, str);
            ArrayList arrayList = new ArrayList();
            Object obj6 = map.get(Constants.STACK_TRACE_ELEMENTS);
            Objects.requireNonNull(obj6);
            for (Map<String, String> map2 : (List) obj6) {
                StackTraceElement generateStackTraceElement = generateStackTraceElement(map2);
                if (generateStackTraceElement != null) {
                    arrayList.add(generateStackTraceElement);
                }
            }
            flutterError.setStackTrace((StackTraceElement[]) arrayList.toArray(new StackTraceElement[0]));
            if (!str3.isEmpty()) {
                e10.h(str3);
            }
            if (booleanValue) {
                com.google.firebase.crashlytics.b.a(flutterError);
            } else {
                e10.i(flutterError);
            }
            lVar.c(null);
        } catch (Exception e11) {
            lVar.b(e11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$sendUnsentReports$6(m6.l lVar) {
        try {
            com.google.firebase.crashlytics.a.e().j();
            lVar.c(null);
        } catch (Exception e10) {
            lVar.b(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setCrashlyticsCollectionEnabled$7(Map map, m6.l lVar) {
        try {
            Object obj = map.get("enabled");
            Objects.requireNonNull(obj);
            com.google.firebase.crashlytics.a.e().k((Boolean) obj);
            lVar.c(new HashMap<String, Object>() { // from class: io.flutter.plugins.firebase.crashlytics.FlutterFirebaseCrashlyticsPlugin.3
                {
                    put(Constants.IS_CRASHLYTICS_COLLECTION_ENABLED, Boolean.valueOf(FlutterFirebaseCrashlyticsPlugin.this.isCrashlyticsCollectionEnabled(h7.f.o())));
                }
            });
        } catch (Exception e10) {
            lVar.b(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$setCustomKey$9(Map map, m6.l lVar) {
        try {
            Object obj = map.get("key");
            Objects.requireNonNull(obj);
            Object obj2 = map.get("value");
            Objects.requireNonNull(obj2);
            com.google.firebase.crashlytics.a.e().l((String) obj, (String) obj2);
            lVar.c(null);
        } catch (Exception e10) {
            lVar.b(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$setUserIdentifier$8(Map map, m6.l lVar) {
        try {
            Object obj = map.get(Constants.IDENTIFIER);
            Objects.requireNonNull(obj);
            com.google.firebase.crashlytics.a.e().m((String) obj);
            lVar.c(null);
        } catch (Exception e10) {
            lVar.b(e10);
        }
    }

    private Task log(final Map<String, Object> map) {
        final m6.l lVar = new m6.l();
        FlutterFirebasePlugin.cachedThreadPool.execute(new Runnable() { // from class: io.flutter.plugins.firebase.crashlytics.k
            @Override // java.lang.Runnable
            public final void run() {
                FlutterFirebaseCrashlyticsPlugin.lambda$log$5(map, lVar);
            }
        });
        return lVar.a();
    }

    private static Boolean readCrashlyticsDataCollectionEnabledFromManifest(Context context) {
        ApplicationInfo applicationInfo;
        Bundle bundle;
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null && (applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 128)) != null && (bundle = applicationInfo.metaData) != null && bundle.containsKey(FIREBASE_CRASHLYTICS_COLLECTION_ENABLED)) {
                return Boolean.valueOf(applicationInfo.metaData.getBoolean(FIREBASE_CRASHLYTICS_COLLECTION_ENABLED));
            }
        } catch (PackageManager.NameNotFoundException e10) {
            n7.g.f().e("Could not read data collection permission from manifest", e10);
        }
        return Boolean.TRUE;
    }

    private Task recordError(final Map<String, Object> map) {
        final m6.l lVar = new m6.l();
        FlutterFirebasePlugin.cachedThreadPool.execute(new Runnable() { // from class: io.flutter.plugins.firebase.crashlytics.f
            @Override // java.lang.Runnable
            public final void run() {
                FlutterFirebaseCrashlyticsPlugin.this.lambda$recordError$4(map, lVar);
            }
        });
        return lVar.a();
    }

    private Task sendUnsentReports() {
        final m6.l lVar = new m6.l();
        FlutterFirebasePlugin.cachedThreadPool.execute(new Runnable() { // from class: io.flutter.plugins.firebase.crashlytics.b
            @Override // java.lang.Runnable
            public final void run() {
                FlutterFirebaseCrashlyticsPlugin.lambda$sendUnsentReports$6(m6.l.this);
            }
        });
        return lVar.a();
    }

    private Task setCrashlyticsCollectionEnabled(final Map<String, Object> map) {
        final m6.l lVar = new m6.l();
        FlutterFirebasePlugin.cachedThreadPool.execute(new Runnable() { // from class: io.flutter.plugins.firebase.crashlytics.g
            @Override // java.lang.Runnable
            public final void run() {
                FlutterFirebaseCrashlyticsPlugin.this.lambda$setCrashlyticsCollectionEnabled$7(map, lVar);
            }
        });
        return lVar.a();
    }

    private Task setCustomKey(final Map<String, Object> map) {
        final m6.l lVar = new m6.l();
        FlutterFirebasePlugin.cachedThreadPool.execute(new Runnable() { // from class: io.flutter.plugins.firebase.crashlytics.l
            @Override // java.lang.Runnable
            public final void run() {
                FlutterFirebaseCrashlyticsPlugin.lambda$setCustomKey$9(map, lVar);
            }
        });
        return lVar.a();
    }

    private Task setUserIdentifier(final Map<String, Object> map) {
        final m6.l lVar = new m6.l();
        FlutterFirebasePlugin.cachedThreadPool.execute(new Runnable() { // from class: io.flutter.plugins.firebase.crashlytics.h
            @Override // java.lang.Runnable
            public final void run() {
                FlutterFirebaseCrashlyticsPlugin.lambda$setUserIdentifier$8(map, lVar);
            }
        });
        return lVar.a();
    }

    @Override // io.flutter.plugins.firebase.core.FlutterFirebasePlugin
    public Task didReinitializeFirebaseCore() {
        final m6.l lVar = new m6.l();
        FlutterFirebasePlugin.cachedThreadPool.execute(new Runnable() { // from class: io.flutter.plugins.firebase.crashlytics.e
            @Override // java.lang.Runnable
            public final void run() {
                FlutterFirebaseCrashlyticsPlugin.lambda$didReinitializeFirebaseCore$12(m6.l.this);
            }
        });
        return lVar.a();
    }

    @Override // io.flutter.plugins.firebase.core.FlutterFirebasePlugin
    public Task getPluginConstantsForFirebaseApp(final h7.f fVar) {
        final m6.l lVar = new m6.l();
        FlutterFirebasePlugin.cachedThreadPool.execute(new Runnable() { // from class: io.flutter.plugins.firebase.crashlytics.i
            @Override // java.lang.Runnable
            public final void run() {
                FlutterFirebaseCrashlyticsPlugin.this.lambda$getPluginConstantsForFirebaseApp$11(lVar, fVar);
            }
        });
        return lVar.a();
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        initInstance(flutterPluginBinding.getBinaryMessenger());
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        MethodChannel methodChannel = this.channel;
        if (methodChannel != null) {
            methodChannel.setMethodCallHandler(null);
            this.channel = null;
        }
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, final MethodChannel.Result result) {
        Task didCrashOnPreviousExecution;
        String str = methodCall.method;
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -2094964816:
                if (str.equals("Crashlytics#didCrashOnPreviousExecution")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1437158995:
                if (str.equals("Crashlytics#recordError")) {
                    c10 = 1;
                    break;
                }
                break;
            case -1025128541:
                if (str.equals("Crashlytics#checkForUnsentReports")) {
                    c10 = 2;
                    break;
                }
                break;
            case -424770276:
                if (str.equals("Crashlytics#sendUnsentReports")) {
                    c10 = 3;
                    break;
                }
                break;
            case -108157790:
                if (str.equals("Crashlytics#setCrashlyticsCollectionEnabled")) {
                    c10 = 4;
                    break;
                }
                break;
            case 28093114:
                if (str.equals("Crashlytics#log")) {
                    c10 = 5;
                    break;
                }
                break;
            case 108415030:
                if (str.equals("Crashlytics#setCustomKey")) {
                    c10 = 6;
                    break;
                }
                break;
            case 213629529:
                if (str.equals("Crashlytics#deleteUnsentReports")) {
                    c10 = 7;
                    break;
                }
                break;
            case 679831756:
                if (str.equals("Crashlytics#setUserIdentifier")) {
                    c10 = '\b';
                    break;
                }
                break;
            case 1219454365:
                if (str.equals("Crashlytics#crash")) {
                    c10 = '\t';
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                didCrashOnPreviousExecution = didCrashOnPreviousExecution();
                break;
            case 1:
                didCrashOnPreviousExecution = recordError((Map) methodCall.arguments());
                break;
            case 2:
                didCrashOnPreviousExecution = checkForUnsentReports();
                break;
            case 3:
                didCrashOnPreviousExecution = sendUnsentReports();
                break;
            case 4:
                didCrashOnPreviousExecution = setCrashlyticsCollectionEnabled((Map) methodCall.arguments());
                break;
            case 5:
                didCrashOnPreviousExecution = log((Map) methodCall.arguments());
                break;
            case 6:
                didCrashOnPreviousExecution = setCustomKey((Map) methodCall.arguments());
                break;
            case 7:
                didCrashOnPreviousExecution = deleteUnsentReports();
                break;
            case '\b':
                didCrashOnPreviousExecution = setUserIdentifier((Map) methodCall.arguments());
                break;
            case '\t':
                crash();
                return;
            default:
                result.notImplemented();
                return;
        }
        didCrashOnPreviousExecution.c(new m6.f() { // from class: io.flutter.plugins.firebase.crashlytics.m
            @Override // m6.f
            public final void onComplete(Task task) {
                FlutterFirebaseCrashlyticsPlugin.lambda$onMethodCall$10(MethodChannel.Result.this, task);
            }
        });
    }
}
