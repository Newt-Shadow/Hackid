package io.sentry.android.core;

import android.os.Debug;
import io.sentry.r2;
/* loaded from: classes2.dex */
public class v implements io.sentry.t0 {
    @Override // io.sentry.t0
    public void c(r2 r2Var) {
        r2Var.b(new io.sentry.u1(System.currentTimeMillis(), Runtime.getRuntime().totalMemory() - Runtime.getRuntime().freeMemory(), Debug.getNativeHeapSize() - Debug.getNativeHeapFreeSize()));
    }

    @Override // io.sentry.t0
    public void e() {
    }
}
