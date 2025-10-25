package com.arthenica.ffmpegkit.flutter;

import com.arthenica.ffmpegkit.FFmpegKitConfig;
import com.arthenica.ffmpegkit.MediaInformationSession;
import io.flutter.plugin.common.MethodChannel;
/* loaded from: classes.dex */
public class MediaInformationSessionExecuteTask implements Runnable {
    private final MediaInformationSession mediaInformationSession;
    private final MethodChannel.Result result;
    private final FFmpegKitFlutterMethodResultHandler resultHandler;
    private final int timeout;

    public MediaInformationSessionExecuteTask(MediaInformationSession mediaInformationSession, int i10, FFmpegKitFlutterMethodResultHandler fFmpegKitFlutterMethodResultHandler, MethodChannel.Result result) {
        this.mediaInformationSession = mediaInformationSession;
        this.timeout = i10;
        this.resultHandler = fFmpegKitFlutterMethodResultHandler;
        this.result = result;
    }

    @Override // java.lang.Runnable
    public void run() {
        FFmpegKitConfig.getMediaInformationExecute(this.mediaInformationSession, this.timeout);
        this.resultHandler.successAsync(this.result, (Object) null);
    }
}
