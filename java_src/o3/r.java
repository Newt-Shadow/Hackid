package o3;

import y4.q0;
/* loaded from: classes.dex */
final class r {

    /* renamed from: a  reason: collision with root package name */
    public final o f27311a;

    /* renamed from: b  reason: collision with root package name */
    public final int f27312b;

    /* renamed from: c  reason: collision with root package name */
    public final long[] f27313c;

    /* renamed from: d  reason: collision with root package name */
    public final int[] f27314d;

    /* renamed from: e  reason: collision with root package name */
    public final int f27315e;

    /* renamed from: f  reason: collision with root package name */
    public final long[] f27316f;

    /* renamed from: g  reason: collision with root package name */
    public final int[] f27317g;

    /* renamed from: h  reason: collision with root package name */
    public final long f27318h;

    public r(o oVar, long[] jArr, int[] iArr, int i10, long[] jArr2, int[] iArr2, long j10) {
        boolean z10;
        boolean z11;
        if (iArr.length == jArr2.length) {
            z10 = true;
        } else {
            z10 = false;
        }
        y4.a.a(z10);
        if (jArr.length == jArr2.length) {
            z11 = true;
        } else {
            z11 = false;
        }
        y4.a.a(z11);
        y4.a.a(iArr2.length == jArr2.length);
        this.f27311a = oVar;
        this.f27313c = jArr;
        this.f27314d = iArr;
        this.f27315e = i10;
        this.f27316f = jArr2;
        this.f27317g = iArr2;
        this.f27318h = j10;
        this.f27312b = jArr.length;
        if (iArr2.length > 0) {
            int length = iArr2.length - 1;
            iArr2[length] = iArr2[length] | 536870912;
        }
    }

    public int a(long j10) {
        for (int i10 = q0.i(this.f27316f, j10, true, false); i10 >= 0; i10--) {
            if ((this.f27317g[i10] & 1) != 0) {
                return i10;
            }
        }
        return -1;
    }

    public int b(long j10) {
        for (int e10 = q0.e(this.f27316f, j10, true, false); e10 < this.f27316f.length; e10++) {
            if ((this.f27317g[e10] & 1) != 0) {
                return e10;
            }
        }
        return -1;
    }
}
