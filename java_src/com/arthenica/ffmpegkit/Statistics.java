package com.arthenica.ffmpegkit;
/* loaded from: classes.dex */
public class Statistics {
    private double bitrate;
    private long sessionId;
    private long size;
    private double speed;
    private double time;
    private float videoFps;
    private int videoFrameNumber;
    private float videoQuality;

    public Statistics(long j10, int i10, float f10, float f11, long j11, double d10, double d11, double d12) {
        this.sessionId = j10;
        this.videoFrameNumber = i10;
        this.videoFps = f10;
        this.videoQuality = f11;
        this.size = j11;
        this.time = d10;
        this.bitrate = d11;
        this.speed = d12;
    }

    public double getBitrate() {
        return this.bitrate;
    }

    public long getSessionId() {
        return this.sessionId;
    }

    public long getSize() {
        return this.size;
    }

    public double getSpeed() {
        return this.speed;
    }

    public double getTime() {
        return this.time;
    }

    public float getVideoFps() {
        return this.videoFps;
    }

    public int getVideoFrameNumber() {
        return this.videoFrameNumber;
    }

    public float getVideoQuality() {
        return this.videoQuality;
    }

    public void setBitrate(double d10) {
        this.bitrate = d10;
    }

    public void setSessionId(long j10) {
        this.sessionId = j10;
    }

    public void setSize(long j10) {
        this.size = j10;
    }

    public void setSpeed(double d10) {
        this.speed = d10;
    }

    public void setTime(double d10) {
        this.time = d10;
    }

    public void setVideoFps(float f10) {
        this.videoFps = f10;
    }

    public void setVideoFrameNumber(int i10) {
        this.videoFrameNumber = i10;
    }

    public void setVideoQuality(float f10) {
        this.videoQuality = f10;
    }

    public String toString() {
        return "Statistics{sessionId=" + this.sessionId + ", videoFrameNumber=" + this.videoFrameNumber + ", videoFps=" + this.videoFps + ", videoQuality=" + this.videoQuality + ", size=" + this.size + ", time=" + this.time + ", bitrate=" + this.bitrate + ", speed=" + this.speed + '}';
    }
}
