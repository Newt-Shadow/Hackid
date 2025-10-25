package lb;
/* loaded from: classes.dex */
public abstract class r {
    private static final int a(int i10) {
        int i11 = i10 / 2;
        if ((i10 ^ 2) < 0 && i11 * 2 != i10) {
            i11--;
        }
        return Math.max(i11, 1);
    }

    public static final boolean b(e e10, eb.d config) {
        kotlin.jvm.internal.m.e(e10, "e");
        kotlin.jvm.internal.m.e(config, "config");
        if (e10.a() < 400) {
            i o10 = config.o();
            o10.a("Flushing failed with " + e10.a() + ", let's try again soon.");
            return false;
        } else if (e10.a() != 413 || config.p() <= 1) {
            return true;
        } else {
            config.T(a(config.p()));
            config.P(a(config.i()));
            i o11 = config.o();
            o11.a("Flushing failed with " + e10.a() + ", let's try again with a smaller batch.");
            return false;
        }
    }
}
