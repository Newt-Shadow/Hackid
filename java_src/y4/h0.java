package y4;

import android.os.SystemClock;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.util.Arrays;
import java.util.ConcurrentModificationException;
import org.apache.tika.fork.ForkServer;
import x4.e0;
/* loaded from: classes.dex */
public abstract class h0 {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f32888a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private static final Object f32889b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private static boolean f32890c = false;

    /* renamed from: d  reason: collision with root package name */
    private static long f32891d = 0;

    /* renamed from: e  reason: collision with root package name */
    private static String f32892e = "time.android.com";

    /* loaded from: classes.dex */
    public interface b {
        void a(IOException iOException);

        void b();
    }

    /* loaded from: classes.dex */
    private static final class c implements e0.b {

        /* renamed from: a  reason: collision with root package name */
        private final b f32893a;

        public c(b bVar) {
            this.f32893a = bVar;
        }

        @Override // x4.e0.b
        public e0.c h(e0.e eVar, long j10, long j11, IOException iOException, int i10) {
            b bVar = this.f32893a;
            if (bVar != null) {
                bVar.a(iOException);
            }
            return x4.e0.f32303f;
        }

        @Override // x4.e0.b
        public void o(e0.e eVar, long j10, long j11) {
            if (this.f32893a != null) {
                if (!h0.k()) {
                    this.f32893a.a(new IOException(new ConcurrentModificationException()));
                } else {
                    this.f32893a.b();
                }
            }
        }

        @Override // x4.e0.b
        public void s(e0.e eVar, long j10, long j11, boolean z10) {
        }
    }

    /* loaded from: classes.dex */
    private static final class d implements e0.e {
        private d() {
        }

        @Override // x4.e0.e
        public void a() {
            synchronized (h0.f32888a) {
                synchronized (h0.f32889b) {
                    if (h0.f32890c) {
                        return;
                    }
                    long e10 = h0.e();
                    synchronized (h0.f32889b) {
                        long unused = h0.f32891d = e10;
                        boolean unused2 = h0.f32890c = true;
                    }
                }
            }
        }

        @Override // x4.e0.e
        public void c() {
        }
    }

    static /* synthetic */ long e() {
        return l();
    }

    private static void g(byte b10, byte b11, int i10, long j10) {
        if (b10 != 3) {
            if (b11 != 4 && b11 != 5) {
                throw new IOException("SNTP: Untrusted mode: " + ((int) b11));
            } else if (i10 != 0 && i10 <= 15) {
                if (j10 != 0) {
                    return;
                }
                throw new IOException("SNTP: Zero transmitTime");
            } else {
                throw new IOException("SNTP: Untrusted stratum: " + i10);
            }
        }
        throw new IOException("SNTP: Unsynchronized server");
    }

    public static long h() {
        long j10;
        synchronized (f32889b) {
            if (f32890c) {
                j10 = f32891d;
            } else {
                j10 = -9223372036854775807L;
            }
        }
        return j10;
    }

    public static String i() {
        String str;
        synchronized (f32889b) {
            str = f32892e;
        }
        return str;
    }

    public static void j(x4.e0 e0Var, b bVar) {
        if (k()) {
            if (bVar != null) {
                bVar.b();
                return;
            }
            return;
        }
        if (e0Var == null) {
            e0Var = new x4.e0("SntpClient");
        }
        e0Var.n(new d(), new c(bVar), 1);
    }

    public static boolean k() {
        boolean z10;
        synchronized (f32889b) {
            z10 = f32890c;
        }
        return z10;
    }

    private static long l() {
        InetAddress byName = InetAddress.getByName(i());
        DatagramSocket datagramSocket = new DatagramSocket();
        try {
            datagramSocket.setSoTimeout(10000);
            byte[] bArr = new byte[48];
            DatagramPacket datagramPacket = new DatagramPacket(bArr, 48, byName, 123);
            bArr[0] = 27;
            long currentTimeMillis = System.currentTimeMillis();
            long elapsedRealtime = SystemClock.elapsedRealtime();
            o(bArr, 40, currentTimeMillis);
            datagramSocket.send(datagramPacket);
            datagramSocket.receive(new DatagramPacket(bArr, 48));
            long elapsedRealtime2 = SystemClock.elapsedRealtime();
            long j10 = currentTimeMillis + (elapsedRealtime2 - elapsedRealtime);
            byte b10 = bArr[0];
            int i10 = bArr[1] & ForkServer.ERROR;
            long n10 = n(bArr, 24);
            long n11 = n(bArr, 32);
            long n12 = n(bArr, 40);
            g((byte) ((b10 >> 6) & 3), (byte) (b10 & 7), i10, n12);
            long j11 = (j10 + (((n11 - n10) + (n12 - j10)) / 2)) - elapsedRealtime2;
            datagramSocket.close();
            return j11;
        } catch (Throwable th) {
            try {
                datagramSocket.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private static long m(byte[] bArr, int i10) {
        int i11 = bArr[i10];
        int i12 = bArr[i10 + 1];
        int i13 = bArr[i10 + 2];
        int i14 = bArr[i10 + 3];
        if ((i11 & 128) == 128) {
            i11 = (i11 & 127) + 128;
        }
        if ((i12 & 128) == 128) {
            i12 = (i12 & 127) + 128;
        }
        if ((i13 & 128) == 128) {
            i13 = (i13 & 127) + 128;
        }
        if ((i14 & 128) == 128) {
            i14 = (i14 & 127) + 128;
        }
        return (i11 << 24) + (i12 << 16) + (i13 << 8) + i14;
    }

    private static long n(byte[] bArr, int i10) {
        long m10 = m(bArr, i10);
        long m11 = m(bArr, i10 + 4);
        if (m10 == 0 && m11 == 0) {
            return 0L;
        }
        return ((m10 - 2208988800L) * 1000) + ((m11 * 1000) / 4294967296L);
    }

    private static void o(byte[] bArr, int i10, long j10) {
        if (j10 == 0) {
            Arrays.fill(bArr, i10, i10 + 8, (byte) 0);
            return;
        }
        long j11 = j10 / 1000;
        long j12 = j11 + 2208988800L;
        int i11 = i10 + 1;
        bArr[i10] = (byte) (j12 >> 24);
        int i12 = i11 + 1;
        bArr[i11] = (byte) (j12 >> 16);
        int i13 = i12 + 1;
        bArr[i12] = (byte) (j12 >> 8);
        int i14 = i13 + 1;
        bArr[i13] = (byte) (j12 >> 0);
        long j13 = ((j10 - (j11 * 1000)) * 4294967296L) / 1000;
        int i15 = i14 + 1;
        bArr[i14] = (byte) (j13 >> 24);
        int i16 = i15 + 1;
        bArr[i15] = (byte) (j13 >> 16);
        bArr[i16] = (byte) (j13 >> 8);
        bArr[i16 + 1] = (byte) (Math.random() * 255.0d);
    }
}
