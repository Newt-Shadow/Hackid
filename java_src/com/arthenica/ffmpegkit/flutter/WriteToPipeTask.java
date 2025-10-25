package com.arthenica.ffmpegkit.flutter;

import android.util.Log;
import io.flutter.plugin.common.MethodChannel;
import java.io.IOException;
/* loaded from: classes.dex */
public class WriteToPipeTask implements Runnable {
    private final String inputPath;
    private final String namedPipePath;
    private final MethodChannel.Result result;
    private final FFmpegKitFlutterMethodResultHandler resultHandler;

    public WriteToPipeTask(String str, String str2, FFmpegKitFlutterMethodResultHandler fFmpegKitFlutterMethodResultHandler, MethodChannel.Result result) {
        this.inputPath = str;
        this.namedPipePath = str2;
        this.resultHandler = fFmpegKitFlutterMethodResultHandler;
        this.result = result;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            Log.d(FFmpegKitFlutterPlugin.LIBRARY_NAME, String.format("Starting copy %s to pipe %s operation.", this.inputPath, this.namedPipePath));
            long currentTimeMillis = System.currentTimeMillis();
            int waitFor = Runtime.getRuntime().exec(new String[]{"sh", "-c", "cat " + this.inputPath + " > " + this.namedPipePath}).waitFor();
            Log.d(FFmpegKitFlutterPlugin.LIBRARY_NAME, String.format("Copying %s to pipe %s operation completed with rc %d in %d seconds.", this.inputPath, this.namedPipePath, Integer.valueOf(waitFor), Long.valueOf((System.currentTimeMillis() - currentTimeMillis) / 1000)));
            this.resultHandler.successAsync(this.result, Integer.valueOf(waitFor));
        } catch (IOException | InterruptedException e10) {
            Log.e(FFmpegKitFlutterPlugin.LIBRARY_NAME, String.format("Copy %s to pipe %s failed with error.", this.inputPath, this.namedPipePath), e10);
            this.resultHandler.errorAsync(this.result, "WRITE_TO_PIPE_FAILED", e10.getMessage());
        }
    }
}
