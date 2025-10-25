package b3;
/* loaded from: classes.dex */
public interface u3 {
    static int F(int i10) {
        return i10 & 7;
    }

    static int k(int i10) {
        return i10 & 384;
    }

    static int n(int i10, int i11, int i12, int i13, int i14) {
        return i10 | i11 | i12 | i13 | i14;
    }

    static int o(int i10) {
        return i10 & 64;
    }

    static int p(int i10) {
        return i10 & 32;
    }

    static int r(int i10, int i11, int i12) {
        return n(i10, i11, i12, 0, 128);
    }

    static int u(int i10) {
        return i10 & 24;
    }

    static int v(int i10) {
        return r(i10, 0, 0);
    }

    int b(x1 x1Var);

    String getName();

    int h();

    int w();
}
