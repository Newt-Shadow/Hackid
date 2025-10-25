package jp.espresso3389.content_resolver;

import java.nio.ByteBuffer;
/* loaded from: classes2.dex */
abstract class ByteBufferHelper {
    static {
        System.loadLibrary("dbufhelper");
    }

    public static native void free(long j10);

    public static native long malloc(long j10);

    public static native ByteBuffer newDirectBuffer(long j10, long j11);
}
