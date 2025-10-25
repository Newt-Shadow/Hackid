package io.sentry.exception;

import io.sentry.protocol.i;
import io.sentry.util.q;
/* loaded from: classes2.dex */
public final class a extends RuntimeException {

    /* renamed from: a  reason: collision with root package name */
    private final i f23080a;

    /* renamed from: b  reason: collision with root package name */
    private final Throwable f23081b;

    /* renamed from: c  reason: collision with root package name */
    private final Thread f23082c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f23083d;

    public a(i iVar, Throwable th, Thread thread, boolean z10) {
        this.f23080a = (i) q.c(iVar, "Mechanism is required.");
        this.f23081b = (Throwable) q.c(th, "Throwable is required.");
        this.f23082c = (Thread) q.c(thread, "Thread is required.");
        this.f23083d = z10;
    }

    public i a() {
        return this.f23080a;
    }

    public Thread b() {
        return this.f23082c;
    }

    public Throwable c() {
        return this.f23081b;
    }

    public boolean d() {
        return this.f23083d;
    }

    public a(i iVar, Throwable th, Thread thread) {
        this(iVar, th, thread, false);
    }
}
