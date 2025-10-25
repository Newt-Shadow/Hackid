package com.arthenica.ffmpegkit.flutter;

import com.arthenica.ffmpegkit.FFmpegKitConfig;
import com.arthenica.ffmpegkit.FFmpegSession;
import io.flutter.plugin.common.MethodChannel;
/* loaded from: classes.dex */
public class FFmpegSessionExecuteTask implements Runnable {
    private final FFmpegSession ffmpegSession;
    private final MethodChannel.Result result;
    private final FFmpegKitFlutterMethodResultHandler resultHandler;

    public FFmpegSessionExecuteTask(FFmpegSession fFmpegSession, FFmpegKitFlutterMethodResultHandler fFmpegKitFlutterMethodResultHandler, MethodChannel.Result result) {
        this.ffmpegSession = fFmpegSession;
        this.resultHandler = fFmpegKitFlutterMethodResultHandler;
        this.result = result;
    }

    @Override // java.lang.Runnable
    public void run() {
        FFmpegKitConfig.ffmpegExecute(this.ffmpegSession);
        this.resultHandler.successAsync(this.result, (Object) null);
    }
}
