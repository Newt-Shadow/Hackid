package gf;
/* loaded from: classes2.dex */
public final class e extends gf.a {

    /* loaded from: classes2.dex */
    public static class a extends df.d {
        public e l() {
            return new e(g());
        }
    }

    public e(int i10) {
        if (i10 >= 0) {
            a(i10);
            return;
        }
        throw new IllegalArgumentException("Negative initial size: " + i10);
    }

    public static a j() {
        return new a();
    }

    @Override // gf.a
    public byte[] b() {
        return c();
    }

    public int k() {
        return this.f16425b;
    }

    @Override // gf.a, java.io.OutputStream
    public void write(byte[] bArr, int i10, int i11) {
        int i12;
        if (i10 < 0 || i10 > bArr.length || i11 < 0 || (i12 = i10 + i11) > bArr.length || i12 < 0) {
            throw new IndexOutOfBoundsException(String.format("offset=%,d, length=%,d", Integer.valueOf(i10), Integer.valueOf(i11)));
        }
        if (i11 == 0) {
            return;
        }
        h(bArr, i10, i11);
    }

    @Override // java.io.OutputStream
    public void write(int i10) {
        g(i10);
    }
}
