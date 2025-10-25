package org.apache.tika.exception;
/* loaded from: classes2.dex */
public class ZeroByteFileException extends TikaException {
    public static IgnoreZeroByteFileException IGNORE_ZERO_BYTE_FILE_EXCEPTION = new IgnoreZeroByteFileException();

    /* loaded from: classes2.dex */
    public static class IgnoreZeroByteFileException {
    }

    public ZeroByteFileException(String str) {
        super(str);
    }
}
