package f4;

import b3.x1;
import java.util.Arrays;
import y4.q0;
/* loaded from: classes.dex */
public abstract class l extends f {

    /* renamed from: j  reason: collision with root package name */
    private byte[] f15823j;

    /* renamed from: k  reason: collision with root package name */
    private volatile boolean f15824k;

    public l(x4.j jVar, x4.n nVar, int i10, x1 x1Var, int i11, Object obj, byte[] bArr) {
        super(jVar, nVar, i10, x1Var, i11, obj, -9223372036854775807L, -9223372036854775807L);
        l lVar;
        byte[] bArr2;
        if (bArr == null) {
            bArr2 = q0.f32951f;
            lVar = this;
        } else {
            lVar = this;
            bArr2 = bArr;
        }
        lVar.f15823j = bArr2;
    }

    private void i(int i10) {
        byte[] bArr = this.f15823j;
        if (bArr.length < i10 + 16384) {
            this.f15823j = Arrays.copyOf(bArr, bArr.length + 16384);
        }
    }

    @Override // x4.e0.e
    public final void a() {
        try {
            this.f15786i.i(this.f15779b);
            int i10 = 0;
            int i11 = 0;
            while (i10 != -1 && !this.f15824k) {
                i(i11);
                i10 = this.f15786i.read(this.f15823j, i11, 16384);
                if (i10 != -1) {
                    i11 += i10;
                }
            }
            if (!this.f15824k) {
                g(this.f15823j, i11);
            }
        } finally {
            x4.m.a(this.f15786i);
        }
    }

    @Override // x4.e0.e
    public final void c() {
        this.f15824k = true;
    }

    protected abstract void g(byte[] bArr, int i10);

    public byte[] h() {
        return this.f15823j;
    }
}
