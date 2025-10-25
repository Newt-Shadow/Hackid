package io.sentry;

import io.sentry.UncaughtExceptionHandlerIntegration;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public final class k implements y {

    /* renamed from: a  reason: collision with root package name */
    private final Map f23200a = Collections.synchronizedMap(new HashMap());

    /* renamed from: b  reason: collision with root package name */
    private final s5 f23201b;

    public k(s5 s5Var) {
        this.f23201b = s5Var;
    }

    @Override // io.sentry.y
    public z4 b(z4 z4Var, c0 c0Var) {
        if (!io.sentry.util.j.h(c0Var, UncaughtExceptionHandlerIntegration.a.class)) {
            return z4Var;
        }
        io.sentry.protocol.q w02 = z4Var.w0();
        if (w02 == null) {
            return z4Var;
        }
        String k10 = w02.k();
        if (k10 == null) {
            return z4Var;
        }
        Long j10 = w02.j();
        if (j10 == null) {
            return z4Var;
        }
        Long l10 = (Long) this.f23200a.get(k10);
        if (l10 != null && !l10.equals(j10)) {
            this.f23201b.getLogger().c(j5.INFO, "Event %s has been dropped due to multi-threaded deduplication", z4Var.G());
            io.sentry.util.j.r(c0Var, io.sentry.hints.h.MULTITHREADED_DEDUPLICATION);
            return null;
        }
        this.f23200a.put(k10, j10);
        return z4Var;
    }
}
