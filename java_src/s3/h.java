package s3;

import java.nio.ByteBuffer;
/* loaded from: classes.dex */
final class h extends e3.g {

    /* renamed from: i  reason: collision with root package name */
    private long f29333i;

    /* renamed from: j  reason: collision with root package name */
    private int f29334j;

    /* renamed from: k  reason: collision with root package name */
    private int f29335k;

    public h() {
        super(2);
        this.f29335k = 32;
    }

    private boolean C(e3.g gVar) {
        ByteBuffer byteBuffer;
        if (!G()) {
            return true;
        }
        if (this.f29334j >= this.f29335k || gVar.p() != p()) {
            return false;
        }
        ByteBuffer byteBuffer2 = gVar.f15289c;
        if (byteBuffer2 == null || (byteBuffer = this.f15289c) == null || byteBuffer.position() + byteBuffer2.remaining() <= 3072000) {
            return true;
        }
        return false;
    }

    public boolean B(e3.g gVar) {
        y4.a.a(!gVar.y());
        y4.a.a(!gVar.o());
        y4.a.a(!gVar.q());
        if (!C(gVar)) {
            return false;
        }
        int i10 = this.f29334j;
        this.f29334j = i10 + 1;
        if (i10 == 0) {
            this.f15291e = gVar.f15291e;
            if (gVar.s()) {
                u(1);
            }
        }
        if (gVar.p()) {
            u(Integer.MIN_VALUE);
        }
        ByteBuffer byteBuffer = gVar.f15289c;
        if (byteBuffer != null) {
            w(byteBuffer.remaining());
            this.f15289c.put(byteBuffer);
        }
        this.f29333i = gVar.f15291e;
        return true;
    }

    public long D() {
        return this.f15291e;
    }

    public long E() {
        return this.f29333i;
    }

    public int F() {
        return this.f29334j;
    }

    public boolean G() {
        if (this.f29334j > 0) {
            return true;
        }
        return false;
    }

    public void H(int i10) {
        boolean z10;
        if (i10 > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        y4.a.a(z10);
        this.f29335k = i10;
    }

    @Override // e3.g, e3.a
    public void l() {
        super.l();
        this.f29334j = 0;
    }
}
