package s7;

import io.appmetrica.analytics.coreutils.internal.io.Base64Utils;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.util.NoSuchElementException;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.tika.fork.ForkServer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class h implements Closeable {

    /* renamed from: g  reason: collision with root package name */
    private static final Logger f29495g = Logger.getLogger(h.class.getName());

    /* renamed from: a  reason: collision with root package name */
    private final RandomAccessFile f29496a;

    /* renamed from: b  reason: collision with root package name */
    int f29497b;

    /* renamed from: c  reason: collision with root package name */
    private int f29498c;

    /* renamed from: d  reason: collision with root package name */
    private b f29499d;

    /* renamed from: e  reason: collision with root package name */
    private b f29500e;

    /* renamed from: f  reason: collision with root package name */
    private final byte[] f29501f = new byte[16];

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements d {

        /* renamed from: a  reason: collision with root package name */
        boolean f29502a = true;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ StringBuilder f29503b;

        a(StringBuilder sb2) {
            this.f29503b = sb2;
        }

        @Override // s7.h.d
        public void a(InputStream inputStream, int i10) {
            if (this.f29502a) {
                this.f29502a = false;
            } else {
                this.f29503b.append(", ");
            }
            this.f29503b.append(i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: c  reason: collision with root package name */
        static final b f29505c = new b(0, 0);

        /* renamed from: a  reason: collision with root package name */
        final int f29506a;

        /* renamed from: b  reason: collision with root package name */
        final int f29507b;

        b(int i10, int i11) {
            this.f29506a = i10;
            this.f29507b = i11;
        }

        public String toString() {
            return getClass().getSimpleName() + "[position = " + this.f29506a + ", length = " + this.f29507b + "]";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public final class c extends InputStream {

        /* renamed from: a  reason: collision with root package name */
        private int f29508a;

        /* renamed from: b  reason: collision with root package name */
        private int f29509b;

        /* synthetic */ c(h hVar, b bVar, a aVar) {
            this(bVar);
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i10, int i11) {
            h.u(bArr, "buffer");
            if ((i10 | i11) >= 0 && i11 <= bArr.length - i10) {
                int i12 = this.f29509b;
                if (i12 > 0) {
                    if (i11 > i12) {
                        i11 = i12;
                    }
                    h.this.P(this.f29508a, bArr, i10, i11);
                    this.f29508a = h.this.k0(this.f29508a + i11);
                    this.f29509b -= i11;
                    return i11;
                }
                return -1;
            }
            throw new ArrayIndexOutOfBoundsException();
        }

        private c(b bVar) {
            this.f29508a = h.this.k0(bVar.f29506a + 4);
            this.f29509b = bVar.f29507b;
        }

        @Override // java.io.InputStream
        public int read() {
            if (this.f29509b == 0) {
                return -1;
            }
            h.this.f29496a.seek(this.f29508a);
            int read = h.this.f29496a.read();
            this.f29508a = h.this.k0(this.f29508a + 1);
            this.f29509b--;
            return read;
        }
    }

    /* loaded from: classes.dex */
    public interface d {
        void a(InputStream inputStream, int i10);
    }

    public h(File file) {
        if (!file.exists()) {
            q(file);
        }
        this.f29496a = v(file);
        x();
    }

    private int E() {
        return this.f29497b - d0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void P(int i10, byte[] bArr, int i11, int i12) {
        int k02 = k0(i10);
        int i13 = k02 + i12;
        int i14 = this.f29497b;
        if (i13 <= i14) {
            this.f29496a.seek(k02);
            this.f29496a.readFully(bArr, i11, i12);
            return;
        }
        int i15 = i14 - k02;
        this.f29496a.seek(k02);
        this.f29496a.readFully(bArr, i11, i15);
        this.f29496a.seek(16L);
        this.f29496a.readFully(bArr, i11 + i15, i12 - i15);
    }

    private void W(int i10, byte[] bArr, int i11, int i12) {
        int k02 = k0(i10);
        int i13 = k02 + i12;
        int i14 = this.f29497b;
        if (i13 <= i14) {
            this.f29496a.seek(k02);
            this.f29496a.write(bArr, i11, i12);
            return;
        }
        int i15 = i14 - k02;
        this.f29496a.seek(k02);
        this.f29496a.write(bArr, i11, i15);
        this.f29496a.seek(16L);
        this.f29496a.write(bArr, i11 + i15, i12 - i15);
    }

    private void X(int i10) {
        this.f29496a.setLength(i10);
        this.f29496a.getChannel().force(true);
    }

    private void j(int i10) {
        int i11 = i10 + 4;
        int E = E();
        if (E >= i11) {
            return;
        }
        int i12 = this.f29497b;
        do {
            E += i12;
            i12 <<= 1;
        } while (E < i11);
        X(i12);
        b bVar = this.f29500e;
        int k02 = k0(bVar.f29506a + 4 + bVar.f29507b);
        if (k02 < this.f29499d.f29506a) {
            FileChannel channel = this.f29496a.getChannel();
            channel.position(this.f29497b);
            long j10 = k02 - 4;
            if (channel.transferTo(16L, j10, channel) != j10) {
                throw new AssertionError("Copied insufficient number of bytes!");
            }
        }
        int i13 = this.f29500e.f29506a;
        int i14 = this.f29499d.f29506a;
        if (i13 < i14) {
            int i15 = (this.f29497b + i13) - 16;
            o0(i12, this.f29498c, i14, i15);
            this.f29500e = new b(i15, this.f29500e.f29507b);
        } else {
            o0(i12, this.f29498c, i14, i13);
        }
        this.f29497b = i12;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int k0(int i10) {
        int i11 = this.f29497b;
        if (i10 >= i11) {
            return (i10 + 16) - i11;
        }
        return i10;
    }

    private void o0(int i10, int i11, int i12, int i13) {
        t0(this.f29501f, i10, i11, i12, i13);
        this.f29496a.seek(0L);
        this.f29496a.write(this.f29501f);
    }

    private static void q(File file) {
        File file2 = new File(file.getPath() + ".tmp");
        RandomAccessFile v10 = v(file2);
        try {
            v10.setLength(4096L);
            v10.seek(0L);
            byte[] bArr = new byte[16];
            t0(bArr, Base64Utils.IO_BUFFER_SIZE, 0, 0, 0);
            v10.write(bArr);
            v10.close();
            if (file2.renameTo(file)) {
                return;
            }
            throw new IOException("Rename failed!");
        } catch (Throwable th) {
            v10.close();
            throw th;
        }
    }

    private static void q0(byte[] bArr, int i10, int i11) {
        bArr[i10] = (byte) (i11 >> 24);
        bArr[i10 + 1] = (byte) (i11 >> 16);
        bArr[i10 + 2] = (byte) (i11 >> 8);
        bArr[i10 + 3] = (byte) i11;
    }

    private static void t0(byte[] bArr, int... iArr) {
        int i10 = 0;
        for (int i11 : iArr) {
            q0(bArr, i10, i11);
            i10 += 4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object u(Object obj, String str) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException(str);
    }

    private static RandomAccessFile v(File file) {
        return new RandomAccessFile(file, "rwd");
    }

    private b w(int i10) {
        if (i10 == 0) {
            return b.f29505c;
        }
        this.f29496a.seek(i10);
        return new b(i10, this.f29496a.readInt());
    }

    private void x() {
        this.f29496a.seek(0L);
        this.f29496a.readFully(this.f29501f);
        int z10 = z(this.f29501f, 0);
        this.f29497b = z10;
        if (z10 <= this.f29496a.length()) {
            this.f29498c = z(this.f29501f, 4);
            int z11 = z(this.f29501f, 8);
            int z12 = z(this.f29501f, 12);
            this.f29499d = w(z11);
            this.f29500e = w(z12);
            return;
        }
        throw new IOException("File is truncated. Expected length: " + this.f29497b + ", Actual length: " + this.f29496a.length());
    }

    private static int z(byte[] bArr, int i10) {
        return ((bArr[i10] & ForkServer.ERROR) << 24) + ((bArr[i10 + 1] & ForkServer.ERROR) << 16) + ((bArr[i10 + 2] & ForkServer.ERROR) << 8) + (bArr[i10 + 3] & ForkServer.ERROR);
    }

    public synchronized void H() {
        if (!s()) {
            if (this.f29498c == 1) {
                h();
            } else {
                b bVar = this.f29499d;
                int k02 = k0(bVar.f29506a + 4 + bVar.f29507b);
                P(k02, this.f29501f, 0, 4);
                int z10 = z(this.f29501f, 0);
                o0(this.f29497b, this.f29498c - 1, k02, this.f29500e.f29506a);
                this.f29498c--;
                this.f29499d = new b(k02, z10);
            }
        } else {
            throw new NoSuchElementException();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        this.f29496a.close();
    }

    public int d0() {
        if (this.f29498c == 0) {
            return 16;
        }
        b bVar = this.f29500e;
        int i10 = bVar.f29506a;
        int i11 = this.f29499d.f29506a;
        if (i10 >= i11) {
            return (i10 - i11) + 4 + bVar.f29507b + 16;
        }
        return (((i10 + 4) + bVar.f29507b) + this.f29497b) - i11;
    }

    public void f(byte[] bArr) {
        g(bArr, 0, bArr.length);
    }

    public synchronized void g(byte[] bArr, int i10, int i11) {
        int k02;
        int i12;
        u(bArr, "buffer");
        if ((i10 | i11) >= 0 && i11 <= bArr.length - i10) {
            j(i11);
            boolean s10 = s();
            if (s10) {
                k02 = 16;
            } else {
                b bVar = this.f29500e;
                k02 = k0(bVar.f29506a + 4 + bVar.f29507b);
            }
            b bVar2 = new b(k02, i11);
            q0(this.f29501f, 0, i11);
            W(bVar2.f29506a, this.f29501f, 0, 4);
            W(bVar2.f29506a + 4, bArr, i10, i11);
            if (s10) {
                i12 = bVar2.f29506a;
            } else {
                i12 = this.f29499d.f29506a;
            }
            o0(this.f29497b, this.f29498c + 1, i12, bVar2.f29506a);
            this.f29500e = bVar2;
            this.f29498c++;
            if (s10) {
                this.f29499d = bVar2;
            }
        } else {
            throw new IndexOutOfBoundsException();
        }
    }

    public synchronized void h() {
        o0(Base64Utils.IO_BUFFER_SIZE, 0, 0, 0);
        this.f29498c = 0;
        b bVar = b.f29505c;
        this.f29499d = bVar;
        this.f29500e = bVar;
        if (this.f29497b > 4096) {
            X(Base64Utils.IO_BUFFER_SIZE);
        }
        this.f29497b = Base64Utils.IO_BUFFER_SIZE;
    }

    public synchronized void k(d dVar) {
        int i10 = this.f29499d.f29506a;
        for (int i11 = 0; i11 < this.f29498c; i11++) {
            b w10 = w(i10);
            dVar.a(new c(this, w10, null), w10.f29507b);
            i10 = k0(w10.f29506a + 4 + w10.f29507b);
        }
    }

    public synchronized boolean s() {
        boolean z10;
        if (this.f29498c == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        return z10;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(getClass().getSimpleName());
        sb2.append('[');
        sb2.append("fileLength=");
        sb2.append(this.f29497b);
        sb2.append(", size=");
        sb2.append(this.f29498c);
        sb2.append(", first=");
        sb2.append(this.f29499d);
        sb2.append(", last=");
        sb2.append(this.f29500e);
        sb2.append(", element lengths=[");
        try {
            k(new a(sb2));
        } catch (IOException e10) {
            f29495g.log(Level.WARNING, "read error", (Throwable) e10);
        }
        sb2.append("]]");
        return sb2.toString();
    }
}
