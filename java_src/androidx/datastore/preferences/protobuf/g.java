package androidx.datastore.preferences.protobuf;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;
import java.util.NoSuchElementException;
import org.apache.tika.fork.ForkServer;
/* loaded from: classes.dex */
public abstract class g implements Iterable, Serializable {

    /* renamed from: b  reason: collision with root package name */
    public static final g f2136b = new i(y.f2390d);

    /* renamed from: c  reason: collision with root package name */
    private static final f f2137c;

    /* renamed from: d  reason: collision with root package name */
    private static final Comparator f2138d;

    /* renamed from: a  reason: collision with root package name */
    private int f2139a = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a extends c {

        /* renamed from: a  reason: collision with root package name */
        private int f2140a = 0;

        /* renamed from: b  reason: collision with root package name */
        private final int f2141b;

        a() {
            this.f2141b = g.this.size();
        }

        @Override // androidx.datastore.preferences.protobuf.g.InterfaceC0034g
        public byte a() {
            int i10 = this.f2140a;
            if (i10 < this.f2141b) {
                this.f2140a = i10 + 1;
                return g.this.r(i10);
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f2140a < this.f2141b) {
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
        public int compare(g gVar, g gVar2) {
            InterfaceC0034g s10 = gVar.s();
            InterfaceC0034g s11 = gVar2.s();
            while (s10.hasNext() && s11.hasNext()) {
                int compareTo = Integer.valueOf(g.C(s10.a())).compareTo(Integer.valueOf(g.C(s11.a())));
                if (compareTo != 0) {
                    return compareTo;
                }
            }
            return Integer.valueOf(gVar.size()).compareTo(Integer.valueOf(gVar2.size()));
        }
    }

    /* loaded from: classes.dex */
    static abstract class c implements InterfaceC0034g {
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

        @Override // androidx.datastore.preferences.protobuf.g.f
        public byte[] a(byte[] bArr, int i10, int i11) {
            return Arrays.copyOfRange(bArr, i10, i11 + i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class e extends i {

        /* renamed from: f  reason: collision with root package name */
        private final int f2143f;

        /* renamed from: g  reason: collision with root package name */
        private final int f2144g;

        e(byte[] bArr, int i10, int i11) {
            super(bArr);
            g.l(i10, i10 + i11, bArr.length);
            this.f2143f = i10;
            this.f2144g = i11;
        }

        @Override // androidx.datastore.preferences.protobuf.g.i
        protected int K() {
            return this.f2143f;
        }

        @Override // androidx.datastore.preferences.protobuf.g.i, androidx.datastore.preferences.protobuf.g
        public byte g(int i10) {
            g.i(i10, size());
            return this.f2145e[this.f2143f + i10];
        }

        @Override // androidx.datastore.preferences.protobuf.g.i, androidx.datastore.preferences.protobuf.g
        protected void p(byte[] bArr, int i10, int i11, int i12) {
            System.arraycopy(this.f2145e, K() + i10, bArr, i11, i12);
        }

        @Override // androidx.datastore.preferences.protobuf.g.i, androidx.datastore.preferences.protobuf.g
        byte r(int i10) {
            return this.f2145e[this.f2143f + i10];
        }

        @Override // androidx.datastore.preferences.protobuf.g.i, androidx.datastore.preferences.protobuf.g
        public int size() {
            return this.f2144g;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface f {
        byte[] a(byte[] bArr, int i10, int i11);
    }

    /* renamed from: androidx.datastore.preferences.protobuf.g$g  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0034g extends Iterator {
        byte a();
    }

    /* loaded from: classes.dex */
    static abstract class h extends g {
        /* synthetic */ h(a aVar) {
            this();
        }

        @Override // java.lang.Iterable
        public /* bridge */ /* synthetic */ Iterator iterator() {
            return super.s();
        }

        private h() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class i extends h {

        /* renamed from: e  reason: collision with root package name */
        protected final byte[] f2145e;

        i(byte[] bArr) {
            super(null);
            bArr.getClass();
            this.f2145e = bArr;
        }

        @Override // androidx.datastore.preferences.protobuf.g
        public final g A(int i10, int i11) {
            int l10 = g.l(i10, i11, size());
            if (l10 == 0) {
                return g.f2136b;
            }
            return new e(this.f2145e, K() + i10, l10);
        }

        @Override // androidx.datastore.preferences.protobuf.g
        final void I(androidx.datastore.preferences.protobuf.f fVar) {
            fVar.a(this.f2145e, K(), size());
        }

        final boolean J(g gVar, int i10, int i11) {
            if (i11 <= gVar.size()) {
                int i12 = i10 + i11;
                if (i12 <= gVar.size()) {
                    if (gVar instanceof i) {
                        i iVar = (i) gVar;
                        byte[] bArr = this.f2145e;
                        byte[] bArr2 = iVar.f2145e;
                        int K = K() + i11;
                        int K2 = K();
                        int K3 = iVar.K() + i10;
                        while (K2 < K) {
                            if (bArr[K2] != bArr2[K3]) {
                                return false;
                            }
                            K2++;
                            K3++;
                        }
                        return true;
                    }
                    return gVar.A(i10, i12).equals(A(0, i11));
                }
                throw new IllegalArgumentException("Ran off end of other: " + i10 + ", " + i11 + ", " + gVar.size());
            }
            throw new IllegalArgumentException("Length too large: " + i11 + size());
        }

        protected int K() {
            return 0;
        }

        @Override // androidx.datastore.preferences.protobuf.g
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof g) || size() != ((g) obj).size()) {
                return false;
            }
            if (size() == 0) {
                return true;
            }
            if (obj instanceof i) {
                i iVar = (i) obj;
                int y10 = y();
                int y11 = iVar.y();
                if (y10 != 0 && y11 != 0 && y10 != y11) {
                    return false;
                }
                return J(iVar, 0, size());
            }
            return obj.equals(this);
        }

        @Override // androidx.datastore.preferences.protobuf.g
        public byte g(int i10) {
            return this.f2145e[i10];
        }

        @Override // androidx.datastore.preferences.protobuf.g
        protected void p(byte[] bArr, int i10, int i11, int i12) {
            System.arraycopy(this.f2145e, i10, bArr, i11, i12);
        }

        @Override // androidx.datastore.preferences.protobuf.g
        byte r(int i10) {
            return this.f2145e[i10];
        }

        @Override // androidx.datastore.preferences.protobuf.g
        public int size() {
            return this.f2145e.length;
        }

        @Override // androidx.datastore.preferences.protobuf.g
        protected final int t(int i10, int i11, int i12) {
            return y.g(i10, this.f2145e, K() + i11, i12);
        }
    }

    /* loaded from: classes.dex */
    private static final class j implements f {
        private j() {
        }

        /* synthetic */ j(a aVar) {
            this();
        }

        @Override // androidx.datastore.preferences.protobuf.g.f
        public byte[] a(byte[] bArr, int i10, int i11) {
            byte[] bArr2 = new byte[i11];
            System.arraycopy(bArr, i10, bArr2, 0, i11);
            return bArr2;
        }
    }

    static {
        f dVar;
        if (androidx.datastore.preferences.protobuf.d.c()) {
            dVar = new j(null);
        } else {
            dVar = new d(null);
        }
        f2137c = dVar;
        f2138d = new b();
    }

    g() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int C(byte b10) {
        return b10 & ForkServer.ERROR;
    }

    private String D() {
        if (size() <= 50) {
            return j1.a(this);
        }
        return j1.a(A(0, 47)) + "...";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static g F(byte[] bArr) {
        return new i(bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static g G(byte[] bArr, int i10, int i11) {
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

    public static g m(byte[] bArr) {
        return n(bArr, 0, bArr.length);
    }

    public static g n(byte[] bArr, int i10, int i11) {
        l(i10, i10 + i11, bArr.length);
        return new i(f2137c.a(bArr, i10, i11));
    }

    public static g o(String str) {
        return new i(str.getBytes(y.f2388b));
    }

    public abstract g A(int i10, int i11);

    public final byte[] B() {
        int size = size();
        if (size == 0) {
            return y.f2390d;
        }
        byte[] bArr = new byte[size];
        p(bArr, 0, 0, size);
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void I(androidx.datastore.preferences.protobuf.f fVar);

    public abstract boolean equals(Object obj);

    public abstract byte g(int i10);

    public final int hashCode() {
        int i10 = this.f2139a;
        if (i10 == 0) {
            int size = size();
            i10 = t(size, 0, size);
            if (i10 == 0) {
                i10 = 1;
            }
            this.f2139a = i10;
        }
        return i10;
    }

    protected abstract void p(byte[] bArr, int i10, int i11, int i12);

    abstract byte r(int i10);

    public InterfaceC0034g s() {
        return new a();
    }

    public abstract int size();

    protected abstract int t(int i10, int i11, int i12);

    public final String toString() {
        return String.format(Locale.ROOT, "<ByteString@%s size=%d contents=\"%s\">", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(size()), D());
    }

    protected final int y() {
        return this.f2139a;
    }
}
