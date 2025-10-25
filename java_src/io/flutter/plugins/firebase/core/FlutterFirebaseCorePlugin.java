package io.flutter.plugins.firebase.core;

import android.content.Context;
import android.os.Looper;
import h7.n;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugins.firebase.core.GeneratedAndroidFirebaseCore;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import m6.Task;
/* loaded from: classes2.dex */
public class FlutterFirebaseCorePlugin implements FlutterPlugin, GeneratedAndroidFirebaseCore.FirebaseCoreHostApi, GeneratedAndroidFirebaseCore.FirebaseAppHostApi {
    public static Map<String, String> customAuthDomain = new HashMap();
    private Context applicationContext;
    private boolean coreInitialized = false;

    private Task firebaseAppToMap(final h7.f fVar) {
        final m6.l lVar = new m6.l();
        FlutterFirebasePlugin.cachedThreadPool.execute(new Runnable() { // from class: io.flutter.plugins.firebase.core.f
            @Override // java.lang.Runnable
            public final void run() {
                FlutterFirebaseCorePlugin.this.lambda$firebaseAppToMap$0(fVar, lVar);
            }
        });
        return lVar.a();
    }

    private GeneratedAndroidFirebaseCore.CoreFirebaseOptions firebaseOptionsToMap(h7.n nVar) {
        GeneratedAndroidFirebaseCore.CoreFirebaseOptions.Builder builder = new GeneratedAndroidFirebaseCore.CoreFirebaseOptions.Builder();
        builder.setApiKey(nVar.b());
        builder.setAppId(nVar.c());
        if (nVar.f() != null) {
            builder.setMessagingSenderId(nVar.f());
        }
        if (nVar.g() != null) {
            builder.setProjectId(nVar.g());
        }
        builder.setDatabaseURL(nVar.d());
        builder.setStorageBucket(nVar.h());
        builder.setTrackingId(nVar.e());
        return builder.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$delete$8(String str, m6.l lVar) {
        try {
            try {
                h7.f.p(str).j();
            } catch (IllegalStateException unused) {
            }
            lVar.c(null);
        } catch (Exception e10) {
            lVar.b(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$firebaseAppToMap$0(h7.f fVar, m6.l lVar) {
        try {
            GeneratedAndroidFirebaseCore.CoreInitializeResponse.Builder builder = new GeneratedAndroidFirebaseCore.CoreInitializeResponse.Builder();
            builder.setName(fVar.q());
            builder.setOptions(firebaseOptionsToMap(fVar.r()));
            builder.setIsAutomaticDataCollectionEnabled(Boolean.valueOf(fVar.x()));
            builder.setPluginConstants((Map) m6.n.a(FlutterFirebasePluginRegistry.getPluginConstantsForFirebaseApp(fVar)));
            lVar.c(builder.build());
        } catch (Exception e10) {
            lVar.b(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initializeApp$3(GeneratedAndroidFirebaseCore.CoreFirebaseOptions coreFirebaseOptions, String str, m6.l lVar) {
        try {
            h7.n a10 = new n.b().b(coreFirebaseOptions.getApiKey()).c(coreFirebaseOptions.getAppId()).d(coreFirebaseOptions.getDatabaseURL()).f(coreFirebaseOptions.getMessagingSenderId()).g(coreFirebaseOptions.getProjectId()).h(coreFirebaseOptions.getStorageBucket()).e(coreFirebaseOptions.getTrackingId()).a();
            try {
                Looper.prepare();
            } catch (Exception unused) {
            }
            if (coreFirebaseOptions.getAuthDomain() != null) {
                customAuthDomain.put(str, coreFirebaseOptions.getAuthDomain());
            }
            lVar.c((GeneratedAndroidFirebaseCore.CoreInitializeResponse) m6.n.a(firebaseAppToMap(h7.f.w(this.applicationContext, a10, str))));
        } catch (Exception e10) {
            lVar.b(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initializeCore$4(m6.l lVar) {
        try {
            if (!this.coreInitialized) {
                this.coreInitialized = true;
            } else {
                m6.n.a(FlutterFirebasePluginRegistry.didReinitializeFirebaseCore());
            }
            List<h7.f> n10 = h7.f.n(this.applicationContext);
            ArrayList arrayList = new ArrayList(n10.size());
            for (h7.f fVar : n10) {
                arrayList.add((GeneratedAndroidFirebaseCore.CoreInitializeResponse) m6.n.a(firebaseAppToMap(fVar)));
            }
            lVar.c(arrayList);
        } catch (Exception e10) {
            lVar.b(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$listenToResponse$1(GeneratedAndroidFirebaseCore.Result result, Task task) {
        if (task.p()) {
            result.success(task.l());
        } else {
            result.error(task.k());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$listenToVoidResponse$2(GeneratedAndroidFirebaseCore.VoidResult voidResult, Task task) {
        if (task.p()) {
            voidResult.success();
        } else {
            voidResult.error(task.k());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$optionsFromResource$5(m6.l lVar) {
        try {
            h7.n a10 = h7.n.a(this.applicationContext);
            if (a10 == null) {
                lVar.b(new Exception("Failed to load FirebaseOptions from resource. Check that you have defined values.xml correctly."));
            } else {
                lVar.c(firebaseOptionsToMap(a10));
            }
        } catch (Exception e10) {
            lVar.b(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$setAutomaticDataCollectionEnabled$6(String str, Boolean bool, m6.l lVar) {
        try {
            h7.f.p(str).F(bool);
            lVar.c(null);
        } catch (Exception e10) {
            lVar.b(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$setAutomaticResourceManagementEnabled$7(String str, Boolean bool, m6.l lVar) {
        try {
            h7.f.p(str).E(bool.booleanValue());
            lVar.c(null);
        } catch (Exception e10) {
            lVar.b(e10);
        }
    }

    private <T> void listenToResponse(m6.l lVar, final GeneratedAndroidFirebaseCore.Result<T> result) {
        lVar.a().c(new m6.f() { // from class: io.flutter.plugins.firebase.core.d
            @Override // m6.f
            public final void onComplete(Task task) {
                FlutterFirebaseCorePlugin.lambda$listenToResponse$1(GeneratedAndroidFirebaseCore.Result.this, task);
            }
        });
    }

    private void listenToVoidResponse(m6.l lVar, final GeneratedAndroidFirebaseCore.VoidResult voidResult) {
        lVar.a().c(new m6.f() { // from class: io.flutter.plugins.firebase.core.b
            @Override // m6.f
            public final void onComplete(Task task) {
                FlutterFirebaseCorePlugin.lambda$listenToVoidResponse$2(GeneratedAndroidFirebaseCore.VoidResult.this, task);
            }
        });
    }

    @Override // io.flutter.plugins.firebase.core.GeneratedAndroidFirebaseCore.FirebaseAppHostApi
    public void delete(final String str, GeneratedAndroidFirebaseCore.VoidResult voidResult) {
        final m6.l lVar = new m6.l();
        FlutterFirebasePlugin.cachedThreadPool.execute(new Runnable() { // from class: io.flutter.plugins.firebase.core.h
            @Override // java.lang.Runnable
            public final void run() {
                FlutterFirebaseCorePlugin.lambda$delete$8(str, lVar);
            }
        });
        listenToVoidResponse(lVar, voidResult);
    }

    @Override // io.flutter.plugins.firebase.core.GeneratedAndroidFirebaseCore.FirebaseCoreHostApi
    public void initializeApp(final String str, final GeneratedAndroidFirebaseCore.CoreFirebaseOptions coreFirebaseOptions, GeneratedAndroidFirebaseCore.Result<GeneratedAndroidFirebaseCore.CoreInitializeResponse> result) {
        final m6.l lVar = new m6.l();
        FlutterFirebasePlugin.cachedThreadPool.execute(new Runnable() { // from class: io.flutter.plugins.firebase.core.c
            @Override // java.lang.Runnable
            public final void run() {
                FlutterFirebaseCorePlugin.this.lambda$initializeApp$3(coreFirebaseOptions, str, lVar);
            }
        });
        listenToResponse(lVar, result);
    }

    @Override // io.flutter.plugins.firebase.core.GeneratedAndroidFirebaseCore.FirebaseCoreHostApi
    public void initializeCore(GeneratedAndroidFirebaseCore.Result<List<GeneratedAndroidFirebaseCore.CoreInitializeResponse>> result) {
        final m6.l lVar = new m6.l();
        FlutterFirebasePlugin.cachedThreadPool.execute(new Runnable() { // from class: io.flutter.plugins.firebase.core.i
            @Override // java.lang.Runnable
            public final void run() {
                FlutterFirebaseCorePlugin.this.lambda$initializeCore$4(lVar);
            }
        });
        listenToResponse(lVar, result);
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        GeneratedAndroidFirebaseCore.FirebaseCoreHostApi.setUp(flutterPluginBinding.getBinaryMessenger(), this);
        GeneratedAndroidFirebaseCore.FirebaseAppHostApi.setUp(flutterPluginBinding.getBinaryMessenger(), this);
        this.applicationContext = flutterPluginBinding.getApplicationContext();
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        this.applicationContext = null;
        GeneratedAndroidFirebaseCore.FirebaseCoreHostApi.setUp(flutterPluginBinding.getBinaryMessenger(), null);
        GeneratedAndroidFirebaseCore.FirebaseAppHostApi.setUp(flutterPluginBinding.getBinaryMessenger(), null);
    }

    @Override // io.flutter.plugins.firebase.core.GeneratedAndroidFirebaseCore.FirebaseCoreHostApi
    public void optionsFromResource(GeneratedAndroidFirebaseCore.Result<GeneratedAndroidFirebaseCore.CoreFirebaseOptions> result) {
        final m6.l lVar = new m6.l();
        FlutterFirebasePlugin.cachedThreadPool.execute(new Runnable() { // from class: io.flutter.plugins.firebase.core.e
            @Override // java.lang.Runnable
            public final void run() {
                FlutterFirebaseCorePlugin.this.lambda$optionsFromResource$5(lVar);
            }
        });
        listenToResponse(lVar, result);
    }

    @Override // io.flutter.plugins.firebase.core.GeneratedAndroidFirebaseCore.FirebaseAppHostApi
    public void setAutomaticDataCollectionEnabled(final String str, final Boolean bool, GeneratedAndroidFirebaseCore.VoidResult voidResult) {
        final m6.l lVar = new m6.l();
        FlutterFirebasePlugin.cachedThreadPool.execute(new Runnable() { // from class: io.flutter.plugins.firebase.core.g
            @Override // java.lang.Runnable
            public final void run() {
                FlutterFirebaseCorePlugin.lambda$setAutomaticDataCollectionEnabled$6(str, bool, lVar);
            }
        });
        listenToVoidResponse(lVar, voidResult);
    }

    @Override // io.flutter.plugins.firebase.core.GeneratedAndroidFirebaseCore.FirebaseAppHostApi
    public void setAutomaticResourceManagementEnabled(final String str, final Boolean bool, GeneratedAndroidFirebaseCore.VoidResult voidResult) {
        final m6.l lVar = new m6.l();
        FlutterFirebasePlugin.cachedThreadPool.execute(new Runnable() { // from class: io.flutter.plugins.firebase.core.a
            @Override // java.lang.Runnable
            public final void run() {
                FlutterFirebaseCorePlugin.lambda$setAutomaticResourceManagementEnabled$7(str, bool, lVar);
            }
        });
        listenToVoidResponse(lVar, voidResult);
    }
}
