package m3;

import g3.l;
import org.apache.tika.fork.ForkServer;
/* loaded from: classes.dex */
final class g {

    /* renamed from: d  reason: collision with root package name */
    private static final long[] f25672d = {128, 64, 32, 16, 8, 4, 2, 1};

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f25673a = new byte[8];

    /* renamed from: b  reason: collision with root package name */
    private int f25674b;

    /* renamed from: c  reason: collision with root package name */
    private int f25675c;

    public static long a(byte[] bArr, int i10, boolean z10) {
        long j10 = bArr[0] & 255;
        if (z10) {
            j10 &= ~f25672d[i10 - 1];
        }
        for (int i11 = 1; i11 < i10; i11++) {
            j10 = (j10 << 8) | (bArr[i11] & 255);
        }
        return j10;
    }

    public static int c(int i10) {
        int i11 = 0;
        while (true) {
            long[] jArr = f25672d;
            if (i11 < jArr.length) {
                if ((jArr[i11] & i10) != 0) {
                    return i11 + 1;
                }
                i11++;
            } else {
                return -1;
            }
        }
    }

    public int b() {
        return this.f25675c;
    }

    public long d(l lVar, boolean z10, boolean z11, int i10) {
        if (this.f25674b == 0) {
            if (!lVar.e(this.f25673a, 0, 1, z10)) {
                return -1L;
            }
            int c10 = c(this.f25673a[0] & ForkServer.ERROR);
            this.f25675c = c10;
            if (c10 != -1) {
                this.f25674b = 1;
            } else {
                throw new IllegalStateException("No valid varint length mask found");
            }
        }
        int i11 = this.f25675c;
        if (i11 > i10) {
            this.f25674b = 0;
            return -2L;
        }
        if (i11 != 1) {
            lVar.readFully(this.f25673a, 1, i11 - 1);
        }
        this.f25674b = 0;
        return a(this.f25673a, this.f25675c, z11);
    }

    public void e() {
        this.f25674b = 0;
        this.f25675c = 0;
    }
}
