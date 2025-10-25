package io.appmetrica.analytics.impl;
/* loaded from: classes2.dex */
public final class Dk {

    /* renamed from: a  reason: collision with root package name */
    public final Cdo f18115a;

    public Dk(Cdo cdo) {
        this.f18115a = cdo;
    }

    public final long a() {
        long optLong;
        Cdo cdo = this.f18115a;
        synchronized (cdo) {
            optLong = cdo.f19546a.a().optLong("session_id", -1L);
        }
        long j10 = 10000000000L;
        if (optLong >= 10000000000L) {
            j10 = 1 + optLong;
        }
        this.f18115a.c(j10);
        return j10;
    }
}
