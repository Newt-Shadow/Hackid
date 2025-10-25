package com.yandex.metrica.impl.ob;

import java.util.concurrent.TimeUnit;
/* renamed from: com.yandex.metrica.impl.ob.gm  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0567gm {

    /* renamed from: a  reason: collision with root package name */
    private final dc.c f12492a;

    public C0567gm() {
        this(new dc.c());
    }

    public long a(long j10, TimeUnit timeUnit) {
        return TimeUnit.MILLISECONDS.toSeconds(this.f12492a.elapsedRealtime() - timeUnit.toMillis(j10));
    }

    public long b(long j10, TimeUnit timeUnit) {
        if (j10 == 0) {
            return 0L;
        }
        return this.f12492a.currentTimeSeconds() - timeUnit.toSeconds(j10);
    }

    public long c(long j10, TimeUnit timeUnit) {
        return TimeUnit.NANOSECONDS.toSeconds(this.f12492a.a() - timeUnit.toNanos(j10));
    }

    public C0567gm(dc.c cVar) {
        this.f12492a = cVar;
    }
}
