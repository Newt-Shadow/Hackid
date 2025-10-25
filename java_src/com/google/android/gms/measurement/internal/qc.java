package com.google.android.gms.measurement.internal;
/* loaded from: classes.dex */
final class qc {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.gms.common.util.d f7943a;

    /* renamed from: b  reason: collision with root package name */
    private long f7944b;

    public qc(com.google.android.gms.common.util.d dVar) {
        n5.q.k(dVar);
        this.f7943a = dVar;
    }

    public final void a() {
        this.f7944b = this.f7943a.elapsedRealtime();
    }

    public final void b() {
        this.f7944b = 0L;
    }

    public final boolean c(long j10) {
        if (this.f7944b == 0 || this.f7943a.elapsedRealtime() - this.f7944b >= 3600000) {
            return true;
        }
        return false;
    }
}
