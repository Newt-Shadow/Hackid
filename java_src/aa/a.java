package aa;
/* loaded from: classes.dex */
final class a {

    /* renamed from: a  reason: collision with root package name */
    private final j9.b f220a;

    /* renamed from: b  reason: collision with root package name */
    private j f221b;

    /* renamed from: c  reason: collision with root package name */
    private g f222c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f223d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(j9.b bVar) {
        int j10 = bVar.j();
        if (j10 >= 21 && (j10 & 3) == 1) {
            this.f220a = bVar;
            return;
        }
        throw d9.f.a();
    }

    private int a(int i10, int i11, int i12) {
        boolean e10;
        if (this.f223d) {
            e10 = this.f220a.e(i11, i10);
        } else {
            e10 = this.f220a.e(i10, i11);
        }
        if (e10) {
            return (i12 << 1) | 1;
        }
        return i12 << 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        int i10 = 0;
        while (i10 < this.f220a.m()) {
            int i11 = i10 + 1;
            for (int i12 = i11; i12 < this.f220a.j(); i12++) {
                if (this.f220a.e(i10, i12) != this.f220a.e(i12, i10)) {
                    this.f220a.d(i12, i10);
                    this.f220a.d(i10, i12);
                }
            }
            i10 = i11;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[] c() {
        int i10;
        g d10 = d();
        j e10 = e();
        c cVar = c.values()[d10.c()];
        int j10 = this.f220a.j();
        cVar.f(this.f220a, j10);
        j9.b a10 = e10.a();
        byte[] bArr = new byte[e10.h()];
        int i11 = j10 - 1;
        boolean z10 = true;
        int i12 = i11;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        while (i12 > 0) {
            if (i12 == 6) {
                i12--;
            }
            for (int i16 = 0; i16 < j10; i16++) {
                if (z10) {
                    i10 = i11 - i16;
                } else {
                    i10 = i16;
                }
                for (int i17 = 0; i17 < 2; i17++) {
                    int i18 = i12 - i17;
                    if (!a10.e(i18, i10)) {
                        i14++;
                        i15 <<= 1;
                        if (this.f220a.e(i18, i10)) {
                            i15 |= 1;
                        }
                        if (i14 == 8) {
                            bArr[i13] = (byte) i15;
                            i13++;
                            i14 = 0;
                            i15 = 0;
                        }
                    }
                }
            }
            z10 = !z10;
            i12 -= 2;
        }
        if (i13 == e10.h()) {
            return bArr;
        }
        throw d9.f.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public g d() {
        g gVar = this.f222c;
        if (gVar != null) {
            return gVar;
        }
        int i10 = 0;
        int i11 = 0;
        for (int i12 = 0; i12 < 6; i12++) {
            i11 = a(i12, 8, i11);
        }
        int a10 = a(8, 7, a(8, 8, a(7, 8, i11)));
        for (int i13 = 5; i13 >= 0; i13--) {
            a10 = a(8, i13, a10);
        }
        int j10 = this.f220a.j();
        int i14 = j10 - 7;
        for (int i15 = j10 - 1; i15 >= i14; i15--) {
            i10 = a(8, i15, i10);
        }
        for (int i16 = j10 - 8; i16 < j10; i16++) {
            i10 = a(i16, 8, i10);
        }
        g a11 = g.a(a10, i10);
        this.f222c = a11;
        if (a11 != null) {
            return a11;
        }
        throw d9.f.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public j e() {
        j jVar = this.f221b;
        if (jVar != null) {
            return jVar;
        }
        int j10 = this.f220a.j();
        int i10 = (j10 - 17) / 4;
        if (i10 <= 6) {
            return j.i(i10);
        }
        int i11 = j10 - 11;
        int i12 = 0;
        int i13 = 0;
        for (int i14 = 5; i14 >= 0; i14--) {
            for (int i15 = j10 - 9; i15 >= i11; i15--) {
                i13 = a(i15, i14, i13);
            }
        }
        j c10 = j.c(i13);
        if (c10 != null && c10.e() == j10) {
            this.f221b = c10;
            return c10;
        }
        for (int i16 = 5; i16 >= 0; i16--) {
            for (int i17 = j10 - 9; i17 >= i11; i17--) {
                i12 = a(i16, i17, i12);
            }
        }
        j c11 = j.c(i12);
        if (c11 != null && c11.e() == j10) {
            this.f221b = c11;
            return c11;
        }
        throw d9.f.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f() {
        if (this.f222c == null) {
            return;
        }
        c.values()[this.f222c.c()].f(this.f220a, this.f220a.j());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g(boolean z10) {
        this.f221b = null;
        this.f222c = null;
        this.f223d = z10;
    }
}
