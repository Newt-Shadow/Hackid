package com.google.firebase.concurrent;

import java.util.concurrent.Delayed;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
class p extends androidx.concurrent.futures.a implements ScheduledFuture {

    /* renamed from: h  reason: collision with root package name */
    private final ScheduledFuture f8761h;

    /* loaded from: classes.dex */
    class a implements b {
        a() {
        }

        @Override // com.google.firebase.concurrent.p.b
        public void a(Throwable th) {
            p.this.v(th);
        }

        @Override // com.google.firebase.concurrent.p.b
        public void set(Object obj) {
            p.this.u(obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface b {
        void a(Throwable th);

        void set(Object obj);
    }

    /* loaded from: classes.dex */
    interface c {
        ScheduledFuture a(b bVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(c cVar) {
        this.f8761h = cVar.a(new a());
    }

    @Override // java.lang.Comparable
    /* renamed from: A */
    public int compareTo(Delayed delayed) {
        return this.f8761h.compareTo(delayed);
    }

    @Override // androidx.concurrent.futures.a
    protected void f() {
        this.f8761h.cancel(x());
    }

    @Override // java.util.concurrent.Delayed
    public long getDelay(TimeUnit timeUnit) {
        return this.f8761h.getDelay(timeUnit);
    }
}
