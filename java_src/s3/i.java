package s3;

import b3.x1;
import d3.t0;
import java.nio.ByteBuffer;
import org.apache.tika.fork.ForkServer;
/* loaded from: classes.dex */
final class i {

    /* renamed from: a  reason: collision with root package name */
    private long f29339a;

    /* renamed from: b  reason: collision with root package name */
    private long f29340b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f29341c;

    private long a(long j10) {
        return this.f29339a + Math.max(0L, ((this.f29340b - 529) * 1000000) / j10);
    }

    public long b(x1 x1Var) {
        return a(x1Var.f4528z);
    }

    public void c() {
        this.f29339a = 0L;
        this.f29340b = 0L;
        this.f29341c = false;
    }

    public long d(x1 x1Var, e3.g gVar) {
        if (this.f29340b == 0) {
            this.f29339a = gVar.f15291e;
        }
        if (this.f29341c) {
            return gVar.f15291e;
        }
        ByteBuffer byteBuffer = (ByteBuffer) y4.a.e(gVar.f15289c);
        int i10 = 0;
        for (int i11 = 0; i11 < 4; i11++) {
            i10 = (i10 << 8) | (byteBuffer.get(i11) & ForkServer.ERROR);
        }
        int m10 = t0.m(i10);
        if (m10 == -1) {
            this.f29341c = true;
            this.f29340b = 0L;
            this.f29339a = gVar.f15291e;
            y4.r.i("C2Mp3TimestampTracker", "MPEG audio header is invalid.");
            return gVar.f15291e;
        }
        long a10 = a(x1Var.f4528z);
        this.f29340b += m10;
        return a10;
    }
}
