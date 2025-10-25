package io.sentry;

import java.util.Locale;
/* loaded from: classes2.dex */
public enum p6 implements q1 {
    OK(200, 299),
    CANCELLED(499),
    INTERNAL_ERROR(500),
    UNKNOWN(500),
    UNKNOWN_ERROR(500),
    INVALID_ARGUMENT(400),
    DEADLINE_EXCEEDED(504),
    NOT_FOUND(404),
    ALREADY_EXISTS(409),
    PERMISSION_DENIED(403),
    RESOURCE_EXHAUSTED(429),
    FAILED_PRECONDITION(400),
    ABORTED(409),
    OUT_OF_RANGE(400),
    UNIMPLEMENTED(501),
    UNAVAILABLE(503),
    DATA_LOSS(500),
    UNAUTHENTICATED(401);
    
    private final int maxHttpStatusCode;
    private final int minHttpStatusCode;

    /* loaded from: classes2.dex */
    public static final class a implements g1 {
        @Override // io.sentry.g1
        /* renamed from: b */
        public p6 a(l2 l2Var, ILogger iLogger) {
            return p6.valueOf(l2Var.C().toUpperCase(Locale.ROOT));
        }
    }

    p6(int i10) {
        this.minHttpStatusCode = i10;
        this.maxHttpStatusCode = i10;
    }

    public static p6 fromHttpStatusCode(int i10) {
        p6[] values;
        for (p6 p6Var : values()) {
            if (p6Var.matches(i10)) {
                return p6Var;
            }
        }
        return null;
    }

    private boolean matches(int i10) {
        if (i10 >= this.minHttpStatusCode && i10 <= this.maxHttpStatusCode) {
            return true;
        }
        return false;
    }

    @Override // io.sentry.q1
    public void serialize(m2 m2Var, ILogger iLogger) {
        m2Var.c(name().toLowerCase(Locale.ROOT));
    }

    public static p6 fromHttpStatusCode(Integer num, p6 p6Var) {
        p6 fromHttpStatusCode = num != null ? fromHttpStatusCode(num.intValue()) : p6Var;
        return fromHttpStatusCode != null ? fromHttpStatusCode : p6Var;
    }

    p6(int i10, int i11) {
        this.minHttpStatusCode = i10;
        this.maxHttpStatusCode = i11;
    }
}
