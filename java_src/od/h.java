package od;

import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
abstract class h {
    public static final void a(boolean z10, Number step) {
        m.e(step, "step");
        if (z10) {
            return;
        }
        throw new IllegalArgumentException("Step must be positive, was: " + step + '.');
    }
}
