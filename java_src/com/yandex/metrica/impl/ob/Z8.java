package com.yandex.metrica.impl.ob;
/* loaded from: classes2.dex */
public class Z8 extends AbstractC0479d9 {

    /* renamed from: c  reason: collision with root package name */
    private static final Rd f11873c = new Rd("LAST_SATELLITE_CLIDS_DIAGNOSTICS_SENT_TIME", null);

    /* renamed from: d  reason: collision with root package name */
    private static final Rd f11874d = new Rd("LAST_PRELOAD_INFO_DIAGNOSTICS_SENT_TIME", null);

    public Z8(S7 s72) {
        super(s72);
    }

    public long b(long j10) {
        return a(f11873c.a(), j10);
    }

    public long c(long j10) {
        return a(f11874d.a(), j10);
    }

    public Z8 d(long j10) {
        return (Z8) b(f11873c.a(), j10);
    }

    public Z8 e(long j10) {
        return (Z8) b(f11874d.a(), j10);
    }
}
