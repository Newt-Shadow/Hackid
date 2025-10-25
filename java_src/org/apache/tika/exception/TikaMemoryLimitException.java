package org.apache.tika.exception;
/* loaded from: classes2.dex */
public class TikaMemoryLimitException extends TikaException {
    public TikaMemoryLimitException(String str) {
        super(str);
    }

    private static String msg(long j10, long j11) {
        return "Tried to allocate " + j10 + " bytes, but " + j11 + " is the maximum allowed. Please open an issue https://issues.apache.org/jira/projects/TIKA if you believe this file is not corrupt.";
    }

    public TikaMemoryLimitException(long j10, long j11) {
        super(msg(j10, j11));
    }
}
