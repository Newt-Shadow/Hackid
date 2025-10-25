package com.yandex.metrica.network.impl;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public static final e f14160a = new e();

    private e() {
    }

    public static final Map a(Map original) {
        m.e(original, "original");
        Map unmodifiableMap = Collections.unmodifiableMap(new HashMap(original));
        m.d(unmodifiableMap, "Collections.unmodifiableMap(HashMap(original))");
        return unmodifiableMap;
    }

    public final byte[] b(int i10, id.a inputStreamProvider) {
        m.e(inputStreamProvider, "inputStreamProvider");
        try {
            InputStream inputStream = (InputStream) inputStreamProvider.invoke();
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
                m.d(byteArray, "it.toByteArray()");
                gd.b.a(byteArrayOutputStream, null);
                gd.b.a(inputStream, null);
                return byteArray;
            }
        } catch (Throwable unused) {
        }
        return new byte[0];
    }
}
