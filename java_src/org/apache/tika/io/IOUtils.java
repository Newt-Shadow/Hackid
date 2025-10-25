package org.apache.tika.io;

import java.io.InputStream;
/* loaded from: classes2.dex */
public class IOUtils {
    public static long skip(InputStream inputStream, long j10, byte[] bArr) {
        if (j10 >= 0) {
            long j11 = j10;
            while (j11 > 0) {
                long read = inputStream.read(bArr, 0, (int) Math.min(j11, bArr.length));
                if (read < 0) {
                    break;
                }
                j11 -= read;
            }
            return j10 - j11;
        }
        throw new IllegalArgumentException("Skip count must be non-negative, actual: " + j10);
    }
}
