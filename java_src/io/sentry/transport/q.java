package io.sentry.transport;

import io.sentry.a4;
import io.sentry.c0;
import java.io.Closeable;
/* loaded from: classes2.dex */
public interface q extends Closeable {
    void V(a4 a4Var, c0 c0Var);

    void i(boolean z10);

    z l();

    default boolean m() {
        return true;
    }

    void o(long j10);

    default void y0(a4 a4Var) {
        V(a4Var, new c0());
    }
}
