package xa;
/* loaded from: classes.dex */
public class p implements Comparable {

    /* renamed from: a  reason: collision with root package name */
    public final int f32649a;

    /* renamed from: b  reason: collision with root package name */
    public final int f32650b;

    public p(int i10, int i11) {
        this.f32649a = i10;
        this.f32650b = i11;
    }

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(p pVar) {
        int i10 = this.f32650b * this.f32649a;
        int i11 = pVar.f32650b * pVar.f32649a;
        if (i11 < i10) {
            return 1;
        }
        if (i11 > i10) {
            return -1;
        }
        return 0;
    }

    public p b() {
        return new p(this.f32650b, this.f32649a);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        p pVar = (p) obj;
        if (this.f32649a == pVar.f32649a && this.f32650b == pVar.f32650b) {
            return true;
        }
        return false;
    }

    public p f(p pVar) {
        int i10 = this.f32649a;
        int i11 = pVar.f32650b;
        int i12 = i10 * i11;
        int i13 = pVar.f32649a;
        int i14 = this.f32650b;
        if (i12 <= i13 * i14) {
            return new p(i13, (i14 * i13) / i10);
        }
        return new p((i10 * i11) / i14, i11);
    }

    public int hashCode() {
        return (this.f32649a * 31) + this.f32650b;
    }

    public p i(p pVar) {
        int i10 = this.f32649a;
        int i11 = pVar.f32650b;
        int i12 = i10 * i11;
        int i13 = pVar.f32649a;
        int i14 = this.f32650b;
        if (i12 >= i13 * i14) {
            return new p(i13, (i14 * i13) / i10);
        }
        return new p((i10 * i11) / i14, i11);
    }

    public String toString() {
        return this.f32649a + "x" + this.f32650b;
    }
}
