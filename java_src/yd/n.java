package yd;
/* loaded from: classes2.dex */
public abstract class n {
    public static final void a(int i10) {
        boolean z10 = true;
        if (i10 < 1) {
            z10 = false;
        }
        if (z10) {
            return;
        }
        throw new IllegalArgumentException(("Expected positive parallelism level, but got " + i10).toString());
    }

    public static final td.i0 b(td.i0 i0Var, String str) {
        if (str != null) {
            return new x(i0Var, str);
        }
        return i0Var;
    }
}
