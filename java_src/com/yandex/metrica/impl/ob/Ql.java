package com.yandex.metrica.impl.ob;

import com.yandex.metrica.networktasks.api.Compressor;
import java.io.ByteArrayInputStream;
import java.io.Closeable;
import java.util.zip.GZIPInputStream;
/* loaded from: classes2.dex */
public class Ql implements Compressor {
    @Override // com.yandex.metrica.networktasks.api.Compressor
    public byte[] compress(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return L0.b(bArr);
    }

    public byte[] uncompress(byte[] bArr) {
        ByteArrayInputStream byteArrayInputStream;
        Throwable th;
        GZIPInputStream gZIPInputStream;
        if (bArr == null) {
            return null;
        }
        try {
            byteArrayInputStream = new ByteArrayInputStream(bArr);
            try {
                gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
                try {
                    byte[] a10 = L0.a(gZIPInputStream);
                    A2.a((Closeable) gZIPInputStream);
                    A2.a((Closeable) byteArrayInputStream);
                    return a10;
                } catch (Throwable th2) {
                    th = th2;
                    A2.a((Closeable) gZIPInputStream);
                    A2.a((Closeable) byteArrayInputStream);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                gZIPInputStream = null;
            }
        } catch (Throwable th4) {
            byteArrayInputStream = null;
            th = th4;
            gZIPInputStream = null;
        }
    }
}
