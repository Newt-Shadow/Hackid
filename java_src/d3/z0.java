package d3;

import d3.j;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
final class z0 extends a0 {

    /* renamed from: i  reason: collision with root package name */
    private int f14709i;

    /* renamed from: j  reason: collision with root package name */
    private int f14710j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f14711k;

    /* renamed from: l  reason: collision with root package name */
    private int f14712l;

    /* renamed from: m  reason: collision with root package name */
    private byte[] f14713m = y4.q0.f32951f;

    /* renamed from: n  reason: collision with root package name */
    private int f14714n;

    /* renamed from: o  reason: collision with root package name */
    private long f14715o;

    @Override // d3.j
    public void b(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int i10 = limit - position;
        if (i10 == 0) {
            return;
        }
        int min = Math.min(i10, this.f14712l);
        this.f14715o += min / this.f14419b.f14547d;
        this.f14712l -= min;
        byteBuffer.position(position + min);
        if (this.f14712l > 0) {
            return;
        }
        int i11 = i10 - min;
        int length = (this.f14714n + i11) - this.f14713m.length;
        ByteBuffer k10 = k(length);
        int q10 = y4.q0.q(length, 0, this.f14714n);
        k10.put(this.f14713m, 0, q10);
        int q11 = y4.q0.q(length - q10, 0, i11);
        byteBuffer.limit(byteBuffer.position() + q11);
        k10.put(byteBuffer);
        byteBuffer.limit(limit);
        int i12 = i11 - q11;
        int i13 = this.f14714n - q10;
        this.f14714n = i13;
        byte[] bArr = this.f14713m;
        System.arraycopy(bArr, q10, bArr, 0, i13);
        byteBuffer.get(this.f14713m, this.f14714n, i12);
        this.f14714n += i12;
        k10.flip();
    }

    @Override // d3.a0, d3.j
    public boolean d() {
        if (super.d() && this.f14714n == 0) {
            return true;
        }
        return false;
    }

    @Override // d3.a0
    public j.a g(j.a aVar) {
        if (aVar.f14546c == 2) {
            this.f14711k = true;
            if (this.f14709i == 0 && this.f14710j == 0) {
                return j.a.f14543e;
            }
            return aVar;
        }
        throw new j.b(aVar);
    }

    @Override // d3.a0, d3.j
    public ByteBuffer getOutput() {
        int i10;
        if (super.d() && (i10 = this.f14714n) > 0) {
            k(i10).put(this.f14713m, 0, this.f14714n).flip();
            this.f14714n = 0;
        }
        return super.getOutput();
    }

    @Override // d3.a0
    protected void h() {
        if (this.f14711k) {
            this.f14711k = false;
            int i10 = this.f14710j;
            int i11 = this.f14419b.f14547d;
            this.f14713m = new byte[i10 * i11];
            this.f14712l = this.f14709i * i11;
        }
        this.f14714n = 0;
    }

    @Override // d3.a0
    protected void i() {
        int i10;
        if (this.f14711k) {
            if (this.f14714n > 0) {
                this.f14715o += i10 / this.f14419b.f14547d;
            }
            this.f14714n = 0;
        }
    }

    @Override // d3.a0
    protected void j() {
        this.f14713m = y4.q0.f32951f;
    }

    public long l() {
        return this.f14715o;
    }

    public void m() {
        this.f14715o = 0L;
    }

    public void n(int i10, int i11) {
        this.f14709i = i10;
        this.f14710j = i11;
    }
}
