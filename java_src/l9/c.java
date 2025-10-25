package l9;
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final a f25394a;

    public c(a aVar) {
        this.f25394a = aVar;
    }

    private int[] b(b bVar) {
        int d10 = bVar.d();
        if (d10 == 1) {
            return new int[]{bVar.c(1)};
        }
        int[] iArr = new int[d10];
        int i10 = 0;
        for (int i11 = 1; i11 < this.f25394a.f() && i10 < d10; i11++) {
            if (bVar.b(i11) == 0) {
                iArr[i10] = this.f25394a.h(i11);
                i10++;
            }
        }
        if (i10 == d10) {
            return iArr;
        }
        throw new d("Error locator degree does not match number of roots");
    }

    private int[] c(b bVar, int[] iArr) {
        int i10;
        int length = iArr.length;
        int[] iArr2 = new int[length];
        for (int i11 = 0; i11 < length; i11++) {
            int h10 = this.f25394a.h(iArr[i11]);
            int i12 = 1;
            for (int i13 = 0; i13 < length; i13++) {
                if (i11 != i13) {
                    int j10 = this.f25394a.j(iArr[i13], h10);
                    if ((j10 & 1) == 0) {
                        i10 = j10 | 1;
                    } else {
                        i10 = j10 & (-2);
                    }
                    i12 = this.f25394a.j(i12, i10);
                }
            }
            iArr2[i11] = this.f25394a.j(bVar.b(h10), this.f25394a.h(i12));
            if (this.f25394a.d() != 0) {
                iArr2[i11] = this.f25394a.j(iArr2[i11], h10);
            }
        }
        return iArr2;
    }

    private b[] d(b bVar, b bVar2, int i10) {
        if (bVar.d() < bVar2.d()) {
            bVar2 = bVar;
            bVar = bVar2;
        }
        b g10 = this.f25394a.g();
        b e10 = this.f25394a.e();
        do {
            b bVar3 = bVar2;
            bVar2 = bVar;
            bVar = bVar3;
            b bVar4 = e10;
            b bVar5 = g10;
            g10 = bVar4;
            if (bVar.d() * 2 >= i10) {
                if (!bVar.e()) {
                    b g11 = this.f25394a.g();
                    int h10 = this.f25394a.h(bVar.c(bVar.d()));
                    while (bVar2.d() >= bVar.d() && !bVar2.e()) {
                        int d10 = bVar2.d() - bVar.d();
                        int j10 = this.f25394a.j(bVar2.c(bVar2.d()), h10);
                        g11 = g11.a(this.f25394a.b(d10, j10));
                        bVar2 = bVar2.a(bVar.h(d10, j10));
                    }
                    e10 = g11.g(g10).a(bVar5);
                } else {
                    throw new d("r_{i-1} was zero");
                }
            } else {
                int c10 = g10.c(0);
                if (c10 != 0) {
                    int h11 = this.f25394a.h(c10);
                    return new b[]{g10.f(h11), bVar.f(h11)};
                }
                throw new d("sigmaTilde(0) was zero");
            }
        } while (bVar2.d() < bVar.d());
        throw new IllegalStateException("Division algorithm failed to reduce polynomial? r: " + bVar2 + ", rLast: " + bVar);
    }

    public int a(int[] iArr, int i10) {
        b bVar = new b(this.f25394a, iArr);
        int[] iArr2 = new int[i10];
        boolean z10 = true;
        for (int i11 = 0; i11 < i10; i11++) {
            a aVar = this.f25394a;
            int b10 = bVar.b(aVar.c(aVar.d() + i11));
            iArr2[(i10 - 1) - i11] = b10;
            if (b10 != 0) {
                z10 = false;
            }
        }
        if (z10) {
            return 0;
        }
        b[] d10 = d(this.f25394a.b(i10, 1), new b(this.f25394a, iArr2), i10);
        b bVar2 = d10[0];
        b bVar3 = d10[1];
        int[] b11 = b(bVar2);
        int[] c10 = c(bVar3, b11);
        for (int i12 = 0; i12 < b11.length; i12++) {
            int length = (iArr.length - 1) - this.f25394a.i(b11[i12]);
            if (length >= 0) {
                iArr[length] = a.a(iArr[length], c10[i12]);
            } else {
                throw new d("Bad error location");
            }
        }
        return b11.length;
    }
}
