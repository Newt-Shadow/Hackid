package io.flutter.plugins.firebase.messaging;

import android.app.Activity;
import android.content.Intent;
import android.os.Build;
import com.google.firebase.messaging.FirebaseMessaging;
import com.google.firebase.messaging.u0;
import io.appmetrica.analytics.coreutils.internal.services.telephony.CellularNetworkTypeExtractor;
import io.flutter.embedding.engine.FlutterShellArgs;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.PluginRegistry;
import io.flutter.plugins.firebase.core.FlutterFirebasePlugin;
import io.flutter.plugins.firebase.core.FlutterFirebasePluginRegistry;
import io.flutter.plugins.firebase.messaging.FlutterFirebasePermissionManager;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import m6.Task;
/* loaded from: classes2.dex */
public class FlutterFirebaseMessagingPlugin implements FlutterFirebasePlugin, MethodChannel.MethodCallHandler, PluginRegistry.NewIntentListener, FlutterPlugin, ActivityAware {
    private MethodChannel channel;
    private u0 initialMessage;
    private Map<String, Object> initialMessageNotification;
    private Activity mainActivity;
    FlutterFirebasePermissionManager permissionManager;
    private androidx.lifecycle.t remoteMessageObserver;
    private androidx.lifecycle.t tokenObserver;
    private final HashMap<String, Boolean> consumedInitialMessages = new HashMap<>();
    private final androidx.lifecycle.q liveDataRemoteMessage = FlutterFirebaseRemoteMessageLiveData.getInstance();
    private final androidx.lifecycle.q liveDataToken = FlutterFirebaseTokenLiveData.getInstance();

    private Boolean checkPermissions() {
        boolean z10;
        if (ContextHolder.getApplicationContext().checkSelfPermission("android.permission.POST_NOTIFICATIONS") == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        return Boolean.valueOf(z10);
    }

    private Task deleteToken() {
        final m6.l lVar = new m6.l();
        FlutterFirebasePlugin.cachedThreadPool.execute(new Runnable() { // from class: io.flutter.plugins.firebase.messaging.g
            @Override // java.lang.Runnable
            public final void run() {
                FlutterFirebaseMessagingPlugin.lambda$deleteToken$2(m6.l.this);
            }
        });
        return lVar.a();
    }

    private Map<String, Object> getExceptionDetails(Exception exc) {
        HashMap hashMap = new HashMap();
        hashMap.put("code", CellularNetworkTypeExtractor.UNKNOWN_NETWORK_TYPE_VALUE);
        if (exc != null) {
            hashMap.put("message", exc.getMessage());
        } else {
            hashMap.put("message", "An unknown error has occurred.");
        }
        return hashMap;
    }

    private Task getInitialMessage() {
        final m6.l lVar = new m6.l();
        FlutterFirebasePlugin.cachedThreadPool.execute(new Runnable() { // from class: io.flutter.plugins.firebase.messaging.t
            @Override // java.lang.Runnable
            public final void run() {
                FlutterFirebaseMessagingPlugin.this.lambda$getInitialMessage$9(lVar);
            }
        });
        return lVar.a();
    }

    private Task getPermissions() {
        final m6.l lVar = new m6.l();
        FlutterFirebasePlugin.cachedThreadPool.execute(new Runnable() { // from class: io.flutter.plugins.firebase.messaging.p
            @Override // java.lang.Runnable
            public final void run() {
                FlutterFirebaseMessagingPlugin.this.lambda$getPermissions$13(lVar);
            }
        });
        return lVar.a();
    }

    private Task getToken() {
        final m6.l lVar = new m6.l();
        FlutterFirebasePlugin.cachedThreadPool.execute(new Runnable() { // from class: io.flutter.plugins.firebase.messaging.e
            @Override // java.lang.Runnable
            public final void run() {
                FlutterFirebaseMessagingPlugin.this.lambda$getToken$3(lVar);
            }
        });
        return lVar.a();
    }

    private void initInstance(BinaryMessenger binaryMessenger) {
        MethodChannel methodChannel = new MethodChannel(binaryMessenger, "plugins.flutter.io/firebase_messaging");
        this.channel = methodChannel;
        methodChannel.setMethodCallHandler(this);
        this.permissionManager = new FlutterFirebasePermissionManager();
        this.remoteMessageObserver = new androidx.lifecycle.t() { // from class: io.flutter.plugins.firebase.messaging.i
            @Override // androidx.lifecycle.t
            public final void a(Object obj) {
                FlutterFirebaseMessagingPlugin.this.lambda$initInstance$0((u0) obj);
            }
        };
        this.tokenObserver = new androidx.lifecycle.t() { // from class: io.flutter.plugins.firebase.messaging.j
            @Override // androidx.lifecycle.t
            public final void a(Object obj) {
                FlutterFirebaseMessagingPlugin.this.lambda$initInstance$1((String) obj);
            }
        };
        this.liveDataRemoteMessage.observeForever(this.remoteMessageObserver);
        this.liveDataToken.observeForever(this.tokenObserver);
        FlutterFirebasePluginRegistry.registerPlugin("plugins.flutter.io/firebase_messaging", this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$deleteToken$2(m6.l lVar) {
        try {
            m6.n.a(FirebaseMessaging.r().o());
            lVar.c(null);
        } catch (Exception e10) {
            lVar.b(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getInitialMessage$9(m6.l lVar) {
        Map<String, Object> map;
        try {
            u0 u0Var = this.initialMessage;
            if (u0Var != null) {
                Map<String, Object> remoteMessageToMap = FlutterFirebaseMessagingUtils.remoteMessageToMap(u0Var);
                Map<String, Object> map2 = this.initialMessageNotification;
                if (map2 != null) {
                    remoteMessageToMap.put("notification", map2);
                }
                lVar.c(remoteMessageToMap);
                this.initialMessage = null;
                this.initialMessageNotification = null;
                return;
            }
            Activity activity = this.mainActivity;
            if (activity == null) {
                lVar.c(null);
                return;
            }
            Intent intent = activity.getIntent();
            if (intent != null && intent.getExtras() != null) {
                String string = intent.getExtras().getString("google.message_id");
                if (string == null) {
                    string = intent.getExtras().getString("message_id");
                }
                if (string != null && this.consumedInitialMessages.get(string) == null) {
                    u0 u0Var2 = FlutterFirebaseMessagingReceiver.notifications.get(string);
                    if (u0Var2 == null) {
                        Map<String, Object> firebaseMessageMap = FlutterFirebaseMessagingStore.getInstance().getFirebaseMessageMap(string);
                        if (firebaseMessageMap != null) {
                            u0Var2 = FlutterFirebaseMessagingUtils.getRemoteMessageForArguments(firebaseMessageMap);
                            if (firebaseMessageMap.get("notification") != null) {
                                map = uncheckedCastToMap(firebaseMessageMap.get("notification"));
                                FlutterFirebaseMessagingStore.getInstance().removeFirebaseMessage(string);
                            }
                        }
                        map = null;
                        FlutterFirebaseMessagingStore.getInstance().removeFirebaseMessage(string);
                    } else {
                        map = null;
                    }
                    if (u0Var2 == null) {
                        lVar.c(null);
                        return;
                    }
                    this.consumedInitialMessages.put(string, Boolean.TRUE);
                    Map<String, Object> remoteMessageToMap2 = FlutterFirebaseMessagingUtils.remoteMessageToMap(u0Var2);
                    if (u0Var2.p() == null && map != null) {
                        remoteMessageToMap2.put("notification", map);
                    }
                    lVar.c(remoteMessageToMap2);
                    return;
                }
                lVar.c(null);
                return;
            }
            lVar.c(null);
        } catch (Exception e10) {
            lVar.b(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getPermissions$13(m6.l lVar) {
        boolean a10;
        int i10;
        try {
            HashMap hashMap = new HashMap();
            if (Build.VERSION.SDK_INT >= 33) {
                a10 = checkPermissions().booleanValue();
            } else {
                a10 = androidx.core.app.p.e(this.mainActivity).a();
            }
            if (a10) {
                i10 = 1;
            } else {
                i10 = 0;
            }
            hashMap.put("authorizationStatus", Integer.valueOf(i10));
            lVar.c(hashMap);
        } catch (Exception e10) {
            lVar.b(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$getPluginConstantsForFirebaseApp$15(h7.f fVar, m6.l lVar) {
        try {
            HashMap hashMap = new HashMap();
            if (fVar.q().equals("[DEFAULT]")) {
                hashMap.put("AUTO_INIT_ENABLED", Boolean.valueOf(FirebaseMessaging.r().A()));
            }
            lVar.c(hashMap);
        } catch (Exception e10) {
            lVar.b(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getToken$3(m6.l lVar) {
        try {
            lVar.c(new HashMap<String, Object>((String) m6.n.a(FirebaseMessaging.r().u())) { // from class: io.flutter.plugins.firebase.messaging.FlutterFirebaseMessagingPlugin.1
                final /* synthetic */ String val$token;

                {
                    this.val$token = r2;
                    put("token", r2);
                }
            });
        } catch (Exception e10) {
            lVar.b(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initInstance$0(u0 u0Var) {
        this.channel.invokeMethod("Messaging#onMessage", FlutterFirebaseMessagingUtils.remoteMessageToMap(u0Var));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initInstance$1(String str) {
        this.channel.invokeMethod("Messaging#onTokenRefresh", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onMethodCall$14(MethodChannel.Result result, Task task) {
        String str;
        if (task.p()) {
            result.success(task.l());
            return;
        }
        Exception k10 = task.k();
        if (k10 != null) {
            str = k10.getMessage();
        } else {
            str = null;
        }
        result.error("firebase_messaging", str, getExceptionDetails(k10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$requestPermissions$10(Map map, m6.l lVar, int i10) {
        map.put("authorizationStatus", Integer.valueOf(i10));
        lVar.c(map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$requestPermissions$11(m6.l lVar, String str) {
        lVar.b(new Exception(str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestPermissions$12(final m6.l lVar) {
        final HashMap hashMap = new HashMap();
        try {
            if (!checkPermissions().booleanValue()) {
                this.permissionManager.requestPermissions(this.mainActivity, new FlutterFirebasePermissionManager.RequestPermissionsSuccessCallback() { // from class: io.flutter.plugins.firebase.messaging.m
                    @Override // io.flutter.plugins.firebase.messaging.FlutterFirebasePermissionManager.RequestPermissionsSuccessCallback
                    public final void onSuccess(int i10) {
                        FlutterFirebaseMessagingPlugin.lambda$requestPermissions$10(hashMap, lVar, i10);
                    }
                }, new ErrorCallback() { // from class: io.flutter.plugins.firebase.messaging.n
                    @Override // io.flutter.plugins.firebase.messaging.ErrorCallback
                    public final void onError(String str) {
                        FlutterFirebaseMessagingPlugin.lambda$requestPermissions$11(m6.l.this, str);
                    }
                });
            } else {
                hashMap.put("authorizationStatus", 1);
                lVar.c(hashMap);
            }
        } catch (Exception e10) {
            lVar.b(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$sendMessage$6(Map map, m6.l lVar) {
        try {
            FlutterFirebaseMessagingUtils.getFirebaseMessagingForArguments(map).N(FlutterFirebaseMessagingUtils.getRemoteMessageForArguments(map));
            lVar.c(null);
        } catch (Exception e10) {
            lVar.b(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setAutoInitEnabled$7(Map map, m6.l lVar) {
        try {
            FirebaseMessaging firebaseMessagingForArguments = FlutterFirebaseMessagingUtils.getFirebaseMessagingForArguments(map);
            Object obj = map.get("enabled");
            Objects.requireNonNull(obj);
            firebaseMessagingForArguments.O(((Boolean) obj).booleanValue());
            lVar.c(new HashMap<String, Object>(firebaseMessagingForArguments) { // from class: io.flutter.plugins.firebase.messaging.FlutterFirebaseMessagingPlugin.2
                final /* synthetic */ FirebaseMessaging val$firebaseMessaging;

                {
                    this.val$firebaseMessaging = firebaseMessagingForArguments;
                    put("isAutoInitEnabled", Boolean.valueOf(firebaseMessagingForArguments.A()));
                }
            });
        } catch (Exception e10) {
            lVar.b(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$setDeliveryMetricsExportToBigQuery$8(Map map, m6.l lVar) {
        try {
            FirebaseMessaging firebaseMessagingForArguments = FlutterFirebaseMessagingUtils.getFirebaseMessagingForArguments(map);
            Object obj = map.get("enabled");
            Objects.requireNonNull(obj);
            firebaseMessagingForArguments.P(((Boolean) obj).booleanValue());
            lVar.c(null);
        } catch (Exception e10) {
            lVar.b(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$subscribeToTopic$4(Map map, m6.l lVar) {
        try {
            FirebaseMessaging firebaseMessagingForArguments = FlutterFirebaseMessagingUtils.getFirebaseMessagingForArguments(map);
            Object obj = map.get("topic");
            Objects.requireNonNull(obj);
            m6.n.a(firebaseMessagingForArguments.U((String) obj));
            lVar.c(null);
        } catch (Exception e10) {
            lVar.b(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$unsubscribeFromTopic$5(Map map, m6.l lVar) {
        try {
            FirebaseMessaging firebaseMessagingForArguments = FlutterFirebaseMessagingUtils.getFirebaseMessagingForArguments(map);
            Object obj = map.get("topic");
            Objects.requireNonNull(obj);
            m6.n.a(firebaseMessagingForArguments.X((String) obj));
            lVar.c(null);
        } catch (Exception e10) {
            lVar.b(e10);
        }
    }

    private Task requestPermissions() {
        final m6.l lVar = new m6.l();
        FlutterFirebasePlugin.cachedThreadPool.execute(new Runnable() { // from class: io.flutter.plugins.firebase.messaging.o
            @Override // java.lang.Runnable
            public final void run() {
                FlutterFirebaseMessagingPlugin.this.lambda$requestPermissions$12(lVar);
            }
        });
        return lVar.a();
    }

    private Task sendMessage(final Map<String, Object> map) {
        final m6.l lVar = new m6.l();
        FlutterFirebasePlugin.cachedThreadPool.execute(new Runnable() { // from class: io.flutter.plugins.firebase.messaging.u
            @Override // java.lang.Runnable
            public final void run() {
                FlutterFirebaseMessagingPlugin.lambda$sendMessage$6(map, lVar);
            }
        });
        return lVar.a();
    }

    private Task setAutoInitEnabled(final Map<String, Object> map) {
        final m6.l lVar = new m6.l();
        FlutterFirebasePlugin.cachedThreadPool.execute(new Runnable() { // from class: io.flutter.plugins.firebase.messaging.h
            @Override // java.lang.Runnable
            public final void run() {
                FlutterFirebaseMessagingPlugin.this.lambda$setAutoInitEnabled$7(map, lVar);
            }
        });
        return lVar.a();
    }

    private Task setDeliveryMetricsExportToBigQuery(final Map<String, Object> map) {
        final m6.l lVar = new m6.l();
        FlutterFirebasePlugin.cachedThreadPool.execute(new Runnable() { // from class: io.flutter.plugins.firebase.messaging.f
            @Override // java.lang.Runnable
            public final void run() {
                FlutterFirebaseMessagingPlugin.lambda$setDeliveryMetricsExportToBigQuery$8(map, lVar);
            }
        });
        return lVar.a();
    }

    private Task subscribeToTopic(final Map<String, Object> map) {
        final m6.l lVar = new m6.l();
        FlutterFirebasePlugin.cachedThreadPool.execute(new Runnable() { // from class: io.flutter.plugins.firebase.messaging.s
            @Override // java.lang.Runnable
            public final void run() {
                FlutterFirebaseMessagingPlugin.lambda$subscribeToTopic$4(map, lVar);
            }
        });
        return lVar.a();
    }

    private Map<String, Object> uncheckedCastToMap(Object obj) {
        return (Map) obj;
    }

    private Task unsubscribeFromTopic(final Map<String, Object> map) {
        final m6.l lVar = new m6.l();
        FlutterFirebasePlugin.cachedThreadPool.execute(new Runnable() { // from class: io.flutter.plugins.firebase.messaging.k
            @Override // java.lang.Runnable
            public final void run() {
                FlutterFirebaseMessagingPlugin.lambda$unsubscribeFromTopic$5(map, lVar);
            }
        });
        return lVar.a();
    }

    @Override // io.flutter.plugins.firebase.core.FlutterFirebasePlugin
    public Task didReinitializeFirebaseCore() {
        final m6.l lVar = new m6.l();
        FlutterFirebasePlugin.cachedThreadPool.execute(new Runnable() { // from class: io.flutter.plugins.firebase.messaging.l
            @Override // java.lang.Runnable
            public final void run() {
                m6.l.this.c(null);
            }
        });
        return lVar.a();
    }

    @Override // io.flutter.plugins.firebase.core.FlutterFirebasePlugin
    public Task getPluginConstantsForFirebaseApp(final h7.f fVar) {
        final m6.l lVar = new m6.l();
        FlutterFirebasePlugin.cachedThreadPool.execute(new Runnable() { // from class: io.flutter.plugins.firebase.messaging.d
            @Override // java.lang.Runnable
            public final void run() {
                FlutterFirebaseMessagingPlugin.lambda$getPluginConstantsForFirebaseApp$15(h7.f.this, lVar);
            }
        });
        return lVar.a();
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onAttachedToActivity(ActivityPluginBinding activityPluginBinding) {
        activityPluginBinding.addOnNewIntentListener(this);
        activityPluginBinding.addRequestPermissionsResultListener(this.permissionManager);
        Activity activity = activityPluginBinding.getActivity();
        this.mainActivity = activity;
        if (activity.getIntent() != null && this.mainActivity.getIntent().getExtras() != null && (this.mainActivity.getIntent().getFlags() & 1048576) != 1048576) {
            onNewIntent(this.mainActivity.getIntent());
        }
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        ContextHolder.setApplicationContext(flutterPluginBinding.getApplicationContext());
        initInstance(flutterPluginBinding.getBinaryMessenger());
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivity() {
        this.mainActivity = null;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivityForConfigChanges() {
        this.mainActivity = null;
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        this.liveDataToken.removeObserver(this.tokenObserver);
        this.liveDataRemoteMessage.removeObserver(this.remoteMessageObserver);
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, final MethodChannel.Result result) {
        Task initialMessage;
        long longValue;
        long longValue2;
        FlutterShellArgs flutterShellArgs;
        String str = methodCall.method;
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1704007366:
                if (str.equals("Messaging#getInitialMessage")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1661255137:
                if (str.equals("Messaging#setAutoInitEnabled")) {
                    c10 = 1;
                    break;
                }
                break;
            case -657665041:
                if (str.equals("Messaging#deleteToken")) {
                    c10 = 2;
                    break;
                }
                break;
            case 421314579:
                if (str.equals("Messaging#unsubscribeFromTopic")) {
                    c10 = 3;
                    break;
                }
                break;
            case 506322569:
                if (str.equals("Messaging#subscribeToTopic")) {
                    c10 = 4;
                    break;
                }
                break;
            case 607887267:
                if (str.equals("Messaging#setDeliveryMetricsExportToBigQuery")) {
                    c10 = 5;
                    break;
                }
                break;
            case 928431066:
                if (str.equals("Messaging#startBackgroundIsolate")) {
                    c10 = 6;
                    break;
                }
                break;
            case 1165917248:
                if (str.equals("Messaging#sendMessage")) {
                    c10 = 7;
                    break;
                }
                break;
            case 1231338975:
                if (str.equals("Messaging#requestPermission")) {
                    c10 = '\b';
                    break;
                }
                break;
            case 1243856389:
                if (str.equals("Messaging#getNotificationSettings")) {
                    c10 = '\t';
                    break;
                }
                break;
            case 1459336962:
                if (str.equals("Messaging#getToken")) {
                    c10 = '\n';
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                initialMessage = getInitialMessage();
                break;
            case 1:
                initialMessage = setAutoInitEnabled((Map) methodCall.arguments());
                break;
            case 2:
                initialMessage = deleteToken();
                break;
            case 3:
                initialMessage = unsubscribeFromTopic((Map) methodCall.arguments());
                break;
            case 4:
                initialMessage = subscribeToTopic((Map) methodCall.arguments());
                break;
            case 5:
                initialMessage = setDeliveryMetricsExportToBigQuery((Map) methodCall.arguments());
                break;
            case 6:
                Map map = (Map) methodCall.arguments;
                Object obj = map.get("pluginCallbackHandle");
                Object obj2 = map.get("userCallbackHandle");
                if (obj instanceof Long) {
                    longValue = ((Long) obj).longValue();
                } else if (obj instanceof Integer) {
                    longValue = Long.valueOf(((Integer) obj).intValue()).longValue();
                } else {
                    throw new IllegalArgumentException("Expected 'Long' or 'Integer' type for 'pluginCallbackHandle'.");
                }
                if (obj2 instanceof Long) {
                    longValue2 = ((Long) obj2).longValue();
                } else if (obj2 instanceof Integer) {
                    longValue2 = Long.valueOf(((Integer) obj2).intValue()).longValue();
                } else {
                    throw new IllegalArgumentException("Expected 'Long' or 'Integer' type for 'userCallbackHandle'.");
                }
                Activity activity = this.mainActivity;
                if (activity != null) {
                    flutterShellArgs = FlutterShellArgs.fromIntent(activity.getIntent());
                } else {
                    flutterShellArgs = null;
                }
                FlutterFirebaseMessagingBackgroundService.setCallbackDispatcher(longValue);
                FlutterFirebaseMessagingBackgroundService.setUserCallbackHandle(longValue2);
                FlutterFirebaseMessagingBackgroundService.startBackgroundIsolate(longValue, flutterShellArgs);
                initialMessage = m6.n.e(null);
                break;
            case 7:
                initialMessage = sendMessage((Map) methodCall.arguments());
                break;
            case '\b':
                if (Build.VERSION.SDK_INT >= 33) {
                    initialMessage = requestPermissions();
                    break;
                } else {
                    initialMessage = getPermissions();
                    break;
                }
            case '\t':
                initialMessage = getPermissions();
                break;
            case '\n':
                initialMessage = getToken();
                break;
            default:
                result.notImplemented();
                return;
        }
        initialMessage.c(new m6.f() { // from class: io.flutter.plugins.firebase.messaging.q
            @Override // m6.f
            public final void onComplete(Task task) {
                FlutterFirebaseMessagingPlugin.this.lambda$onMethodCall$14(result, task);
            }
        });
    }

    @Override // io.flutter.plugin.common.PluginRegistry.NewIntentListener
    public boolean onNewIntent(Intent intent) {
        Map<String, Object> map;
        Map<String, Object> map2;
        Map<String, Object> firebaseMessageMap;
        if (intent.getExtras() == null) {
            return false;
        }
        String string = intent.getExtras().getString("google.message_id");
        if (string == null) {
            string = intent.getExtras().getString("message_id");
        }
        if (string == null) {
            return false;
        }
        u0 u0Var = FlutterFirebaseMessagingReceiver.notifications.get(string);
        if (u0Var == null && (firebaseMessageMap = FlutterFirebaseMessagingStore.getInstance().getFirebaseMessageMap(string)) != null) {
            u0Var = FlutterFirebaseMessagingUtils.getRemoteMessageForArguments(firebaseMessageMap);
            map = FlutterFirebaseMessagingUtils.getRemoteMessageNotificationForArguments(firebaseMessageMap);
        } else {
            map = null;
        }
        if (u0Var == null) {
            return false;
        }
        this.initialMessage = u0Var;
        this.initialMessageNotification = map;
        FlutterFirebaseMessagingReceiver.notifications.remove(string);
        Map<String, Object> remoteMessageToMap = FlutterFirebaseMessagingUtils.remoteMessageToMap(u0Var);
        if (u0Var.p() == null && (map2 = this.initialMessageNotification) != null) {
            remoteMessageToMap.put("notification", map2);
        }
        this.channel.invokeMethod("Messaging#onMessageOpenedApp", remoteMessageToMap);
        this.mainActivity.setIntent(intent);
        return true;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onReattachedToActivityForConfigChanges(ActivityPluginBinding activityPluginBinding) {
        activityPluginBinding.addOnNewIntentListener(this);
        this.mainActivity = activityPluginBinding.getActivity();
    }
}
