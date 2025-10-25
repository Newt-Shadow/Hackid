package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import java.util.Map;
/* loaded from: classes.dex */
public final class b2 extends d4 {

    /* renamed from: b  reason: collision with root package name */
    private final Map f7271b;

    /* renamed from: c  reason: collision with root package name */
    private final Map f7272c;

    /* renamed from: d  reason: collision with root package name */
    private long f7273d;

    public b2(w6 w6Var) {
        super(w6Var);
        this.f7272c = new r.a();
        this.f7271b = new r.a();
    }

    private final void o(long j10, da daVar) {
        if (daVar == null) {
            this.f8322a.a().w().a("Not logging ad exposure. No active activity");
        } else if (j10 < 1000) {
            this.f8322a.a().w().b("Not logging ad exposure. Less than 1000 ms. exposure", Long.valueOf(j10));
        } else {
            Bundle bundle = new Bundle();
            bundle.putLong("_xt", j10);
            yd.k0(daVar, bundle, true);
            this.f8322a.B().t("am", "_xa", bundle);
        }
    }

    private final void p(String str, long j10, da daVar) {
        if (daVar == null) {
            this.f8322a.a().w().a("Not logging ad unit exposure. No active activity");
        } else if (j10 < 1000) {
            this.f8322a.a().w().b("Not logging ad unit exposure. Less than 1000 ms. exposure", Long.valueOf(j10));
        } else {
            Bundle bundle = new Bundle();
            bundle.putString("_ai", str);
            bundle.putLong("_xt", j10);
            yd.k0(daVar, bundle, true);
            this.f8322a.B().t("am", "_xu", bundle);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: q */
    public final void n(long j10) {
        Map map = this.f7271b;
        for (String str : map.keySet()) {
            map.put(str, Long.valueOf(j10));
        }
        if (!map.isEmpty()) {
            this.f7273d = j10;
        }
    }

    public final void i(String str, long j10) {
        if (str != null && str.length() != 0) {
            this.f8322a.b().t(new a(this, str, j10));
        } else {
            this.f8322a.a().o().a("Ad unit id must be a non-empty string");
        }
    }

    public final void j(String str, long j10) {
        if (str != null && str.length() != 0) {
            this.f8322a.b().t(new z(this, str, j10));
        } else {
            this.f8322a.a().o().a("Ad unit id must be a non-empty string");
        }
    }

    public final void k(long j10) {
        da q10 = this.f8322a.I().q(false);
        Map map = this.f7271b;
        for (String str : map.keySet()) {
            p(str, j10 - ((Long) map.get(str)).longValue(), q10);
        }
        if (!map.isEmpty()) {
            o(j10 - this.f7273d, q10);
        }
        n(j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void l(String str, long j10) {
        h();
        n5.q.e(str);
        Map map = this.f7272c;
        if (map.isEmpty()) {
            this.f7273d = j10;
        }
        Integer num = (Integer) map.get(str);
        if (num != null) {
            map.put(str, Integer.valueOf(num.intValue() + 1));
        } else if (map.size() >= 100) {
            this.f8322a.a().r().a("Too many ads visible");
        } else {
            map.put(str, 1);
            this.f7271b.put(str, Long.valueOf(j10));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void m(String str, long j10) {
        h();
        n5.q.e(str);
        Map map = this.f7272c;
        Integer num = (Integer) map.get(str);
        if (num != null) {
            da q10 = this.f8322a.I().q(false);
            int intValue = num.intValue() - 1;
            if (intValue == 0) {
                map.remove(str);
                Map map2 = this.f7271b;
                Long l10 = (Long) map2.get(str);
                if (l10 == null) {
                    this.f8322a.a().o().a("First ad unit exposure time was never set");
                } else {
                    map2.remove(str);
                    p(str, j10 - l10.longValue(), q10);
                }
                if (map.isEmpty()) {
                    long j11 = this.f7273d;
                    if (j11 == 0) {
                        this.f8322a.a().o().a("First ad exposure time was never set");
                        return;
                    }
                    o(j10 - j11, q10);
                    this.f7273d = 0L;
                    return;
                }
                return;
            }
            map.put(str, Integer.valueOf(intValue));
            return;
        }
        this.f8322a.a().o().b("Call to endAdUnitExposure for unknown ad unit id", str);
    }
}
