package com.arthenica.ffmpegkit.flutter;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import io.flutter.plugin.common.EventChannel;
import io.flutter.plugin.common.MethodChannel;
/* loaded from: classes.dex */
public class FFmpegKitFlutterMethodResultHandler {
    private final Handler handler = new Handler(Looper.getMainLooper());

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$errorAsync$2(MethodChannel.Result result, String str, String str2, Object obj) {
        if (result != null) {
            result.error(str, str2, obj);
        } else {
            Log.w(FFmpegKitFlutterPlugin.LIBRARY_NAME, String.format("ResultHandler can not send failure response %s:%s on a null method call result.", str, str2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$notImplementedAsync$3(MethodChannel.Result result) {
        if (result != null) {
            result.notImplemented();
        } else {
            Log.w(FFmpegKitFlutterPlugin.LIBRARY_NAME, "ResultHandler can not send not implemented response on a null method call result.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$successAsync$0(MethodChannel.Result result, Object obj) {
        if (result != null) {
            result.success(obj);
        } else {
            Log.w(FFmpegKitFlutterPlugin.LIBRARY_NAME, String.format("ResultHandler can not send successful response %s on a null method call result.", obj));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$successAsync$1(EventChannel.EventSink eventSink, Object obj) {
        if (eventSink != null) {
            eventSink.success(obj);
        } else {
            Log.w(FFmpegKitFlutterPlugin.LIBRARY_NAME, String.format("ResultHandler can not send event %s on a null event sink.", obj));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void errorAsync(MethodChannel.Result result, String str, String str2) {
        errorAsync(result, str, str2, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void notImplementedAsync(final MethodChannel.Result result) {
        this.handler.post(new Runnable() { // from class: com.arthenica.ffmpegkit.flutter.b
            @Override // java.lang.Runnable
            public final void run() {
                FFmpegKitFlutterMethodResultHandler.lambda$notImplementedAsync$3(MethodChannel.Result.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void successAsync(final MethodChannel.Result result, final Object obj) {
        this.handler.post(new Runnable() { // from class: com.arthenica.ffmpegkit.flutter.d
            @Override // java.lang.Runnable
            public final void run() {
                FFmpegKitFlutterMethodResultHandler.lambda$successAsync$0(MethodChannel.Result.this, obj);
            }
        });
    }

    void errorAsync(final MethodChannel.Result result, final String str, final String str2, final Object obj) {
        this.handler.post(new Runnable() { // from class: com.arthenica.ffmpegkit.flutter.a
            @Override // java.lang.Runnable
            public final void run() {
                FFmpegKitFlutterMethodResultHandler.lambda$errorAsync$2(MethodChannel.Result.this, str, str2, obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void successAsync(final EventChannel.EventSink eventSink, final Object obj) {
        this.handler.post(new Runnable() { // from class: com.arthenica.ffmpegkit.flutter.c
            @Override // java.lang.Runnable
            public final void run() {
                FFmpegKitFlutterMethodResultHandler.lambda$successAsync$1(EventChannel.EventSink.this, obj);
            }
        });
    }
}
