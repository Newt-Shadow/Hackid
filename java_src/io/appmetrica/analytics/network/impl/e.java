package io.appmetrica.analytics.network.impl;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public abstract class e {
    public static byte[] a(int i10, id.a aVar) {
        try {
            InputStream inputStream = (InputStream) aVar.invoke();
            if (inputStream != null) {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                byte[] bArr = new byte[8192];
                int i11 = 0;
                while (true) {
                    int read = inputStream.read(bArr);
                    if (-1 == read || i11 > i10) {
                        break;
                    } else if (read > 0) {
                        byteArrayOutputStream.write(bArr, 0, read);
                        i11 += read;
                    }
                }
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                gd.b.a(byteArrayOutputStream, null);
                gd.b.a(inputStream, null);
                return byteArray;
            }
        } catch (Throwable unused) {
        }
        return new byte[0];
    }

    public static final Map a(Map map) {
        return Collections.unmodifiableMap(new HashMap(map));
    }
}
