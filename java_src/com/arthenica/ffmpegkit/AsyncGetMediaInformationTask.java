package com.arthenica.ffmpegkit;

import com.arthenica.smartexception.java.Exceptions;
/* loaded from: classes.dex */
public class AsyncGetMediaInformationTask implements Runnable {
    private final MediaInformationSessionCompleteCallback completeCallback;
    private final MediaInformationSession mediaInformationSession;
    private final Integer waitTimeout;

    public AsyncGetMediaInformationTask(MediaInformationSession mediaInformationSession) {
        this(mediaInformationSession, Integer.valueOf((int) AbstractSession.DEFAULT_TIMEOUT_FOR_ASYNCHRONOUS_MESSAGES_IN_TRANSMIT));
    }

    @Override // java.lang.Runnable
    public void run() {
        FFmpegKitConfig.getMediaInformationExecute(this.mediaInformationSession, this.waitTimeout.intValue());
        MediaInformationSessionCompleteCallback mediaInformationSessionCompleteCallback = this.completeCallback;
        if (mediaInformationSessionCompleteCallback != null) {
            try {
                mediaInformationSessionCompleteCallback.apply(this.mediaInformationSession);
            } catch (Exception e10) {
                android.util.Log.e("ffmpeg-kit", String.format("Exception thrown inside session complete callback.%s", Exceptions.getStackTraceString(e10)));
            }
        }
        MediaInformationSessionCompleteCallback mediaInformationSessionCompleteCallback2 = FFmpegKitConfig.getMediaInformationSessionCompleteCallback();
        if (mediaInformationSessionCompleteCallback2 != null) {
            try {
                mediaInformationSessionCompleteCallback2.apply(this.mediaInformationSession);
            } catch (Exception e11) {
                android.util.Log.e("ffmpeg-kit", String.format("Exception thrown inside global complete callback.%s", Exceptions.getStackTraceString(e11)));
            }
        }
    }

    public AsyncGetMediaInformationTask(MediaInformationSession mediaInformationSession, Integer num) {
        this.mediaInformationSession = mediaInformationSession;
        this.completeCallback = mediaInformationSession.getCompleteCallback();
        this.waitTimeout = num;
    }
}
