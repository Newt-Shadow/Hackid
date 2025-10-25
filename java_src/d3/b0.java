package d3;

import d3.j;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
final class b0 extends a0 {

    /* renamed from: i  reason: collision with root package name */
    private int[] f14439i;

    /* renamed from: j  reason: collision with root package name */
    private int[] f14440j;

    @Override // d3.j
    public void b(ByteBuffer byteBuffer) {
        int[] iArr = (int[]) y4.a.e(this.f14440j);
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        ByteBuffer k10 = k(((limit - position) / this.f14419b.f14547d) * this.f14420c.f14547d);
        while (position < limit) {
            for (int i10 : iArr) {
                k10.putShort(byteBuffer.getShort((i10 * 2) + position));
            }
            position += this.f14419b.f14547d;
        }
        byteBuffer.position(limit);
        k10.flip();
    }

    @Override // d3.a0
    public j.a g(j.a aVar) {
        boolean z10;
        boolean z11;
        int[] iArr = this.f14439i;
        if (iArr == null) {
            return j.a.f14543e;
        }
        if (aVar.f14546c == 2) {
            if (aVar.f14545b != iArr.length) {
                z10 = true;
            } else {
                z10 = false;
            }
            for (int i10 = 0; i10 < iArr.length; i10++) {
                int i11 = iArr[i10];
                if (i11 < aVar.f14545b) {
                    if (i11 != i10) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    z10 |= z11;
                } else {
                    throw new j.b(aVar);
                }
            }
            if (z10) {
                return new j.a(aVar.f14544a, iArr.length, 2);
            }
            return j.a.f14543e;
        }
        throw new j.b(aVar);
    }

    @Override // d3.a0
    protected void h() {
        this.f14440j = this.f14439i;
    }

    @Override // d3.a0
    protected void j() {
        this.f14440j = null;
        this.f14439i = null;
    }

    public void l(int[] iArr) {
        this.f14439i = iArr;
    }
}
