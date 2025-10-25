package org.apache.commons.io.input;

import java.io.InputStream;
/* loaded from: classes2.dex */
public abstract class i extends InputStream {

    /* renamed from: a  reason: collision with root package name */
    protected volatile InputStream f27649a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(InputStream inputStream) {
        this.f27649a = inputStream;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public abstract int read(byte[] bArr, int i10, int i11);
}
