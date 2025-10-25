package io.sentry;

import java.util.Locale;
/* loaded from: classes2.dex */
public enum j5 implements q1 {
    DEBUG,
    INFO,
    WARNING,
    ERROR,
    FATAL;

    /* loaded from: classes2.dex */
    public static final class a implements g1 {
        @Override // io.sentry.g1
        /* renamed from: b */
        public j5 a(l2 l2Var, ILogger iLogger) {
            return j5.valueOf(l2Var.C().toUpperCase(Locale.ROOT));
        }
    }

    @Override // io.sentry.q1
    public void serialize(m2 m2Var, ILogger iLogger) {
        m2Var.c(name().toLowerCase(Locale.ROOT));
    }
}
