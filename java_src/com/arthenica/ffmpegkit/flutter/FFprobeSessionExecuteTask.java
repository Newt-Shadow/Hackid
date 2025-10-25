package com.arthenica.ffmpegkit.flutter;

import com.arthenica.ffmpegkit.FFmpegKitConfig;
import com.arthenica.ffmpegkit.FFprobeSession;
import io.flutter.plugin.common.MethodChannel;
/* loaded from: classes.dex */
public class FFprobeSessionExecuteTask implements Runnable {
    private final FFprobeSession ffprobeSession;
    private final MethodChannel.Result result;
    private final FFmpegKitFlutterMethodResultHandler resultHandler;

    public FFprobeSessionExecuteTask(FFprobeSession fFprobeSession, FFmpegKitFlutterMethodResultHandler fFmpegKitFlutterMethodResultHandler, MethodChannel.Result result) {
        this.ffprobeSession = fFprobeSession;
        this.resultHandler = fFmpegKitFlutterMethodResultHandler;
        this.result = result;
    }

    @Override // java.lang.Runnable
    public void run() {
        FFmpegKitConfig.ffprobeExecute(this.ffprobeSession);
        this.resultHandler.successAsync(this.result, (Object) null);
    }
}
