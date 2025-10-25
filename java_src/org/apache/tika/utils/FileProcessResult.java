package org.apache.tika.utils;
/* loaded from: classes2.dex */
public class FileProcessResult {
    String stderr = "";
    String stdout = "";
    int exitValue = -1;
    long processTimeMillis = -1;
    boolean isTimeout = false;
    long stdoutLength = -1;
    long stderrLength = -1;
    boolean stderrTruncated = false;
    boolean stdoutTruncated = false;

    public int getExitValue() {
        return this.exitValue;
    }

    public long getProcessTimeMillis() {
        return this.processTimeMillis;
    }

    public String getStderr() {
        return this.stderr;
    }

    public long getStderrLength() {
        return this.stderrLength;
    }

    public String getStdout() {
        return this.stdout;
    }

    public long getStdoutLength() {
        return this.stdoutLength;
    }

    public boolean isStderrTruncated() {
        return this.stderrTruncated;
    }

    public boolean isStdoutTruncated() {
        return this.stdoutTruncated;
    }

    public boolean isTimeout() {
        return this.isTimeout;
    }

    public void setExitValue(int i10) {
        this.exitValue = i10;
    }

    public void setProcessTimeMillis(long j10) {
        this.processTimeMillis = j10;
    }

    public void setStderr(String str) {
        this.stderr = str;
    }

    public void setStderrLength(long j10) {
        this.stderrLength = j10;
    }

    public void setStderrTruncated(boolean z10) {
        this.stderrTruncated = z10;
    }

    public void setStdout(String str) {
        this.stdout = str;
    }

    public void setStdoutLength(long j10) {
        this.stdoutLength = j10;
    }

    public void setStdoutTruncated(boolean z10) {
        this.stdoutTruncated = z10;
    }

    public void setTimeout(boolean z10) {
        this.isTimeout = z10;
    }

    public String toString() {
        String str = this.stderr;
        String str2 = this.stdout;
        int i10 = this.exitValue;
        long j10 = this.processTimeMillis;
        boolean z10 = this.isTimeout;
        long j11 = this.stdoutLength;
        long j12 = this.stderrLength;
        boolean z11 = this.stderrTruncated;
        boolean z12 = this.stdoutTruncated;
        return "FileProcessResult{stderr='" + str + "', stdout='" + str2 + "', exitValue=" + i10 + ", processTimeMillis=" + j10 + ", isTimeout=" + z10 + ", stdoutLength=" + j11 + ", stderrLength=" + j12 + ", stderrTruncated=" + z11 + ", stdoutTruncated=" + z12 + "}";
    }
}
