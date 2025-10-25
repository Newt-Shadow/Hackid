package com.google.android.gms.internal.measurement;

import java.io.Serializable;
import java.util.Iterator;
import java.util.Locale;
/* loaded from: classes.dex */
public abstract class ka implements Iterable, Serializable {

    /* renamed from: b  reason: collision with root package name */
    public static final ka f6472b = new ja(ob.f6616b);

    /* renamed from: a  reason: collision with root package name */
    private int f6473a = 0;

    static {
        int i10 = x9.f6884a;
    }

    public static ka o(byte[] bArr, int i10, int i11) {
        r(i10, i10 + i11, bArr.length);
        byte[] bArr2 = new byte[i11];
        System.arraycopy(bArr, i10, bArr2, 0, i11);
        return new ja(bArr2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int r(int i10, int i11, int i12) {
        int i13 = i11 - i10;
        if ((i10 | i11 | i13 | (i12 - i11)) < 0) {
            if (i10 >= 0) {
                if (i11 < i10) {
                    StringBuilder sb2 = new StringBuilder(String.valueOf(i10).length() + 44 + String.valueOf(i11).length());
                    sb2.append("Beginning index larger than ending index: ");
                    sb2.append(i10);
                    sb2.append(", ");
                    sb2.append(i11);
                    throw new IndexOutOfBoundsException(sb2.toString());
                }
                StringBuilder sb3 = new StringBuilder(String.valueOf(i11).length() + 15 + String.valueOf(i12).length());
                sb3.append("End index: ");
                sb3.append(i11);
                sb3.append(" >= ");
                sb3.append(i12);
                throw new IndexOutOfBoundsException(sb3.toString());
            }
            StringBuilder sb4 = new StringBuilder(String.valueOf(i10).length() + 21);
            sb4.append("Beginning index: ");
            sb4.append(i10);
            sb4.append(" < 0");
            throw new IndexOutOfBoundsException(sb4.toString());
        }
        return i13;
    }

    public abstract byte d(int i10);

    public abstract boolean equals(Object obj);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract byte g(int i10);

    public final int hashCode() {
        int i10 = this.f6473a;
        if (i10 == 0) {
            int i11 = i();
            i10 = n(i11, 0, i11);
            if (i10 == 0) {
                i10 = 1;
            }
            this.f6473a = i10;
        }
        return i10;
    }

    public abstract int i();

    @Override // java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return new da(this);
    }

    public abstract ka l(int i10, int i11);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void m(ba baVar);

    protected abstract int n(int i10, int i11, int i12);

    /* JADX INFO: Access modifiers changed from: protected */
    public final int p() {
        return this.f6473a;
    }

    public final String toString() {
        String concat;
        Locale locale = Locale.ROOT;
        Object[] objArr = new Object[3];
        objArr[0] = Integer.toHexString(System.identityHashCode(this));
        objArr[1] = Integer.valueOf(i());
        if (i() <= 50) {
            concat = cd.a(this);
        } else {
            concat = cd.a(l(0, 47)).concat("...");
        }
        objArr[2] = concat;
        return String.format(locale, "<ByteString@%s size=%d contents=\"%s\">", objArr);
    }
}
