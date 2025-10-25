package gf;

import cf.g;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public abstract class a extends OutputStream {

    /* renamed from: b  reason: collision with root package name */
    protected int f16425b;

    /* renamed from: c  reason: collision with root package name */
    private byte[] f16426c;

    /* renamed from: d  reason: collision with root package name */
    private int f16427d;

    /* renamed from: e  reason: collision with root package name */
    private int f16428e;

    /* renamed from: a  reason: collision with root package name */
    private final List f16424a = new ArrayList();

    /* renamed from: f  reason: collision with root package name */
    private boolean f16429f = true;

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(int i10) {
        if (this.f16427d < this.f16424a.size() - 1) {
            this.f16428e += this.f16426c.length;
            int i11 = this.f16427d + 1;
            this.f16427d = i11;
            this.f16426c = (byte[]) this.f16424a.get(i11);
            return;
        }
        byte[] bArr = this.f16426c;
        if (bArr == null) {
            this.f16428e = 0;
        } else {
            i10 = Math.max(bArr.length << 1, i10 - this.f16428e);
            this.f16428e += this.f16426c.length;
        }
        this.f16427d++;
        byte[] e10 = g.e(i10);
        this.f16426c = e10;
        this.f16424a.add(e10);
    }

    public abstract byte[] b();

    /* JADX INFO: Access modifiers changed from: protected */
    public byte[] c() {
        int i10 = this.f16425b;
        if (i10 == 0) {
            return g.f5201b;
        }
        byte[] e10 = g.e(i10);
        int i11 = 0;
        for (byte[] bArr : this.f16424a) {
            int min = Math.min(bArr.length, i10);
            System.arraycopy(bArr, 0, e10, i11, min);
            i11 += min;
            i10 -= min;
            if (i10 == 0) {
                break;
            }
        }
        return e10;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    public String e(String str) {
        return new String(b(), str);
    }

    public String f(Charset charset) {
        return new String(b(), charset);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void g(int i10) {
        int i11 = this.f16425b;
        int i12 = i11 - this.f16428e;
        if (i12 == this.f16426c.length) {
            a(i11 + 1);
            i12 = 0;
        }
        this.f16426c[i12] = (byte) i10;
        this.f16425b++;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void h(byte[] bArr, int i10, int i11) {
        int i12 = this.f16425b;
        int i13 = i12 + i11;
        int i14 = i12 - this.f16428e;
        int i15 = i11;
        while (i15 > 0) {
            int min = Math.min(i15, this.f16426c.length - i14);
            System.arraycopy(bArr, (i10 + i11) - i15, this.f16426c, i14, min);
            i15 -= min;
            if (i15 > 0) {
                a(i13);
                i14 = 0;
            }
        }
        this.f16425b = i13;
    }

    public String toString() {
        return new String(b(), Charset.defaultCharset());
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public abstract void write(byte[] bArr, int i10, int i11);
}
