package com.google.android.gms.internal.auth;

import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;
/* loaded from: classes.dex */
public abstract class p1 implements Iterable, Serializable {

    /* renamed from: b  reason: collision with root package name */
    public static final p1 f6140b = new m1(f2.f6011d);

    /* renamed from: c  reason: collision with root package name */
    private static final Comparator f6141c;

    /* renamed from: d  reason: collision with root package name */
    private static final o1 f6142d;

    /* renamed from: a  reason: collision with root package name */
    private int f6143a = 0;

    static {
        int i10 = c1.f5979a;
        f6142d = new o1(null);
        f6141c = new g1();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int p(int i10, int i11, int i12) {
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

    public static p1 s(byte[] bArr, int i10, int i11) {
        p(i10, i10 + i11, bArr.length);
        byte[] bArr2 = new byte[i11];
        System.arraycopy(bArr, i10, bArr2, 0, i11);
        return new m1(bArr2);
    }

    public abstract byte d(int i10);

    public abstract boolean equals(Object obj);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract byte g(int i10);

    public final int hashCode() {
        int i10 = this.f6143a;
        if (i10 == 0) {
            int i11 = i();
            i10 = l(i11, 0, i11);
            if (i10 == 0) {
                i10 = 1;
            }
            this.f6143a = i10;
        }
        return i10;
    }

    public abstract int i();

    @Override // java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return new f1(this);
    }

    protected abstract int l(int i10, int i11, int i12);

    public abstract p1 m(int i10, int i11);

    protected abstract String n(Charset charset);

    public abstract boolean o();

    /* JADX INFO: Access modifiers changed from: protected */
    public final int r() {
        return this.f6143a;
    }

    public final String t(Charset charset) {
        if (i() == 0) {
            return "";
        }
        return n(charset);
    }

    public final String toString() {
        String concat;
        Locale locale = Locale.ROOT;
        Object[] objArr = new Object[3];
        objArr[0] = Integer.toHexString(System.identityHashCode(this));
        objArr[1] = Integer.valueOf(i());
        if (i() <= 50) {
            concat = n3.a(this);
        } else {
            concat = n3.a(m(0, 47)).concat("...");
        }
        objArr[2] = concat;
        return String.format(locale, "<ByteString@%s size=%d contents=\"%s\">", objArr);
    }
}
