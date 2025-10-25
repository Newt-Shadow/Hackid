package com.google.android.gms.internal.play_billing;

import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;
/* loaded from: classes.dex */
public abstract class e1 implements Iterable, Serializable {

    /* renamed from: b  reason: collision with root package name */
    public static final e1 f6973b = new a1(j2.f7023d);

    /* renamed from: c  reason: collision with root package name */
    private static final Comparator f6974c;

    /* renamed from: d  reason: collision with root package name */
    private static final d1 f6975d;

    /* renamed from: a  reason: collision with root package name */
    private int f6976a = 0;

    static {
        int i10 = q0.f7094a;
        f6975d = new d1(null);
        f6974c = new v0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int r(int i10, int i11, int i12) {
        int i13 = i11 - i10;
        if ((i10 | i11 | i13 | (i12 - i11)) < 0) {
            if (i10 >= 0) {
                if (i11 < i10) {
                    throw new IndexOutOfBoundsException("Beginning index larger than ending index: " + i10 + ", " + i11);
                }
                throw new IndexOutOfBoundsException("End index: " + i11 + " >= " + i12);
            }
            throw new IndexOutOfBoundsException("Beginning index: " + i10 + " < 0");
        }
        return i13;
    }

    public static e1 t(byte[] bArr, int i10, int i11) {
        r(i10, i10 + i11, bArr.length);
        byte[] bArr2 = new byte[i11];
        System.arraycopy(bArr, i10, bArr2, 0, i11);
        return new a1(bArr2);
    }

    public abstract byte d(int i10);

    public abstract boolean equals(Object obj);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract byte g(int i10);

    public final int hashCode() {
        int i10 = this.f6976a;
        if (i10 == 0) {
            int i11 = i();
            i10 = l(i11, 0, i11);
            if (i10 == 0) {
                i10 = 1;
            }
            this.f6976a = i10;
        }
        return i10;
    }

    public abstract int i();

    @Override // java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return new u0(this);
    }

    protected abstract int l(int i10, int i11, int i12);

    public abstract e1 m(int i10, int i11);

    protected abstract String n(Charset charset);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void o(t0 t0Var);

    public abstract boolean p();

    /* JADX INFO: Access modifiers changed from: protected */
    public final int s() {
        return this.f6976a;
    }

    public final String toString() {
        String concat;
        Locale locale = Locale.ROOT;
        Object[] objArr = new Object[3];
        objArr[0] = Integer.toHexString(System.identityHashCode(this));
        objArr[1] = Integer.valueOf(i());
        if (i() <= 50) {
            concat = t3.a(this);
        } else {
            concat = t3.a(m(0, 47)).concat("...");
        }
        objArr[2] = concat;
        return String.format(locale, "<ByteString@%s size=%d contents=\"%s\">", objArr);
    }

    public final String y(Charset charset) {
        return i() == 0 ? "" : n(charset);
    }
}
