package io.sentry.cache.tape;

import io.appmetrica.analytics.coreutils.internal.io.Base64Utils;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;
import org.apache.tika.fork.ForkServer;
/* loaded from: classes2.dex */
public final class d implements Closeable, Iterable {

    /* renamed from: m  reason: collision with root package name */
    private static final byte[] f22966m = new byte[Base64Utils.IO_BUFFER_SIZE];

    /* renamed from: a  reason: collision with root package name */
    RandomAccessFile f22967a;

    /* renamed from: b  reason: collision with root package name */
    final File f22968b;

    /* renamed from: d  reason: collision with root package name */
    long f22970d;

    /* renamed from: e  reason: collision with root package name */
    int f22971e;

    /* renamed from: f  reason: collision with root package name */
    b f22972f;

    /* renamed from: g  reason: collision with root package name */
    private b f22973g;

    /* renamed from: j  reason: collision with root package name */
    private final boolean f22976j;

    /* renamed from: k  reason: collision with root package name */
    private final int f22977k;

    /* renamed from: l  reason: collision with root package name */
    boolean f22978l;

    /* renamed from: c  reason: collision with root package name */
    final int f22969c = 32;

    /* renamed from: h  reason: collision with root package name */
    private final byte[] f22974h = new byte[32];

    /* renamed from: i  reason: collision with root package name */
    int f22975i = 0;

    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final File f22979a;

        /* renamed from: b  reason: collision with root package name */
        boolean f22980b = true;

        /* renamed from: c  reason: collision with root package name */
        int f22981c = -1;

        public a(File file) {
            if (file != null) {
                this.f22979a = file;
                return;
            }
            throw new NullPointerException("file == null");
        }

        public d a() {
            RandomAccessFile J0 = d.J0(this.f22979a);
            try {
                return new d(this.f22979a, J0, this.f22980b, this.f22981c);
            } catch (Throwable th) {
                J0.close();
                throw th;
            }
        }

        public a b(int i10) {
            this.f22981c = i10;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: c  reason: collision with root package name */
        static final b f22982c = new b(0, 0);

        /* renamed from: a  reason: collision with root package name */
        final long f22983a;

        /* renamed from: b  reason: collision with root package name */
        final int f22984b;

        b(long j10, int i10) {
            this.f22983a = j10;
            this.f22984b = i10;
        }

        public String toString() {
            return b.class.getSimpleName() + "[position=" + this.f22983a + ", length=" + this.f22984b + "]";
        }
    }

    /* loaded from: classes2.dex */
    private final class c implements Iterator {

        /* renamed from: a  reason: collision with root package name */
        int f22985a = 0;

        /* renamed from: b  reason: collision with root package name */
        private long f22986b;

        /* renamed from: c  reason: collision with root package name */
        int f22987c;

        c() {
            this.f22986b = d.this.f22972f.f22983a;
            this.f22987c = d.this.f22975i;
        }

        private void b() {
            if (d.this.f22975i == this.f22987c) {
                return;
            }
            throw new ConcurrentModificationException();
        }

        @Override // java.util.Iterator
        /* renamed from: c */
        public byte[] next() {
            if (!d.this.f22978l) {
                b();
                if (!d.this.isEmpty()) {
                    int i10 = this.f22985a;
                    d dVar = d.this;
                    if (i10 < dVar.f22971e) {
                        try {
                            try {
                                b V0 = dVar.V0(this.f22986b);
                                byte[] bArr = new byte[V0.f22984b];
                                long i12 = d.this.i1(V0.f22983a + 4);
                                this.f22986b = i12;
                                if (!d.this.e1(i12, bArr, 0, V0.f22984b)) {
                                    this.f22985a = d.this.f22971e;
                                    return d.f22966m;
                                }
                                this.f22986b = d.this.i1(V0.f22983a + 4 + V0.f22984b);
                                this.f22985a++;
                                return bArr;
                            } catch (IOException e10) {
                                throw ((Error) d.t0(e10));
                            }
                        } catch (IOException e11) {
                            throw ((Error) d.t0(e11));
                        } catch (OutOfMemoryError unused) {
                            d.this.c1();
                            this.f22985a = d.this.f22971e;
                            return d.f22966m;
                        }
                    }
                    throw new NoSuchElementException();
                }
                throw new NoSuchElementException();
            }
            throw new IllegalStateException("closed");
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (!d.this.f22978l) {
                b();
                if (this.f22985a != d.this.f22971e) {
                    return true;
                }
                return false;
            }
            throw new IllegalStateException("closed");
        }

        @Override // java.util.Iterator
        public void remove() {
            b();
            if (!d.this.isEmpty()) {
                if (this.f22985a == 1) {
                    try {
                        d.this.a1();
                        this.f22987c = d.this.f22975i;
                        this.f22985a--;
                        return;
                    } catch (IOException e10) {
                        throw ((Error) d.t0(e10));
                    }
                }
                throw new UnsupportedOperationException("Removal is only permitted from the head.");
            }
            throw new NoSuchElementException();
        }
    }

    d(File file, RandomAccessFile randomAccessFile, boolean z10, int i10) {
        this.f22968b = file;
        this.f22967a = randomAccessFile;
        this.f22976j = z10;
        this.f22977k = i10;
        W0();
    }

    static RandomAccessFile J0(File file) {
        if (!file.exists()) {
            File file2 = new File(file.getPath() + ".tmp");
            RandomAccessFile U0 = U0(file2);
            try {
                U0.setLength(4096L);
                U0.seek(0L);
                U0.writeInt(-2147483647);
                U0.writeLong(4096L);
                U0.close();
                if (!file2.renameTo(file)) {
                    throw new IOException("Rename failed!");
                }
            } catch (Throwable th) {
                U0.close();
                throw th;
            }
        }
        return U0(file);
    }

    private static RandomAccessFile U0(File file) {
        return new RandomAccessFile(file, "rwd");
    }

    private void W0() {
        this.f22967a.seek(0L);
        this.f22967a.readFully(this.f22974h);
        this.f22970d = Y0(this.f22974h, 4);
        this.f22971e = X0(this.f22974h, 12);
        long Y0 = Y0(this.f22974h, 16);
        long Y02 = Y0(this.f22974h, 24);
        if (this.f22970d <= this.f22967a.length()) {
            if (this.f22970d > 32) {
                this.f22972f = V0(Y0);
                this.f22973g = V0(Y02);
                return;
            }
            throw new IOException("File is corrupt; length stored in header (" + this.f22970d + ") is invalid.");
        }
        throw new IOException("File is truncated. Expected length: " + this.f22970d + ", Actual length: " + this.f22967a.length());
    }

    private static int X0(byte[] bArr, int i10) {
        return ((bArr[i10] & ForkServer.ERROR) << 24) + ((bArr[i10 + 1] & ForkServer.ERROR) << 16) + ((bArr[i10 + 2] & ForkServer.ERROR) << 8) + (bArr[i10 + 3] & ForkServer.ERROR);
    }

    private static long Y0(byte[] bArr, int i10) {
        return ((bArr[i10] & 255) << 56) + ((bArr[i10 + 1] & 255) << 48) + ((bArr[i10 + 2] & 255) << 40) + ((bArr[i10 + 3] & 255) << 32) + ((bArr[i10 + 4] & 255) << 24) + ((bArr[i10 + 5] & 255) << 16) + ((bArr[i10 + 6] & 255) << 8) + (bArr[i10 + 7] & 255);
    }

    private long Z0() {
        return this.f22970d - h1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c1() {
        this.f22967a.close();
        this.f22968b.delete();
        this.f22967a = J0(this.f22968b);
        W0();
    }

    private void d1(long j10, long j11) {
        while (j11 > 0) {
            byte[] bArr = f22966m;
            int min = (int) Math.min(j11, bArr.length);
            f1(j10, bArr, 0, min);
            long j12 = min;
            j11 -= j12;
            j10 += j12;
        }
    }

    private void f1(long j10, byte[] bArr, int i10, int i11) {
        long i12 = i1(j10);
        long j11 = this.f22970d;
        if (i11 + i12 <= j11) {
            this.f22967a.seek(i12);
            this.f22967a.write(bArr, i10, i11);
            return;
        }
        int i13 = (int) (j11 - i12);
        this.f22967a.seek(i12);
        this.f22967a.write(bArr, i10, i13);
        this.f22967a.seek(32L);
        this.f22967a.write(bArr, i10 + i13, i11 - i13);
    }

    private void g1(long j10) {
        this.f22967a.setLength(j10);
        this.f22967a.getChannel().force(true);
    }

    private long h1() {
        if (this.f22971e == 0) {
            return 32L;
        }
        b bVar = this.f22973g;
        long j10 = bVar.f22983a;
        long j11 = this.f22972f.f22983a;
        if (j10 >= j11) {
            return (j10 - j11) + 4 + bVar.f22984b + 32;
        }
        return (((j10 + 4) + bVar.f22984b) + this.f22970d) - j11;
    }

    private void j1(long j10, int i10, long j11, long j12) {
        this.f22967a.seek(0L);
        k1(this.f22974h, 0, -2147483647);
        l1(this.f22974h, 4, j10);
        k1(this.f22974h, 12, i10);
        l1(this.f22974h, 16, j11);
        l1(this.f22974h, 24, j12);
        this.f22967a.write(this.f22974h, 0, 32);
    }

    private static void k1(byte[] bArr, int i10, int i11) {
        bArr[i10] = (byte) (i11 >> 24);
        bArr[i10 + 1] = (byte) (i11 >> 16);
        bArr[i10 + 2] = (byte) (i11 >> 8);
        bArr[i10 + 3] = (byte) i11;
    }

    private static void l1(byte[] bArr, int i10, long j10) {
        bArr[i10] = (byte) (j10 >> 56);
        bArr[i10 + 1] = (byte) (j10 >> 48);
        bArr[i10 + 2] = (byte) (j10 >> 40);
        bArr[i10 + 3] = (byte) (j10 >> 32);
        bArr[i10 + 4] = (byte) (j10 >> 24);
        bArr[i10 + 5] = (byte) (j10 >> 16);
        bArr[i10 + 6] = (byte) (j10 >> 8);
        bArr[i10 + 7] = (byte) j10;
    }

    private void q0(long j10) {
        long j11;
        long j12;
        long j13 = j10 + 4;
        long Z0 = Z0();
        if (Z0 >= j13) {
            return;
        }
        long j14 = this.f22970d;
        while (true) {
            Z0 += j14;
            j11 = j14 << 1;
            if (Z0 >= j13) {
                break;
            }
            j14 = j11;
        }
        g1(j11);
        b bVar = this.f22973g;
        long i12 = i1(bVar.f22983a + 4 + bVar.f22984b);
        if (i12 <= this.f22972f.f22983a) {
            FileChannel channel = this.f22967a.getChannel();
            channel.position(this.f22970d);
            j12 = i12 - 32;
            if (channel.transferTo(32L, j12, channel) != j12) {
                throw new AssertionError("Copied insufficient number of bytes!");
            }
        } else {
            j12 = 0;
        }
        long j15 = j12;
        long j16 = this.f22973g.f22983a;
        long j17 = this.f22972f.f22983a;
        if (j16 < j17) {
            long j18 = (this.f22970d + j16) - 32;
            j1(j11, this.f22971e, j17, j18);
            this.f22973g = new b(j18, this.f22973g.f22984b);
        } else {
            j1(j11, this.f22971e, j17, j16);
        }
        this.f22970d = j11;
        if (this.f22976j) {
            d1(32L, j15);
        }
    }

    public boolean T0() {
        if (this.f22977k == -1 || size() != this.f22977k) {
            return false;
        }
        return true;
    }

    b V0(long j10) {
        if (j10 == 0) {
            return b.f22982c;
        }
        if (!e1(j10, this.f22974h, 0, 4)) {
            return b.f22982c;
        }
        return new b(j10, X0(this.f22974h, 0));
    }

    public void a1() {
        b1(1);
    }

    public void b1(int i10) {
        if (i10 >= 0) {
            if (i10 == 0) {
                return;
            }
            if (i10 == this.f22971e) {
                clear();
                return;
            } else if (!isEmpty()) {
                if (i10 <= this.f22971e) {
                    b bVar = this.f22972f;
                    long j10 = bVar.f22983a;
                    int i11 = bVar.f22984b;
                    long j11 = 0;
                    int i12 = 0;
                    long j12 = j10;
                    while (i12 < i10) {
                        j11 += i11 + 4;
                        long i13 = i1(j12 + 4 + i11);
                        if (!e1(i13, this.f22974h, 0, 4)) {
                            return;
                        }
                        i11 = X0(this.f22974h, 0);
                        i12++;
                        j12 = i13;
                    }
                    j1(this.f22970d, this.f22971e - i10, j12, this.f22973g.f22983a);
                    this.f22971e -= i10;
                    this.f22975i++;
                    this.f22972f = new b(j12, i11);
                    if (this.f22976j) {
                        d1(j10, j11);
                        return;
                    }
                    return;
                }
                throw new IllegalArgumentException("Cannot remove more elements (" + i10 + ") than present in queue (" + this.f22971e + ").");
            } else {
                throw new NoSuchElementException();
            }
        }
        throw new IllegalArgumentException("Cannot remove negative (" + i10 + ") number of elements.");
    }

    public void clear() {
        if (!this.f22978l) {
            j1(4096L, 0, 0L, 0L);
            if (this.f22976j) {
                this.f22967a.seek(32L);
                this.f22967a.write(f22966m, 0, 4064);
            }
            this.f22971e = 0;
            b bVar = b.f22982c;
            this.f22972f = bVar;
            this.f22973g = bVar;
            if (this.f22970d > 4096) {
                g1(4096L);
            }
            this.f22970d = 4096L;
            this.f22975i++;
            return;
        }
        throw new IllegalStateException("closed");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f22978l = true;
        this.f22967a.close();
    }

    boolean e1(long j10, byte[] bArr, int i10, int i11) {
        try {
            long i12 = i1(j10);
            long j11 = this.f22970d;
            if (i11 + i12 <= j11) {
                this.f22967a.seek(i12);
                this.f22967a.readFully(bArr, i10, i11);
                return true;
            }
            int i13 = (int) (j11 - i12);
            this.f22967a.seek(i12);
            this.f22967a.readFully(bArr, i10, i13);
            this.f22967a.seek(32L);
            this.f22967a.readFully(bArr, i10 + i13, i11 - i13);
            return true;
        } catch (EOFException unused) {
            c1();
            return false;
        } catch (IOException e10) {
            throw e10;
        } catch (Throwable unused2) {
            c1();
            return false;
        }
    }

    long i1(long j10) {
        long j11 = this.f22970d;
        if (j10 >= j11) {
            return (j10 + 32) - j11;
        }
        return j10;
    }

    public boolean isEmpty() {
        if (this.f22971e == 0) {
            return true;
        }
        return false;
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return new c();
    }

    public void o0(byte[] bArr, int i10, int i11) {
        b bVar;
        long i12;
        long j10;
        if (bArr != null) {
            if ((i10 | i11) >= 0 && i11 <= bArr.length - i10) {
                if (!this.f22978l) {
                    if (T0()) {
                        a1();
                    }
                    q0(i11);
                    boolean isEmpty = isEmpty();
                    if (isEmpty) {
                        i12 = 32;
                    } else {
                        i12 = i1(this.f22973g.f22983a + 4 + bVar.f22984b);
                    }
                    b bVar2 = new b(i12, i11);
                    k1(this.f22974h, 0, i11);
                    f1(bVar2.f22983a, this.f22974h, 0, 4);
                    f1(bVar2.f22983a + 4, bArr, i10, i11);
                    if (isEmpty) {
                        j10 = bVar2.f22983a;
                    } else {
                        j10 = this.f22972f.f22983a;
                    }
                    j1(this.f22970d, this.f22971e + 1, j10, bVar2.f22983a);
                    this.f22973g = bVar2;
                    this.f22971e++;
                    this.f22975i++;
                    if (isEmpty) {
                        this.f22972f = bVar2;
                        return;
                    }
                    return;
                }
                throw new IllegalStateException("closed");
            }
            throw new IndexOutOfBoundsException();
        }
        throw new NullPointerException("data == null");
    }

    public int size() {
        return this.f22971e;
    }

    public String toString() {
        return "QueueFile{file=" + this.f22968b + ", zero=" + this.f22976j + ", length=" + this.f22970d + ", size=" + this.f22971e + ", first=" + this.f22972f + ", last=" + this.f22973g + '}';
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Throwable t0(Throwable th) {
        throw th;
    }
}
