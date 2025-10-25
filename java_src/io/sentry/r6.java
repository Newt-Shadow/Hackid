package io.sentry;

import java.util.Deque;
import java.util.Iterator;
import java.util.concurrent.LinkedBlockingDeque;
/* loaded from: classes2.dex */
final class r6 {

    /* renamed from: a  reason: collision with root package name */
    private final Deque f23563a;

    /* renamed from: b  reason: collision with root package name */
    private final ILogger f23564b;

    public r6(ILogger iLogger, a aVar) {
        LinkedBlockingDeque linkedBlockingDeque = new LinkedBlockingDeque();
        this.f23563a = linkedBlockingDeque;
        this.f23564b = (ILogger) io.sentry.util.q.c(iLogger, "logger is required");
        linkedBlockingDeque.push((a) io.sentry.util.q.c(aVar, "rootStackItem is required"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a a() {
        return (a) this.f23563a.peek();
    }

    void b(a aVar) {
        this.f23563a.push(aVar);
    }

    /* loaded from: classes2.dex */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final s5 f23565a;

        /* renamed from: b  reason: collision with root package name */
        private volatile w0 f23566b;

        /* renamed from: c  reason: collision with root package name */
        private volatile u0 f23567c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(s5 s5Var, w0 w0Var, u0 u0Var) {
            this.f23566b = (w0) io.sentry.util.q.c(w0Var, "ISentryClient is required.");
            this.f23567c = (u0) io.sentry.util.q.c(u0Var, "Scope is required.");
            this.f23565a = (s5) io.sentry.util.q.c(s5Var, "Options is required");
        }

        public w0 a() {
            return this.f23566b;
        }

        public s5 b() {
            return this.f23565a;
        }

        public u0 c() {
            return this.f23567c;
        }

        a(a aVar) {
            this.f23565a = aVar.f23565a;
            this.f23566b = aVar.f23566b;
            this.f23567c = aVar.f23567c.r();
        }
    }

    public r6(r6 r6Var) {
        this(r6Var.f23564b, new a((a) r6Var.f23563a.getLast()));
        Iterator descendingIterator = r6Var.f23563a.descendingIterator();
        if (descendingIterator.hasNext()) {
            descendingIterator.next();
        }
        while (descendingIterator.hasNext()) {
            b(new a((a) descendingIterator.next()));
        }
    }
}
