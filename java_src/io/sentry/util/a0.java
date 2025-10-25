package io.sentry.util;

import io.sentry.d3;
import io.sentry.e3;
import io.sentry.o0;
import io.sentry.s5;
import io.sentry.u0;
import io.sentry.w2;
/* loaded from: classes2.dex */
public abstract class a0 {
    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void d(s5 s5Var, u0 u0Var, w2 w2Var) {
        io.sentry.d b10 = w2Var.b();
        if (b10 == null) {
            b10 = new io.sentry.d(s5Var.getLogger());
            w2Var.g(b10);
        }
        if (b10.r()) {
            b10.F(u0Var, s5Var);
            b10.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void e(u0 u0Var, w2 w2Var) {
        u0Var.K(new w2());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void f(final u0 u0Var) {
        u0Var.B(new d3.a() { // from class: io.sentry.util.z
            @Override // io.sentry.d3.a
            public final void a(w2 w2Var) {
                a0.e(u0.this, w2Var);
            }
        });
    }

    public static w2 g(final u0 u0Var, final s5 s5Var) {
        return u0Var.B(new d3.a() { // from class: io.sentry.util.y
            @Override // io.sentry.d3.a
            public final void a(w2 w2Var) {
                a0.d(s5.this, u0Var, w2Var);
            }
        });
    }

    public static void h(o0 o0Var) {
        o0Var.y(new e3() { // from class: io.sentry.util.x
            @Override // io.sentry.e3
            public final void a(u0 u0Var) {
                a0.f(u0Var);
            }
        });
    }
}
