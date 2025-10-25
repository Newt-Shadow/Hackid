package io.appmetrica.analytics.coreutils.internal.io;

import android.util.Base64;
import gd.a;
import java.io.ByteArrayInputStream;
import java.util.zip.GZIPInputStream;
import rd.d;
/* loaded from: classes2.dex */
public final class Base64Utils {
    public static final Base64Utils INSTANCE = new Base64Utils();
    public static final int IO_BUFFER_SIZE = 4096;

    private Base64Utils() {
    }

    public static final String compressBase64(byte[] bArr) {
        try {
            return Base64.encodeToString(GZIPUtils.gzipBytes(bArr), 0);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static final String compressBase64String(String str) {
        byte[] bytes;
        if (str != null) {
            try {
                bytes = str.getBytes(d.f29089b);
            } catch (Throwable unused) {
                return null;
            }
        } else {
            bytes = null;
        }
        return compressBase64(bytes);
    }

    public static final byte[] decompressBase64GzipAsBytes(String str) {
        GZIPInputStream gZIPInputStream;
        byte[] bArr;
        ByteArrayInputStream byteArrayInputStream = null;
        try {
            ByteArrayInputStream byteArrayInputStream2 = new ByteArrayInputStream(Base64.decode(str, 0));
            try {
                gZIPInputStream = new GZIPInputStream(byteArrayInputStream2);
            } catch (Throwable unused) {
                gZIPInputStream = null;
            }
            try {
                bArr = a.c(gZIPInputStream);
            } catch (Throwable unused2) {
                byteArrayInputStream = byteArrayInputStream2;
                try {
                    bArr = new byte[0];
                    byteArrayInputStream2 = byteArrayInputStream;
                    return bArr;
                } finally {
                    CloseableUtilsKt.closeSafely(gZIPInputStream);
                    CloseableUtilsKt.closeSafely(byteArrayInputStream);
                }
            }
        } catch (Throwable unused3) {
            gZIPInputStream = null;
        }
        return bArr;
    }

    public static final String decompressBase64GzipAsString(String str) {
        try {
            return new String(decompressBase64GzipAsBytes(str), d.f29089b);
        } catch (Throwable unused) {
            return null;
        }
    }
}
