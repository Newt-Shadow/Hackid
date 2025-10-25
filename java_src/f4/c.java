package f4;

import d4.l0;
import f4.g;
import g3.b0;
import y4.r;
/* loaded from: classes.dex */
public final class c implements g.b {

    /* renamed from: a  reason: collision with root package name */
    private final int[] f15758a;

    /* renamed from: b  reason: collision with root package name */
    private final l0[] f15759b;

    public c(int[] iArr, l0[] l0VarArr) {
        this.f15758a = iArr;
        this.f15759b = l0VarArr;
    }

    @Override // f4.g.b
    public b0 a(int i10, int i11) {
        int i12 = 0;
        while (true) {
            int[] iArr = this.f15758a;
            if (i12 < iArr.length) {
                if (i11 == iArr[i12]) {
                    return this.f15759b[i12];
                }
                i12++;
            } else {
                r.c("BaseMediaChunkOutput", "Unmatched track of type: " + i11);
                return new g3.j();
            }
        }
    }

    public int[] b() {
        int[] iArr = new int[this.f15759b.length];
        int i10 = 0;
        while (true) {
            l0[] l0VarArr = this.f15759b;
            if (i10 < l0VarArr.length) {
                iArr[i10] = l0VarArr[i10].G();
                i10++;
            } else {
                return iArr;
            }
        }
    }

    public void c(long j10) {
        for (l0 l0Var : this.f15759b) {
            l0Var.a0(j10);
        }
    }
}
