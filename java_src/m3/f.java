package m3;

import g3.l;
import org.apache.tika.fork.ForkServer;
import y4.e0;
/* loaded from: classes.dex */
final class f {

    /* renamed from: a  reason: collision with root package name */
    private final e0 f25670a = new e0(8);

    /* renamed from: b  reason: collision with root package name */
    private int f25671b;

    private long a(l lVar) {
        int i10 = 0;
        lVar.p(this.f25670a.e(), 0, 1);
        int i11 = this.f25670a.e()[0] & ForkServer.ERROR;
        if (i11 == 0) {
            return Long.MIN_VALUE;
        }
        int i12 = 128;
        int i13 = 0;
        while ((i11 & i12) == 0) {
            i12 >>= 1;
            i13++;
        }
        int i14 = i11 & (~i12);
        lVar.p(this.f25670a.e(), 1, i13);
        while (i10 < i13) {
            i10++;
            i14 = (this.f25670a.e()[i10] & ForkServer.ERROR) + (i14 << 8);
        }
        this.f25671b += i13 + 1;
        return i14;
    }

    public boolean b(l lVar) {
        long a10;
        int i10;
        long b10 = lVar.b();
        int i11 = (b10 > (-1L) ? 1 : (b10 == (-1L) ? 0 : -1));
        long j10 = 1024;
        if (i11 != 0 && b10 <= 1024) {
            j10 = b10;
        }
        int i12 = (int) j10;
        lVar.p(this.f25670a.e(), 0, 4);
        long I = this.f25670a.I();
        this.f25671b = 4;
        while (I != 440786851) {
            int i13 = this.f25671b + 1;
            this.f25671b = i13;
            if (i13 == i12) {
                return false;
            }
            lVar.p(this.f25670a.e(), 0, 1);
            I = ((I << 8) & (-256)) | (this.f25670a.e()[0] & ForkServer.ERROR);
        }
        long a11 = a(lVar);
        long j11 = this.f25671b;
        if (a11 == Long.MIN_VALUE) {
            return false;
        }
        if (i11 != 0 && j11 + a11 >= b10) {
            return false;
        }
        while (true) {
            int i14 = this.f25671b;
            long j12 = j11 + a11;
            if (i14 < j12) {
                if (a(lVar) != Long.MIN_VALUE && (a(lVar)) >= 0 && a10 <= 2147483647L) {
                    if (i10 != 0) {
                        int i15 = (int) a10;
                        lVar.h(i15);
                        this.f25671b += i15;
                    }
                }
            } else if (i14 != j12) {
                return false;
            } else {
                return true;
            }
        }
    }
}
