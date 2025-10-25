package x4;

import java.util.Arrays;
import x4.b;
import y4.q0;
/* loaded from: classes.dex */
public final class o implements b {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f32401a;

    /* renamed from: b  reason: collision with root package name */
    private final int f32402b;

    /* renamed from: c  reason: collision with root package name */
    private final byte[] f32403c;

    /* renamed from: d  reason: collision with root package name */
    private int f32404d;

    /* renamed from: e  reason: collision with root package name */
    private int f32405e;

    /* renamed from: f  reason: collision with root package name */
    private int f32406f;

    /* renamed from: g  reason: collision with root package name */
    private a[] f32407g;

    public o(boolean z10, int i10) {
        this(z10, i10, 0);
    }

    @Override // x4.b
    public synchronized a a() {
        a aVar;
        this.f32405e++;
        int i10 = this.f32406f;
        if (i10 > 0) {
            a[] aVarArr = this.f32407g;
            int i11 = i10 - 1;
            this.f32406f = i11;
            aVar = (a) y4.a.e(aVarArr[i11]);
            this.f32407g[this.f32406f] = null;
        } else {
            aVar = new a(new byte[this.f32402b], 0);
            int i12 = this.f32405e;
            a[] aVarArr2 = this.f32407g;
            if (i12 > aVarArr2.length) {
                this.f32407g = (a[]) Arrays.copyOf(aVarArr2, aVarArr2.length * 2);
            }
        }
        return aVar;
    }

    @Override // x4.b
    public synchronized void b(a aVar) {
        a[] aVarArr = this.f32407g;
        int i10 = this.f32406f;
        this.f32406f = i10 + 1;
        aVarArr[i10] = aVar;
        this.f32405e--;
        notifyAll();
    }

    @Override // x4.b
    public synchronized void c() {
        int i10 = 0;
        int max = Math.max(0, q0.l(this.f32404d, this.f32402b) - this.f32405e);
        int i11 = this.f32406f;
        if (max >= i11) {
            return;
        }
        if (this.f32403c != null) {
            int i12 = i11 - 1;
            while (i10 <= i12) {
                a aVar = (a) y4.a.e(this.f32407g[i10]);
                if (aVar.f32268a == this.f32403c) {
                    i10++;
                } else {
                    a aVar2 = (a) y4.a.e(this.f32407g[i12]);
                    if (aVar2.f32268a != this.f32403c) {
                        i12--;
                    } else {
                        a[] aVarArr = this.f32407g;
                        aVarArr[i10] = aVar2;
                        aVarArr[i12] = aVar;
                        i12--;
                        i10++;
                    }
                }
            }
            max = Math.max(max, i10);
            if (max >= this.f32406f) {
                return;
            }
        }
        Arrays.fill(this.f32407g, max, this.f32406f, (Object) null);
        this.f32406f = max;
    }

    @Override // x4.b
    public synchronized void d(b.a aVar) {
        while (aVar != null) {
            a[] aVarArr = this.f32407g;
            int i10 = this.f32406f;
            this.f32406f = i10 + 1;
            aVarArr[i10] = aVar.a();
            this.f32405e--;
            aVar = aVar.next();
        }
        notifyAll();
    }

    @Override // x4.b
    public int e() {
        return this.f32402b;
    }

    public synchronized int f() {
        return this.f32405e * this.f32402b;
    }

    public synchronized void g() {
        if (this.f32401a) {
            h(0);
        }
    }

    public synchronized void h(int i10) {
        boolean z10;
        if (i10 < this.f32404d) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.f32404d = i10;
        if (z10) {
            c();
        }
    }

    public o(boolean z10, int i10, int i11) {
        y4.a.a(i10 > 0);
        y4.a.a(i11 >= 0);
        this.f32401a = z10;
        this.f32402b = i10;
        this.f32406f = i11;
        this.f32407g = new a[i11 + 100];
        if (i11 > 0) {
            this.f32403c = new byte[i11 * i10];
            for (int i12 = 0; i12 < i11; i12++) {
                this.f32407g[i12] = new a(this.f32403c, i12 * i10);
            }
            return;
        }
        this.f32403c = null;
    }
}
