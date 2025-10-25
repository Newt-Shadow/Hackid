package d3;

import d3.j;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public final class w0 extends a0 {

    /* renamed from: i  reason: collision with root package name */
    private final long f14621i;

    /* renamed from: j  reason: collision with root package name */
    private final long f14622j;

    /* renamed from: k  reason: collision with root package name */
    private final short f14623k;

    /* renamed from: l  reason: collision with root package name */
    private int f14624l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f14625m;

    /* renamed from: n  reason: collision with root package name */
    private byte[] f14626n;

    /* renamed from: o  reason: collision with root package name */
    private byte[] f14627o;

    /* renamed from: p  reason: collision with root package name */
    private int f14628p;

    /* renamed from: q  reason: collision with root package name */
    private int f14629q;

    /* renamed from: r  reason: collision with root package name */
    private int f14630r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f14631s;

    /* renamed from: t  reason: collision with root package name */
    private long f14632t;

    public w0() {
        this(150000L, 20000L, (short) 1024);
    }

    private int l(long j10) {
        return (int) ((j10 * this.f14419b.f14544a) / 1000000);
    }

    private int m(ByteBuffer byteBuffer) {
        int limit = byteBuffer.limit();
        while (true) {
            limit -= 2;
            if (limit >= byteBuffer.position()) {
                if (Math.abs((int) byteBuffer.getShort(limit)) > this.f14623k) {
                    int i10 = this.f14624l;
                    return ((limit / i10) * i10) + i10;
                }
            } else {
                return byteBuffer.position();
            }
        }
    }

    private int n(ByteBuffer byteBuffer) {
        for (int position = byteBuffer.position(); position < byteBuffer.limit(); position += 2) {
            if (Math.abs((int) byteBuffer.getShort(position)) > this.f14623k) {
                int i10 = this.f14624l;
                return i10 * (position / i10);
            }
        }
        return byteBuffer.limit();
    }

    private void p(ByteBuffer byteBuffer) {
        int remaining = byteBuffer.remaining();
        k(remaining).put(byteBuffer).flip();
        if (remaining > 0) {
            this.f14631s = true;
        }
    }

    private void q(byte[] bArr, int i10) {
        k(i10).put(bArr, 0, i10).flip();
        if (i10 > 0) {
            this.f14631s = true;
        }
    }

    private void r(ByteBuffer byteBuffer) {
        int limit = byteBuffer.limit();
        int n10 = n(byteBuffer);
        int position = n10 - byteBuffer.position();
        byte[] bArr = this.f14626n;
        int length = bArr.length;
        int i10 = this.f14629q;
        int i11 = length - i10;
        if (n10 < limit && position < i11) {
            q(bArr, i10);
            this.f14629q = 0;
            this.f14628p = 0;
            return;
        }
        int min = Math.min(position, i11);
        byteBuffer.limit(byteBuffer.position() + min);
        byteBuffer.get(this.f14626n, this.f14629q, min);
        int i12 = this.f14629q + min;
        this.f14629q = i12;
        byte[] bArr2 = this.f14626n;
        if (i12 == bArr2.length) {
            if (this.f14631s) {
                q(bArr2, this.f14630r);
                this.f14632t += (this.f14629q - (this.f14630r * 2)) / this.f14624l;
            } else {
                this.f14632t += (i12 - this.f14630r) / this.f14624l;
            }
            v(byteBuffer, this.f14626n, this.f14629q);
            this.f14629q = 0;
            this.f14628p = 2;
        }
        byteBuffer.limit(limit);
    }

    private void s(ByteBuffer byteBuffer) {
        int limit = byteBuffer.limit();
        byteBuffer.limit(Math.min(limit, byteBuffer.position() + this.f14626n.length));
        int m10 = m(byteBuffer);
        if (m10 == byteBuffer.position()) {
            this.f14628p = 1;
        } else {
            byteBuffer.limit(m10);
            p(byteBuffer);
        }
        byteBuffer.limit(limit);
    }

    private void t(ByteBuffer byteBuffer) {
        int limit = byteBuffer.limit();
        int n10 = n(byteBuffer);
        byteBuffer.limit(n10);
        this.f14632t += byteBuffer.remaining() / this.f14624l;
        v(byteBuffer, this.f14627o, this.f14630r);
        if (n10 < limit) {
            q(this.f14627o, this.f14630r);
            this.f14628p = 0;
            byteBuffer.limit(limit);
        }
    }

    private void v(ByteBuffer byteBuffer, byte[] bArr, int i10) {
        int min = Math.min(byteBuffer.remaining(), this.f14630r);
        int i11 = this.f14630r - min;
        System.arraycopy(bArr, i10 - i11, this.f14627o, 0, i11);
        byteBuffer.position(byteBuffer.limit() - min);
        byteBuffer.get(this.f14627o, i11, min);
    }

    @Override // d3.j
    public void b(ByteBuffer byteBuffer) {
        while (byteBuffer.hasRemaining() && !f()) {
            int i10 = this.f14628p;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 == 2) {
                        t(byteBuffer);
                    } else {
                        throw new IllegalStateException();
                    }
                } else {
                    r(byteBuffer);
                }
            } else {
                s(byteBuffer);
            }
        }
    }

    @Override // d3.a0
    public j.a g(j.a aVar) {
        if (aVar.f14546c == 2) {
            if (!this.f14625m) {
                return j.a.f14543e;
            }
            return aVar;
        }
        throw new j.b(aVar);
    }

    @Override // d3.a0
    protected void h() {
        if (this.f14625m) {
            this.f14624l = this.f14419b.f14547d;
            int l10 = l(this.f14621i) * this.f14624l;
            if (this.f14626n.length != l10) {
                this.f14626n = new byte[l10];
            }
            int l11 = l(this.f14622j) * this.f14624l;
            this.f14630r = l11;
            if (this.f14627o.length != l11) {
                this.f14627o = new byte[l11];
            }
        }
        this.f14628p = 0;
        this.f14632t = 0L;
        this.f14629q = 0;
        this.f14631s = false;
    }

    @Override // d3.a0
    protected void i() {
        int i10 = this.f14629q;
        if (i10 > 0) {
            q(this.f14626n, i10);
        }
        if (!this.f14631s) {
            this.f14632t += this.f14630r / this.f14624l;
        }
    }

    @Override // d3.a0, d3.j
    public boolean isActive() {
        return this.f14625m;
    }

    @Override // d3.a0
    protected void j() {
        this.f14625m = false;
        this.f14630r = 0;
        byte[] bArr = y4.q0.f32951f;
        this.f14626n = bArr;
        this.f14627o = bArr;
    }

    public long o() {
        return this.f14632t;
    }

    public void u(boolean z10) {
        this.f14625m = z10;
    }

    public w0(long j10, long j11, short s10) {
        y4.a.a(j11 <= j10);
        this.f14621i = j10;
        this.f14622j = j11;
        this.f14623k = s10;
        byte[] bArr = y4.q0.f32951f;
        this.f14626n = bArr;
        this.f14627o = bArr;
    }
}
