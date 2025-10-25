package lb;

import io.appmetrica.analytics.coreutils.internal.io.Base64Utils;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;
import org.apache.tika.fork.ForkServer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class f0 implements Closeable, Iterable {

    /* renamed from: m  reason: collision with root package name */
    private static final byte[] f25434m = new byte[Base64Utils.IO_BUFFER_SIZE];

    /* renamed from: a  reason: collision with root package name */
    final RandomAccessFile f25435a;

    /* renamed from: b  reason: collision with root package name */
    final File f25436b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f25437c;

    /* renamed from: d  reason: collision with root package name */
    final int f25438d;

    /* renamed from: e  reason: collision with root package name */
    long f25439e;

    /* renamed from: f  reason: collision with root package name */
    int f25440f;

    /* renamed from: g  reason: collision with root package name */
    b f25441g;

    /* renamed from: h  reason: collision with root package name */
    private b f25442h;

    /* renamed from: i  reason: collision with root package name */
    private final byte[] f25443i;

    /* renamed from: j  reason: collision with root package name */
    int f25444j = 0;

    /* renamed from: k  reason: collision with root package name */
    private final boolean f25445k;

    /* renamed from: l  reason: collision with root package name */
    boolean f25446l;

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final File f25447a;

        /* renamed from: b  reason: collision with root package name */
        boolean f25448b = true;

        /* renamed from: c  reason: collision with root package name */
        boolean f25449c = false;

        public a(File file) {
            if (file != null) {
                this.f25447a = file;
                return;
            }
            throw new NullPointerException("file == null");
        }

        public f0 a() {
            RandomAccessFile s10 = f0.s(this.f25447a, this.f25449c);
            try {
                return new f0(this.f25447a, s10, this.f25448b, this.f25449c);
            } catch (Throwable th) {
                s10.close();
                throw th;
            }
        }

        public a b(boolean z10) {
            this.f25449c = z10;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: c  reason: collision with root package name */
        static final b f25450c = new b(0, 0);

        /* renamed from: a  reason: collision with root package name */
        final long f25451a;

        /* renamed from: b  reason: collision with root package name */
        final int f25452b;

        b(long j10, int i10) {
            this.f25451a = j10;
            this.f25452b = i10;
        }

        public String toString() {
            return getClass().getSimpleName() + "[position=" + this.f25451a + ", length=" + this.f25452b + "]";
        }
    }

    /* loaded from: classes.dex */
    private final class c implements Iterator {

        /* renamed from: a  reason: collision with root package name */
        int f25453a = 0;

        /* renamed from: b  reason: collision with root package name */
        private long f25454b;

        /* renamed from: c  reason: collision with root package name */
        int f25455c;

        c() {
            this.f25454b = f0.this.f25441g.f25451a;
            this.f25455c = f0.this.f25444j;
        }

        private void b() {
            if (f0.this.f25444j == this.f25455c) {
                return;
            }
            throw new ConcurrentModificationException();
        }

        @Override // java.util.Iterator
        /* renamed from: c */
        public byte[] next() {
            if (!f0.this.f25446l) {
                b();
                if (!f0.this.isEmpty()) {
                    int i10 = this.f25453a;
                    f0 f0Var = f0.this;
                    if (i10 < f0Var.f25440f) {
                        try {
                            b q02 = f0Var.q0(this.f25454b);
                            byte[] bArr = new byte[q02.f25452b];
                            long Z0 = f0.this.Z0(q02.f25451a + 4);
                            this.f25454b = Z0;
                            f0.this.W0(Z0, bArr, 0, q02.f25452b);
                            this.f25454b = f0.this.Z0(q02.f25451a + 4 + q02.f25452b);
                            this.f25453a++;
                            return bArr;
                        } catch (IOException e10) {
                            throw ((Error) f0.g(e10));
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
            if (!f0.this.f25446l) {
                b();
                if (this.f25453a != f0.this.f25440f) {
                    return true;
                }
                return false;
            }
            throw new IllegalStateException("closed");
        }

        @Override // java.util.Iterator
        public void remove() {
            b();
            if (!f0.this.isEmpty()) {
                if (this.f25453a == 1) {
                    try {
                        f0.this.T0();
                        this.f25455c = f0.this.f25444j;
                        this.f25453a--;
                        return;
                    } catch (IOException e10) {
                        throw ((Error) f0.g(e10));
                    }
                }
                throw new UnsupportedOperationException("Removal is only permitted from the head.");
            }
            throw new NoSuchElementException();
        }
    }

    f0(File file, RandomAccessFile randomAccessFile, boolean z10, boolean z11) {
        boolean z12;
        long t02;
        long j10;
        byte[] bArr = new byte[32];
        this.f25443i = bArr;
        this.f25436b = file;
        this.f25435a = randomAccessFile;
        this.f25445k = z10;
        randomAccessFile.seek(0L);
        randomAccessFile.readFully(bArr);
        if (!z11 && (bArr[0] & 128) != 0) {
            z12 = true;
        } else {
            z12 = false;
        }
        this.f25437c = z12;
        if (z12) {
            this.f25438d = 32;
            int t03 = t0(bArr, 0) & Integer.MAX_VALUE;
            if (t03 == 1) {
                this.f25439e = J0(bArr, 4);
                this.f25440f = t0(bArr, 12);
                j10 = J0(bArr, 16);
                t02 = J0(bArr, 24);
            } else {
                throw new IOException("Unable to read version " + t03 + " format. Supported versions are 1 and legacy.");
            }
        } else {
            this.f25438d = 16;
            this.f25439e = t0(bArr, 0);
            this.f25440f = t0(bArr, 4);
            long t04 = t0(bArr, 8);
            t02 = t0(bArr, 12);
            j10 = t04;
        }
        if (this.f25439e <= randomAccessFile.length()) {
            if (this.f25439e > this.f25438d) {
                this.f25441g = q0(j10);
                this.f25442h = q0(t02);
                return;
            }
            throw new IOException("File is corrupt; length stored in header (" + this.f25439e + ") is invalid.");
        }
        throw new IOException("File is truncated. Expected length: " + this.f25439e + ", Actual length: " + randomAccessFile.length());
    }

    private static long J0(byte[] bArr, int i10) {
        return ((bArr[i10] & 255) << 56) + ((bArr[i10 + 1] & 255) << 48) + ((bArr[i10 + 2] & 255) << 40) + ((bArr[i10 + 3] & 255) << 32) + ((bArr[i10 + 4] & 255) << 24) + ((bArr[i10 + 5] & 255) << 16) + ((bArr[i10 + 6] & 255) << 8) + (bArr[i10 + 7] & 255);
    }

    private void V0(long j10, long j11) {
        while (j11 > 0) {
            byte[] bArr = f25434m;
            int min = (int) Math.min(j11, bArr.length);
            X0(j10, bArr, 0, min);
            long j12 = min;
            j11 -= j12;
            j10 += j12;
        }
    }

    private void X0(long j10, byte[] bArr, int i10, int i11) {
        long Z0 = Z0(j10);
        long j11 = this.f25439e;
        if (i11 + Z0 <= j11) {
            this.f25435a.seek(Z0);
            this.f25435a.write(bArr, i10, i11);
            return;
        }
        int i12 = (int) (j11 - Z0);
        this.f25435a.seek(Z0);
        this.f25435a.write(bArr, i10, i12);
        this.f25435a.seek(this.f25438d);
        this.f25435a.write(bArr, i10 + i12, i11 - i12);
    }

    private void Y0(long j10) {
        this.f25435a.setLength(j10);
        this.f25435a.getChannel().force(true);
    }

    private void a1(long j10, int i10, long j11, long j12) {
        this.f25435a.seek(0L);
        if (this.f25437c) {
            b1(this.f25443i, 0, -2147483647);
            c1(this.f25443i, 4, j10);
            b1(this.f25443i, 12, i10);
            c1(this.f25443i, 16, j11);
            c1(this.f25443i, 24, j12);
            this.f25435a.write(this.f25443i, 0, 32);
            return;
        }
        b1(this.f25443i, 0, (int) j10);
        b1(this.f25443i, 4, i10);
        b1(this.f25443i, 8, (int) j11);
        b1(this.f25443i, 12, (int) j12);
        this.f25435a.write(this.f25443i, 0, 16);
    }

    private static void b1(byte[] bArr, int i10, int i11) {
        bArr[i10] = (byte) (i11 >> 24);
        bArr[i10 + 1] = (byte) (i11 >> 16);
        bArr[i10 + 2] = (byte) (i11 >> 8);
        bArr[i10 + 3] = (byte) i11;
    }

    private static void c1(byte[] bArr, int i10, long j10) {
        bArr[i10] = (byte) (j10 >> 56);
        bArr[i10 + 1] = (byte) (j10 >> 48);
        bArr[i10 + 2] = (byte) (j10 >> 40);
        bArr[i10 + 3] = (byte) (j10 >> 32);
        bArr[i10 + 4] = (byte) (j10 >> 24);
        bArr[i10 + 5] = (byte) (j10 >> 16);
        bArr[i10 + 6] = (byte) (j10 >> 8);
        bArr[i10 + 7] = (byte) j10;
    }

    private static RandomAccessFile o0(File file) {
        return new RandomAccessFile(file, "rwd");
    }

    static RandomAccessFile s(File file, boolean z10) {
        if (!file.exists()) {
            File file2 = new File(file.getPath() + ".tmp");
            RandomAccessFile o02 = o0(file2);
            try {
                o02.setLength(4096L);
                o02.seek(0L);
                if (z10) {
                    o02.writeInt(Base64Utils.IO_BUFFER_SIZE);
                } else {
                    o02.writeInt(-2147483647);
                    o02.writeLong(4096L);
                }
                o02.close();
                if (!file2.renameTo(file)) {
                    throw new IOException("Rename failed!");
                }
            } catch (Throwable th) {
                o02.close();
                throw th;
            }
        }
        return o0(file);
    }

    private static int t0(byte[] bArr, int i10) {
        return ((bArr[i10] & ForkServer.ERROR) << 24) + ((bArr[i10 + 1] & ForkServer.ERROR) << 16) + ((bArr[i10 + 2] & ForkServer.ERROR) << 8) + (bArr[i10 + 3] & ForkServer.ERROR);
    }

    public void T0() {
        U0(1);
    }

    public void U0(int i10) {
        if (i10 >= 0) {
            if (i10 == 0) {
                return;
            }
            if (i10 == this.f25440f) {
                clear();
                return;
            } else if (!isEmpty()) {
                if (i10 <= this.f25440f) {
                    b bVar = this.f25441g;
                    long j10 = bVar.f25451a;
                    int i11 = bVar.f25452b;
                    long j11 = 0;
                    int i12 = 0;
                    long j12 = j10;
                    while (i12 < i10) {
                        j11 += i11 + 4;
                        long Z0 = Z0(j12 + 4 + i11);
                        W0(Z0, this.f25443i, 0, 4);
                        i11 = t0(this.f25443i, 0);
                        i12++;
                        j12 = Z0;
                    }
                    a1(this.f25439e, this.f25440f - i10, j12, this.f25442h.f25451a);
                    this.f25440f -= i10;
                    this.f25444j++;
                    this.f25441g = new b(j12, i11);
                    if (this.f25445k) {
                        V0(j10, j11);
                        return;
                    }
                    return;
                }
                throw new IllegalArgumentException("Cannot remove more elements (" + i10 + ") than present in queue (" + this.f25440f + ").");
            } else {
                throw new NoSuchElementException();
            }
        }
        throw new IllegalArgumentException("Cannot remove negative (" + i10 + ") number of elements.");
    }

    void W0(long j10, byte[] bArr, int i10, int i11) {
        long Z0 = Z0(j10);
        long j11 = this.f25439e;
        if (i11 + Z0 <= j11) {
            this.f25435a.seek(Z0);
            this.f25435a.readFully(bArr, i10, i11);
            return;
        }
        int i12 = (int) (j11 - Z0);
        this.f25435a.seek(Z0);
        this.f25435a.readFully(bArr, i10, i12);
        this.f25435a.seek(this.f25438d);
        this.f25435a.readFully(bArr, i10 + i12, i11 - i12);
    }

    long Z0(long j10) {
        long j11 = this.f25439e;
        if (j10 >= j11) {
            return (this.f25438d + j10) - j11;
        }
        return j10;
    }

    public void clear() {
        if (!this.f25446l) {
            a1(4096L, 0, 0L, 0L);
            if (this.f25445k) {
                this.f25435a.seek(this.f25438d);
                this.f25435a.write(f25434m, 0, 4096 - this.f25438d);
            }
            this.f25440f = 0;
            b bVar = b.f25450c;
            this.f25441g = bVar;
            this.f25442h = bVar;
            if (this.f25439e > 4096) {
                Y0(4096L);
            }
            this.f25439e = 4096L;
            this.f25444j++;
            return;
        }
        throw new IllegalStateException("closed");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f25446l = true;
        this.f25435a.close();
    }

    public boolean isEmpty() {
        if (this.f25440f == 0) {
            return true;
        }
        return false;
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return new c();
    }

    b q0(long j10) {
        if (j10 == 0) {
            return b.f25450c;
        }
        W0(j10, this.f25443i, 0, 4);
        return new b(j10, t0(this.f25443i, 0));
    }

    public String toString() {
        return "QueueFile{file=" + this.f25436b + ", zero=" + this.f25445k + ", versioned=" + this.f25437c + ", length=" + this.f25439e + ", size=" + this.f25440f + ", first=" + this.f25441g + ", last=" + this.f25442h + '}';
    }

    static Throwable g(Throwable th) {
        throw th;
    }
}
