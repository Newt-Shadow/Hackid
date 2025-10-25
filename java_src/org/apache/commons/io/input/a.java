package org.apache.commons.io.input;

import java.io.FilterInputStream;
import java.io.InputStream;
/* loaded from: classes2.dex */
public class a extends e {
    public a(InputStream inputStream) {
        super(inputStream);
    }

    public static a a(InputStream inputStream) {
        return new a(inputStream);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        ((FilterInputStream) this).in = b.f27636a;
    }
}
