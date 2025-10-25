package com.google.android.gms.measurement.internal;

import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicLong;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class q6 extends FutureTask implements Comparable {

    /* renamed from: a  reason: collision with root package name */
    private final long f7923a;

    /* renamed from: b  reason: collision with root package name */
    final boolean f7924b;

    /* renamed from: c  reason: collision with root package name */
    private final String f7925c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ s6 f7926d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q6(s6 s6Var, Runnable runnable, boolean z10, String str) {
        super(runnable, null);
        AtomicLong atomicLong;
        Objects.requireNonNull(s6Var);
        this.f7926d = s6Var;
        n5.q.k(str);
        atomicLong = s6.f8000k;
        long andIncrement = atomicLong.getAndIncrement();
        this.f7923a = andIncrement;
        this.f7925c = str;
        this.f7924b = z10;
        if (andIncrement == Long.MAX_VALUE) {
            s6Var.f8322a.a().o().a("Tasks index overflow");
        }
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        q6 q6Var = (q6) obj;
        boolean z10 = q6Var.f7924b;
        boolean z11 = this.f7924b;
        if (z11 != z10) {
            if (!z11) {
                return 1;
            }
            return -1;
        }
        long j10 = this.f7923a;
        int i10 = (j10 > q6Var.f7923a ? 1 : (j10 == q6Var.f7923a ? 0 : -1));
        if (i10 < 0) {
            return -1;
        }
        if (i10 > 0) {
            return 1;
        }
        this.f7926d.f8322a.a().p().b("Two tasks share the same index. index", Long.valueOf(j10));
        return 0;
    }

    @Override // java.util.concurrent.FutureTask
    protected final void setException(Throwable th) {
        this.f7926d.f8322a.a().o().b(this.f7925c, th);
        super.setException(th);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q6(s6 s6Var, Callable callable, boolean z10, String str) {
        super(callable);
        AtomicLong atomicLong;
        Objects.requireNonNull(s6Var);
        this.f7926d = s6Var;
        n5.q.k("Task exception on worker thread");
        atomicLong = s6.f8000k;
        long andIncrement = atomicLong.getAndIncrement();
        this.f7923a = andIncrement;
        this.f7925c = "Task exception on worker thread";
        this.f7924b = z10;
        if (andIncrement == Long.MAX_VALUE) {
            s6Var.f8322a.a().o().a("Tasks index overflow");
        }
    }
}
