package nb;

import java.security.SecureRandom;
import java.util.Random;
import java.util.UUID;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import org.apache.tika.fork.ForkServer;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final a f26549a = new a();

    /* renamed from: b  reason: collision with root package name */
    private static long f26550b = -1;

    /* renamed from: c  reason: collision with root package name */
    private static final byte[] f26551c = new byte[10];

    /* renamed from: d  reason: collision with root package name */
    private static final Random f26552d = new SecureRandom();

    /* renamed from: e  reason: collision with root package name */
    private static final Lock f26553e = new ReentrantLock();

    private a() {
    }

    private final UUID a(long j10) {
        boolean z10;
        f26553e.lock();
        try {
            if (j10 == f26550b) {
                boolean z11 = true;
                for (int i10 = 9; -1 < i10; i10--) {
                    if (z11) {
                        byte[] bArr = f26551c;
                        byte b10 = bArr[i10];
                        byte b11 = (byte) (b10 + 1);
                        if (b10 == -1) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        bArr[i10] = b11;
                        z11 = z10;
                    }
                }
                if (!(true ^ z11)) {
                    throw new IllegalStateException("overflow on same millisecond".toString());
                }
            } else {
                f26550b = j10;
                f26552d.nextBytes(f26551c);
            }
            byte[] bArr2 = f26551c;
            return b((j10 << 16) | g(bArr2, 0), f(bArr2, 2));
        } finally {
            f26553e.unlock();
        }
    }

    private final UUID b(long j10, long j11) {
        return new UUID((j10 & (-61441)) | 28672, ((j11 << 2) >>> 2) | Long.MIN_VALUE);
    }

    private final long e(byte[] bArr, int i10) {
        int i11 = i10 + 1;
        int i12 = i11 + 1;
        return (bArr[i10] << 24) + ((bArr[i11] & ForkServer.ERROR) << 16) + ((bArr[i12] & ForkServer.ERROR) << 8) + (bArr[i12 + 1] & ForkServer.ERROR);
    }

    private final long f(byte[] bArr, int i10) {
        return (e(bArr, i10) << 32) + ((e(bArr, i10 + 4) << 32) >>> 32);
    }

    private final long g(byte[] bArr, int i10) {
        return ((bArr[i10] & ForkServer.ERROR) << 8) + (bArr[i10 + 1] & ForkServer.ERROR);
    }

    public final UUID c() {
        return d(System.currentTimeMillis());
    }

    public final UUID d(long j10) {
        return a(j10);
    }
}
