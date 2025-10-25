package com.google.crypto.tink.shaded.protobuf;

import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;
import java.util.NoSuchElementException;
import org.apache.tika.fork.ForkServer;
/* loaded from: classes.dex */
public abstract class h implements Iterable, Serializable {

    /* renamed from: b  reason: collision with root package name */
    public static final h f8444b = new j(z.f8669d);

    /* renamed from: c  reason: collision with root package name */
    private static final f f8445c;

    /* renamed from: d  reason: collision with root package name */
    private static final Comparator f8446d;

    /* renamed from: a  reason: collision with root package name */
    private int f8447a = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a extends c {

        /* renamed from: a  reason: collision with root package name */
        private int f8448a = 0;

        /* renamed from: b  reason: collision with root package name */
        private final int f8449b;

        a() {
            this.f8449b = h.this.size();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.h.g
        public byte a() {
            int i10 = this.f8448a;
            if (i10 < this.f8449b) {
                this.f8448a = i10 + 1;
                return h.this.r(i10);
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f8448a < this.f8449b) {
                return true;
            }
            return false;
        }
    }

    /* loaded from: classes.dex */
    class b implements Comparator {
        b() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(h hVar, h hVar2) {
            g t10 = hVar.t();
            g t11 = hVar2.t();
            while (t10.hasNext() && t11.hasNext()) {
                int compareTo = Integer.valueOf(h.G(t10.a())).compareTo(Integer.valueOf(h.G(t11.a())));
                if (compareTo != 0) {
                    return compareTo;
                }
            }
            return Integer.valueOf(hVar.size()).compareTo(Integer.valueOf(hVar2.size()));
        }
    }

    /* loaded from: classes.dex */
    static abstract class c implements g {
        c() {
        }

        @Override // java.util.Iterator
        /* renamed from: b */
        public final Byte next() {
            return Byte.valueOf(a());
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* loaded from: classes.dex */
    private static final class d implements f {
        private d() {
        }

        /* synthetic */ d(a aVar) {
            this();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.h.f
        public byte[] a(byte[] bArr, int i10, int i11) {
            return Arrays.copyOfRange(bArr, i10, i11 + i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class e extends j {

        /* renamed from: f  reason: collision with root package name */
        private final int f8451f;

        /* renamed from: g  reason: collision with root package name */
        private final int f8452g;

        e(byte[] bArr, int i10, int i11) {
            super(bArr);
            h.l(i10, i10 + i11, bArr.length);
            this.f8451f = i10;
            this.f8452g = i11;
        }

        @Override // com.google.crypto.tink.shaded.protobuf.h.j
        protected int R() {
            return this.f8451f;
        }

        @Override // com.google.crypto.tink.shaded.protobuf.h.j, com.google.crypto.tink.shaded.protobuf.h
        public byte g(int i10) {
            h.i(i10, size());
            return this.f8455e[this.f8451f + i10];
        }

        @Override // com.google.crypto.tink.shaded.protobuf.h.j, com.google.crypto.tink.shaded.protobuf.h
        protected void p(byte[] bArr, int i10, int i11, int i12) {
            System.arraycopy(this.f8455e, R() + i10, bArr, i11, i12);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.h.j, com.google.crypto.tink.shaded.protobuf.h
        byte r(int i10) {
            return this.f8455e[this.f8451f + i10];
        }

        @Override // com.google.crypto.tink.shaded.protobuf.h.j, com.google.crypto.tink.shaded.protobuf.h
        public int size() {
            return this.f8452g;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface f {
        byte[] a(byte[] bArr, int i10, int i11);
    }

    /* loaded from: classes.dex */
    public interface g extends Iterator {
        byte a();
    }

    /* renamed from: com.google.crypto.tink.shaded.protobuf.h$h  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    static final class C0104h {

        /* renamed from: a  reason: collision with root package name */
        private final com.google.crypto.tink.shaded.protobuf.k f8453a;

        /* renamed from: b  reason: collision with root package name */
        private final byte[] f8454b;

        /* synthetic */ C0104h(int i10, a aVar) {
            this(i10);
        }

        public h a() {
            this.f8453a.c();
            return new j(this.f8454b);
        }

        public com.google.crypto.tink.shaded.protobuf.k b() {
            return this.f8453a;
        }

        private C0104h(int i10) {
            byte[] bArr = new byte[i10];
            this.f8454b = bArr;
            this.f8453a = com.google.crypto.tink.shaded.protobuf.k.U(bArr);
        }
    }

    /* loaded from: classes.dex */
    static abstract class i extends h {
        i() {
        }

        @Override // java.lang.Iterable
        public /* bridge */ /* synthetic */ Iterator iterator() {
            return super.t();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class j extends i {

        /* renamed from: e  reason: collision with root package name */
        protected final byte[] f8455e;

        j(byte[] bArr) {
            bArr.getClass();
            this.f8455e = bArr;
        }

        @Override // com.google.crypto.tink.shaded.protobuf.h
        public final com.google.crypto.tink.shaded.protobuf.i A() {
            return com.google.crypto.tink.shaded.protobuf.i.j(this.f8455e, R(), size(), true);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.h
        protected final int B(int i10, int i11, int i12) {
            return z.h(i10, this.f8455e, R() + i11, i12);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.h
        public final h D(int i10, int i11) {
            int l10 = h.l(i10, i11, size());
            if (l10 == 0) {
                return h.f8444b;
            }
            return new e(this.f8455e, R() + i10, l10);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.h
        protected final String J(Charset charset) {
            return new String(this.f8455e, R(), size(), charset);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.h
        final void O(com.google.crypto.tink.shaded.protobuf.g gVar) {
            gVar.a(this.f8455e, R(), size());
        }

        final boolean Q(h hVar, int i10, int i11) {
            if (i11 <= hVar.size()) {
                int i12 = i10 + i11;
                if (i12 <= hVar.size()) {
                    if (hVar instanceof j) {
                        j jVar = (j) hVar;
                        byte[] bArr = this.f8455e;
                        byte[] bArr2 = jVar.f8455e;
                        int R = R() + i11;
                        int R2 = R();
                        int R3 = jVar.R() + i10;
                        while (R2 < R) {
                            if (bArr[R2] != bArr2[R3]) {
                                return false;
                            }
                            R2++;
                            R3++;
                        }
                        return true;
                    }
                    return hVar.D(i10, i12).equals(D(0, i11));
                }
                throw new IllegalArgumentException("Ran off end of other: " + i10 + ", " + i11 + ", " + hVar.size());
            }
            throw new IllegalArgumentException("Length too large: " + i11 + size());
        }

        protected int R() {
            return 0;
        }

        @Override // com.google.crypto.tink.shaded.protobuf.h
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof h) || size() != ((h) obj).size()) {
                return false;
            }
            if (size() == 0) {
                return true;
            }
            if (obj instanceof j) {
                j jVar = (j) obj;
                int C = C();
                int C2 = jVar.C();
                if (C != 0 && C2 != 0 && C != C2) {
                    return false;
                }
                return Q(jVar, 0, size());
            }
            return obj.equals(this);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.h
        public byte g(int i10) {
            return this.f8455e[i10];
        }

        @Override // com.google.crypto.tink.shaded.protobuf.h
        protected void p(byte[] bArr, int i10, int i11, int i12) {
            System.arraycopy(this.f8455e, i10, bArr, i11, i12);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.h
        byte r(int i10) {
            return this.f8455e[i10];
        }

        @Override // com.google.crypto.tink.shaded.protobuf.h
        public final boolean s() {
            int R = R();
            return o1.n(this.f8455e, R, size() + R);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.h
        public int size() {
            return this.f8455e.length;
        }
    }

    /* loaded from: classes.dex */
    private static final class k implements f {
        private k() {
        }

        /* synthetic */ k(a aVar) {
            this();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.h.f
        public byte[] a(byte[] bArr, int i10, int i11) {
            byte[] bArr2 = new byte[i11];
            System.arraycopy(bArr, i10, bArr2, 0, i11);
            return bArr2;
        }
    }

    static {
        f dVar;
        if (com.google.crypto.tink.shaded.protobuf.d.c()) {
            dVar = new k(null);
        } else {
            dVar = new d(null);
        }
        f8445c = dVar;
        f8446d = new b();
    }

    h() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int G(byte b10) {
        return b10 & ForkServer.ERROR;
    }

    private String L() {
        if (size() <= 50) {
            return h1.a(this);
        }
        return h1.a(D(0, 47)) + "...";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static h M(byte[] bArr) {
        return new j(bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static h N(byte[] bArr, int i10, int i11) {
        return new e(bArr, i10, i11);
    }

    static void i(int i10, int i11) {
        if (((i11 - (i10 + 1)) | i10) < 0) {
            if (i10 < 0) {
                throw new ArrayIndexOutOfBoundsException("Index < 0: " + i10);
            }
            throw new ArrayIndexOutOfBoundsException("Index > length: " + i10 + ", " + i11);
        }
    }

    static int l(int i10, int i11, int i12) {
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

    public static h m(byte[] bArr) {
        return n(bArr, 0, bArr.length);
    }

    public static h n(byte[] bArr, int i10, int i11) {
        l(i10, i10 + i11, bArr.length);
        return new j(f8445c.a(bArr, i10, i11));
    }

    public static h o(String str) {
        return new j(str.getBytes(z.f8667b));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static C0104h y(int i10) {
        return new C0104h(i10, null);
    }

    public abstract com.google.crypto.tink.shaded.protobuf.i A();

    protected abstract int B(int i10, int i11, int i12);

    protected final int C() {
        return this.f8447a;
    }

    public abstract h D(int i10, int i11);

    public final byte[] F() {
        int size = size();
        if (size == 0) {
            return z.f8669d;
        }
        byte[] bArr = new byte[size];
        p(bArr, 0, 0, size);
        return bArr;
    }

    public final String I(Charset charset) {
        if (size() == 0) {
            return "";
        }
        return J(charset);
    }

    protected abstract String J(Charset charset);

    public final String K() {
        return I(z.f8667b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void O(com.google.crypto.tink.shaded.protobuf.g gVar);

    public abstract boolean equals(Object obj);

    public abstract byte g(int i10);

    public final int hashCode() {
        int i10 = this.f8447a;
        if (i10 == 0) {
            int size = size();
            i10 = B(size, 0, size);
            if (i10 == 0) {
                i10 = 1;
            }
            this.f8447a = i10;
        }
        return i10;
    }

    protected abstract void p(byte[] bArr, int i10, int i11, int i12);

    abstract byte r(int i10);

    public abstract boolean s();

    public abstract int size();

    public g t() {
        return new a();
    }

    public final String toString() {
        return String.format(Locale.ROOT, "<ByteString@%s size=%d contents=\"%s\">", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(size()), L());
    }
}
