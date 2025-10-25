package com.google.android.gms.measurement.internal;

import android.content.Context;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes.dex */
public final class l5 {

    /* renamed from: d  reason: collision with root package name */
    private static l5 f7706d;

    /* renamed from: a  reason: collision with root package name */
    private final w6 f7707a;

    /* renamed from: b  reason: collision with root package name */
    private final n5.w f7708b;

    /* renamed from: c  reason: collision with root package name */
    private final AtomicLong f7709c = new AtomicLong(-1);

    private l5(Context context, w6 w6Var) {
        this.f7708b = n5.v.b(context, n5.x.a().b("measurement:api").a());
        this.f7707a = w6Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static l5 a(w6 w6Var) {
        if (f7706d == null) {
            f7706d = new l5(w6Var.e(), w6Var);
        }
        return f7706d;
    }

    public final synchronized void b(int i10, int i11, long j10, long j11, int i12) {
        final long elapsedRealtime = this.f7707a.f().elapsedRealtime();
        AtomicLong atomicLong = this.f7709c;
        if (atomicLong.get() != -1 && elapsedRealtime - atomicLong.get() <= 1800000) {
            return;
        }
        this.f7708b.c(new n5.u(0, Arrays.asList(new n5.n(36301, i11, 0, j10, j11, null, null, 0, i12)))).e(new m6.g() { // from class: com.google.android.gms.measurement.internal.k5
            @Override // m6.g
            public final /* synthetic */ void c(Exception exc) {
                l5.this.c(elapsedRealtime, exc);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void c(long j10, Exception exc) {
        this.f7709c.set(j10);
    }
}
