package g3;

import java.io.EOFException;
import y3.h;
/* loaded from: classes.dex */
public final class w {

    /* renamed from: a  reason: collision with root package name */
    private final y4.e0 f16246a = new y4.e0(10);

    public t3.a a(l lVar, h.a aVar) {
        t3.a aVar2 = null;
        int i10 = 0;
        while (true) {
            try {
                lVar.p(this.f16246a.e(), 0, 10);
                this.f16246a.T(0);
                if (this.f16246a.J() != 4801587) {
                    break;
                }
                this.f16246a.U(3);
                int F = this.f16246a.F();
                int i11 = F + 10;
                if (aVar2 == null) {
                    byte[] bArr = new byte[i11];
                    System.arraycopy(this.f16246a.e(), 0, bArr, 0, 10);
                    lVar.p(bArr, 10, F);
                    aVar2 = new y3.h(aVar).e(bArr, i11);
                } else {
                    lVar.h(F);
                }
                i10 += i11;
            } catch (EOFException unused) {
            }
        }
        lVar.l();
        lVar.h(i10);
        return aVar2;
    }
}
