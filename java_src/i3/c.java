package i3;

import y4.e0;
/* loaded from: classes.dex */
final class c implements a {

    /* renamed from: a  reason: collision with root package name */
    public final int f17084a;

    /* renamed from: b  reason: collision with root package name */
    public final int f17085b;

    /* renamed from: c  reason: collision with root package name */
    public final int f17086c;

    /* renamed from: d  reason: collision with root package name */
    public final int f17087d;

    private c(int i10, int i11, int i12, int i13) {
        this.f17084a = i10;
        this.f17085b = i11;
        this.f17086c = i12;
        this.f17087d = i13;
    }

    public static c b(e0 e0Var) {
        int t10 = e0Var.t();
        e0Var.U(8);
        int t11 = e0Var.t();
        int t12 = e0Var.t();
        e0Var.U(4);
        int t13 = e0Var.t();
        e0Var.U(12);
        return new c(t10, t11, t12, t13);
    }

    public boolean a() {
        if ((this.f17085b & 16) == 16) {
            return true;
        }
        return false;
    }

    @Override // i3.a
    public int getType() {
        return 1751742049;
    }
}
