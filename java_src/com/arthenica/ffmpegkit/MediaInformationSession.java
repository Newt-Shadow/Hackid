package com.arthenica.ffmpegkit;
/* loaded from: classes.dex */
public class MediaInformationSession extends AbstractSession {
    private final MediaInformationSessionCompleteCallback completeCallback;
    private MediaInformation mediaInformation;

    private MediaInformationSession(String[] strArr, MediaInformationSessionCompleteCallback mediaInformationSessionCompleteCallback, LogCallback logCallback) {
        super(strArr, logCallback, LogRedirectionStrategy.NEVER_PRINT_LOGS);
        this.completeCallback = mediaInformationSessionCompleteCallback;
    }

    public static MediaInformationSession create(String[] strArr) {
        return new MediaInformationSession(strArr, null, null);
    }

    public MediaInformationSessionCompleteCallback getCompleteCallback() {
        return this.completeCallback;
    }

    public MediaInformation getMediaInformation() {
        return this.mediaInformation;
    }

    @Override // com.arthenica.ffmpegkit.Session
    public boolean isFFmpeg() {
        return false;
    }

    @Override // com.arthenica.ffmpegkit.Session
    public boolean isFFprobe() {
        return false;
    }

    @Override // com.arthenica.ffmpegkit.Session
    public boolean isMediaInformation() {
        return true;
    }

    public void setMediaInformation(MediaInformation mediaInformation) {
        this.mediaInformation = mediaInformation;
    }

    public String toString() {
        return "MediaInformationSession{sessionId=" + this.sessionId + ", createTime=" + this.createTime + ", startTime=" + this.startTime + ", endTime=" + this.endTime + ", arguments=" + FFmpegKitConfig.argumentsToString(this.arguments) + ", logs=" + getLogsAsString() + ", state=" + this.state + ", returnCode=" + this.returnCode + ", failStackTrace='" + this.failStackTrace + "'}";
    }

    public static MediaInformationSession create(String[] strArr, MediaInformationSessionCompleteCallback mediaInformationSessionCompleteCallback) {
        return new MediaInformationSession(strArr, mediaInformationSessionCompleteCallback, null);
    }

    public static MediaInformationSession create(String[] strArr, MediaInformationSessionCompleteCallback mediaInformationSessionCompleteCallback, LogCallback logCallback) {
        return new MediaInformationSession(strArr, mediaInformationSessionCompleteCallback, logCallback);
    }
}
