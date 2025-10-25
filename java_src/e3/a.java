package e3;
/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    private int f15263a;

    public final void j(int i10) {
        this.f15263a = i10 | this.f15263a;
    }

    public void l() {
        this.f15263a = 0;
    }

    public final void m(int i10) {
        this.f15263a = (~i10) & this.f15263a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean n(int i10) {
        if ((this.f15263a & i10) == i10) {
            return true;
        }
        return false;
    }

    public final boolean o() {
        return n(268435456);
    }

    public final boolean p() {
        return n(Integer.MIN_VALUE);
    }

    public final boolean q() {
        return n(4);
    }

    public final boolean r() {
        return n(134217728);
    }

    public final boolean s() {
        return n(1);
    }

    public final boolean t() {
        return n(536870912);
    }

    public final void u(int i10) {
        this.f15263a = i10;
    }
}
