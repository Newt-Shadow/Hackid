package io.sentry.protocol;

import io.sentry.ILogger;
import io.sentry.g1;
import io.sentry.l2;
import io.sentry.m2;
import io.sentry.q1;
import java.util.UUID;
/* loaded from: classes2.dex */
public final class r implements q1 {

    /* renamed from: b  reason: collision with root package name */
    public static final r f23462b = new r(new UUID(0, 0));

    /* renamed from: a  reason: collision with root package name */
    private final UUID f23463a;

    /* loaded from: classes2.dex */
    public static final class a implements g1 {
        @Override // io.sentry.g1
        /* renamed from: b */
        public r a(l2 l2Var, ILogger iLogger) {
            return new r(l2Var.C());
        }
    }

    public r() {
        this((UUID) null);
    }

    private UUID a(String str) {
        if (str.length() == 32) {
            str = new StringBuilder(str).insert(8, "-").insert(13, "-").insert(18, "-").insert(23, "-").toString();
        }
        if (str.length() == 36) {
            return UUID.fromString(str);
        }
        throw new IllegalArgumentException("String representation of SentryId has either 32 (UUID no dashes) or 36 characters long (completed UUID). Received: " + str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && r.class == obj.getClass() && this.f23463a.compareTo(((r) obj).f23463a) == 0) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return this.f23463a.hashCode();
    }

    @Override // io.sentry.q1
    public void serialize(m2 m2Var, ILogger iLogger) {
        m2Var.c(toString());
    }

    public String toString() {
        return io.sentry.util.w.e(this.f23463a.toString()).replace("-", "");
    }

    public r(UUID uuid) {
        this.f23463a = uuid == null ? UUID.randomUUID() : uuid;
    }

    public r(String str) {
        this.f23463a = a(io.sentry.util.w.e(str));
    }
}
