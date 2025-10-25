package e3;

import b3.x1;
/* loaded from: classes.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    public final String f15299a;

    /* renamed from: b  reason: collision with root package name */
    public final x1 f15300b;

    /* renamed from: c  reason: collision with root package name */
    public final x1 f15301c;

    /* renamed from: d  reason: collision with root package name */
    public final int f15302d;

    /* renamed from: e  reason: collision with root package name */
    public final int f15303e;

    public i(String str, x1 x1Var, x1 x1Var2, int i10, int i11) {
        boolean z10;
        if (i10 != 0 && i11 != 0) {
            z10 = false;
        } else {
            z10 = true;
        }
        y4.a.a(z10);
        this.f15299a = y4.a.d(str);
        this.f15300b = (x1) y4.a.e(x1Var);
        this.f15301c = (x1) y4.a.e(x1Var2);
        this.f15302d = i10;
        this.f15303e = i11;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || i.class != obj.getClass()) {
            return false;
        }
        i iVar = (i) obj;
        if (this.f15302d == iVar.f15302d && this.f15303e == iVar.f15303e && this.f15299a.equals(iVar.f15299a) && this.f15300b.equals(iVar.f15300b) && this.f15301c.equals(iVar.f15301c)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((((((((527 + this.f15302d) * 31) + this.f15303e) * 31) + this.f15299a.hashCode()) * 31) + this.f15300b.hashCode()) * 31) + this.f15301c.hashCode();
    }
}
