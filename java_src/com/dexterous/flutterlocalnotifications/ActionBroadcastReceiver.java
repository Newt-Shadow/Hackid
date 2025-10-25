package com.dexterous.flutterlocalnotifications;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import io.flutter.FlutterInjector;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.embedding.engine.dart.DartExecutor;
import io.flutter.embedding.engine.loader.FlutterLoader;
import io.flutter.plugin.common.EventChannel;
import io.flutter.view.FlutterCallbackInformation;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class ActionBroadcastReceiver extends BroadcastReceiver {

    /* renamed from: b  reason: collision with root package name */
    private static a f5515b;

    /* renamed from: c  reason: collision with root package name */
    private static FlutterEngine f5516c;

    /* renamed from: a  reason: collision with root package name */
    f2.a f5517a;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class a implements EventChannel.StreamHandler {

        /* renamed from: a  reason: collision with root package name */
        final List f5518a;

        /* renamed from: b  reason: collision with root package name */
        private EventChannel.EventSink f5519b;

        public void a(Map map) {
            EventChannel.EventSink eventSink = this.f5519b;
            if (eventSink != null) {
                eventSink.success(map);
            } else {
                this.f5518a.add(map);
            }
        }

        @Override // io.flutter.plugin.common.EventChannel.StreamHandler
        public void onCancel(Object obj) {
            this.f5519b = null;
        }

        @Override // io.flutter.plugin.common.EventChannel.StreamHandler
        public void onListen(Object obj, EventChannel.EventSink eventSink) {
            for (Map map : this.f5518a) {
                eventSink.success(map);
            }
            this.f5518a.clear();
            this.f5519b = eventSink;
        }

        private a() {
            this.f5518a = new ArrayList();
        }
    }

    private void a(DartExecutor dartExecutor) {
        new EventChannel(dartExecutor.getBinaryMessenger(), "dexterous.com/flutter/local_notifications/actions").setStreamHandler(f5515b);
    }

    private void b(Context context) {
        if (f5516c != null) {
            Log.e("ActionBroadcastReceiver", "Engine is already initialised");
            return;
        }
        FlutterLoader flutterLoader = FlutterInjector.instance().flutterLoader();
        flutterLoader.startInitialization(context);
        flutterLoader.ensureInitializationComplete(context, null);
        f5516c = new FlutterEngine(context);
        FlutterCallbackInformation d10 = this.f5517a.d();
        if (d10 == null) {
            Log.w("ActionBroadcastReceiver", "Callback information could not be retrieved");
            return;
        }
        DartExecutor dartExecutor = f5516c.getDartExecutor();
        a(dartExecutor);
        dartExecutor.executeDartCallback(new DartExecutor.DartCallback(context.getAssets(), flutterLoader.findAppBundlePath(), d10));
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (!"com.dexterous.flutterlocalnotifications.ActionBroadcastReceiver.ACTION_TAPPED".equalsIgnoreCase(intent.getAction())) {
            return;
        }
        f2.a aVar = this.f5517a;
        if (aVar == null) {
            aVar = new f2.a(context);
        }
        this.f5517a = aVar;
        Map<String, Object> extractNotificationResponseMap = FlutterLocalNotificationsPlugin.extractNotificationResponseMap(intent);
        if (intent.getBooleanExtra("cancelNotification", false)) {
            int intValue = ((Integer) extractNotificationResponseMap.get("notificationId")).intValue();
            Object obj = extractNotificationResponseMap.get("notificationTag");
            if (obj instanceof String) {
                androidx.core.app.p.e(context).c((String) obj, intValue);
            } else {
                androidx.core.app.p.e(context).b(intValue);
            }
        }
        if (f5515b == null) {
            f5515b = new a();
        }
        f5515b.a(extractNotificationResponseMap);
        b(context);
    }
}
