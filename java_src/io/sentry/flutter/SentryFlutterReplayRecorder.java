package io.sentry.flutter;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.arthenica.ffmpegkit.StreamInformation;
import io.flutter.plugin.common.MethodChannel;
import io.sentry.android.replay.ReplayIntegration;
import io.sentry.android.replay.u;
import java.io.File;
import java.util.Map;
import kotlin.jvm.internal.m;
import xc.q;
import yc.h0;
/* loaded from: classes2.dex */
public final class SentryFlutterReplayRecorder implements io.sentry.android.replay.f {
    private final MethodChannel channel;
    private final ReplayIntegration integration;

    public SentryFlutterReplayRecorder(MethodChannel channel, ReplayIntegration integration) {
        m.e(channel, "channel");
        m.e(integration, "integration");
        this.channel = channel;
        this.integration = integration;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void pause$lambda$2(SentryFlutterReplayRecorder sentryFlutterReplayRecorder) {
        try {
            sentryFlutterReplayRecorder.channel.invokeMethod("ReplayRecorder.pause", null);
        } catch (Exception e10) {
            Log.w("Sentry", "Failed to pause replay recorder", e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void resume$lambda$1(SentryFlutterReplayRecorder sentryFlutterReplayRecorder) {
        try {
            sentryFlutterReplayRecorder.channel.invokeMethod("ReplayRecorder.resume", null);
        } catch (Exception e10) {
            Log.w("Sentry", "Failed to resume replay recorder", e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void start$lambda$0(SentryFlutterReplayRecorder sentryFlutterReplayRecorder, String str, u uVar) {
        Map h10;
        try {
            MethodChannel methodChannel = sentryFlutterReplayRecorder.channel;
            h10 = h0.h(q.a("directory", str), q.a(StreamInformation.KEY_WIDTH, Integer.valueOf(uVar.d())), q.a(StreamInformation.KEY_HEIGHT, Integer.valueOf(uVar.c())), q.a("frameRate", Integer.valueOf(uVar.b())), q.a("replayId", sentryFlutterReplayRecorder.integration.W().toString()));
            methodChannel.invokeMethod("ReplayRecorder.start", h10);
        } catch (Exception e10) {
            Log.w("Sentry", "Failed to start replay recorder", e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void stop$lambda$3(SentryFlutterReplayRecorder sentryFlutterReplayRecorder) {
        try {
            sentryFlutterReplayRecorder.channel.invokeMethod("ReplayRecorder.stop", null);
        } catch (Exception e10) {
            Log.w("Sentry", "Failed to stop replay recorder", e10);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        stop();
    }

    @Override // io.sentry.android.replay.f
    public void pause() {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: io.sentry.flutter.g
            @Override // java.lang.Runnable
            public final void run() {
                SentryFlutterReplayRecorder.pause$lambda$2(SentryFlutterReplayRecorder.this);
            }
        });
    }

    @Override // io.sentry.android.replay.f
    public void resume() {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: io.sentry.flutter.h
            @Override // java.lang.Runnable
            public final void run() {
                SentryFlutterReplayRecorder.resume$lambda$1(SentryFlutterReplayRecorder.this);
            }
        });
    }

    @Override // io.sentry.android.replay.f
    public void start(final u recorderConfig) {
        final String str;
        m.e(recorderConfig, "recorderConfig");
        if (recorderConfig.c() <= 16 && recorderConfig.d() <= 16) {
            return;
        }
        File H = this.integration.H();
        if (H != null) {
            str = H.getAbsolutePath();
        } else {
            str = null;
        }
        if (str == null) {
            Log.w("Sentry", "Replay cache directory is null, can't start replay recorder.");
        } else {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: io.sentry.flutter.i
                @Override // java.lang.Runnable
                public final void run() {
                    SentryFlutterReplayRecorder.start$lambda$0(SentryFlutterReplayRecorder.this, str, recorderConfig);
                }
            });
        }
    }

    @Override // io.sentry.android.replay.f
    public void stop() {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: io.sentry.flutter.f
            @Override // java.lang.Runnable
            public final void run() {
                SentryFlutterReplayRecorder.stop$lambda$3(SentryFlutterReplayRecorder.this);
            }
        });
    }
}
