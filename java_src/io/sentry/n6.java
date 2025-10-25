package io.sentry;

import java.util.UUID;
/* loaded from: classes2.dex */
public final class n6 implements q1 {

    /* renamed from: b  reason: collision with root package name */
    public static final n6 f23280b = new n6(new UUID(0, 0));

    /* renamed from: a  reason: collision with root package name */
    private final String f23281a;

    /* loaded from: classes2.dex */
    public static final class a implements g1 {
        @Override // io.sentry.g1
        /* renamed from: b */
        public n6 a(l2 l2Var, ILogger iLogger) {
            return new n6(l2Var.C());
        }
    }

    public n6(String str) {
        this.f23281a = (String) io.sentry.util.q.c(str, "value is required");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && n6.class == obj.getClass()) {
            return this.f23281a.equals(((n6) obj).f23281a);
        }
        return false;
    }

    public int hashCode() {
        return this.f23281a.hashCode();
    }

    @Override // io.sentry.q1
    public void serialize(m2 m2Var, ILogger iLogger) {
        m2Var.c(this.f23281a);
    }

    public String toString() {
        return this.f23281a;
    }

    public n6() {
        this(UUID.randomUUID());
    }

    private n6(UUID uuid) {
        this(io.sentry.util.w.e(uuid.toString()).replace("-", "").substring(0, 16));
    }
}
