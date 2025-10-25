package io.appmetrica.analytics.impl;

import android.text.TextUtils;
import io.appmetrica.analytics.coreutils.internal.time.SystemTimeProvider;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONObject;
/* renamed from: io.appmetrica.analytics.impl.qk  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1451qk {

    /* renamed from: a  reason: collision with root package name */
    public final C1386o5 f20445a;

    /* renamed from: b  reason: collision with root package name */
    public final Hk f20446b;

    /* renamed from: c  reason: collision with root package name */
    public final C1525tk f20447c;

    /* renamed from: d  reason: collision with root package name */
    public long f20448d;

    /* renamed from: e  reason: collision with root package name */
    public long f20449e;

    /* renamed from: f  reason: collision with root package name */
    public AtomicLong f20450f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f20451g;

    /* renamed from: h  reason: collision with root package name */
    public volatile Fk f20452h;

    /* renamed from: i  reason: collision with root package name */
    public long f20453i;

    /* renamed from: j  reason: collision with root package name */
    public long f20454j;

    /* renamed from: k  reason: collision with root package name */
    public final SystemTimeProvider f20455k;

    public C1451qk(C1386o5 c1386o5, Hk hk, C1525tk c1525tk, SystemTimeProvider systemTimeProvider) {
        this.f20445a = c1386o5;
        this.f20446b = hk;
        this.f20447c = c1525tk;
        this.f20455k = systemTimeProvider;
        a();
    }

    public final void a() {
        C1525tk c1525tk = this.f20447c;
        long elapsedRealtime = this.f20455k.elapsedRealtime();
        Long l10 = c1525tk.f20681c;
        if (l10 != null) {
            elapsedRealtime = l10.longValue();
        }
        this.f20449e = elapsedRealtime;
        Long l11 = this.f20447c.f20680b;
        this.f20448d = l11 == null ? -1L : l11.longValue();
        Long l12 = this.f20447c.f20683e;
        this.f20450f = new AtomicLong(l12 == null ? 0L : l12.longValue());
        Boolean bool = this.f20447c.f20684f;
        this.f20451g = bool == null ? true : bool.booleanValue();
        Long l13 = this.f20447c.f20685g;
        long longValue = l13 != null ? l13.longValue() : 0L;
        this.f20453i = longValue;
        C1525tk c1525tk2 = this.f20447c;
        long j10 = longValue - this.f20449e;
        Long l14 = c1525tk2.f20686h;
        if (l14 != null) {
            j10 = l14.longValue();
        }
        this.f20454j = j10;
    }

    public final String toString() {
        return "Session{id=" + this.f20448d + ", creationTime=" + this.f20449e + ", currentReportId=" + this.f20450f + ", sessionRequestParams=" + this.f20452h + ", sleepStart=" + this.f20453i + '}';
    }

    public final boolean a(long j10) {
        boolean z10;
        boolean z11;
        List<Boolean> k10;
        boolean z12 = this.f20448d >= 0;
        if (this.f20452h == null) {
            synchronized (this) {
                if (this.f20452h == null) {
                    try {
                        String asString = this.f20445a.f20257e.a(this.f20448d, this.f20447c.f20679a).getAsString("report_request_parameters");
                        if (!TextUtils.isEmpty(asString)) {
                            this.f20452h = new Fk(new JSONObject(asString));
                        }
                    } catch (Throwable unused) {
                    }
                }
            }
        }
        Fk fk = this.f20452h;
        if (fk == null) {
            z10 = false;
            break;
        }
        C1323lh c1323lh = (C1323lh) this.f20445a.f20263k.a();
        Boolean[] boolArr = new Boolean[7];
        boolArr[0] = Boolean.valueOf(TextUtils.equals(c1323lh.getAnalyticsSdkVersionName(), fk.f18230a));
        boolArr[1] = Boolean.valueOf(TextUtils.equals(c1323lh.getAnalyticsSdkBuildNumber(), fk.f18231b));
        boolArr[2] = Boolean.valueOf(TextUtils.equals(c1323lh.getAppVersion(), fk.f18232c));
        boolArr[3] = Boolean.valueOf(TextUtils.equals(c1323lh.getAppBuildNumber(), fk.f18233d));
        boolArr[4] = Boolean.valueOf(TextUtils.equals(c1323lh.getOsVersion(), fk.f18234e));
        boolArr[5] = Boolean.valueOf(fk.f18235f == c1323lh.getOsApiLevel());
        boolArr[6] = Boolean.valueOf(fk.f18236g == c1323lh.f20051r);
        k10 = yc.o.k(boolArr);
        if (!(k10 instanceof Collection) || !k10.isEmpty()) {
            for (Boolean bool : k10) {
                if (!bool.booleanValue()) {
                    z10 = false;
                    break;
                }
            }
        }
        z10 = true;
        long elapsedRealtime = this.f20455k.elapsedRealtime();
        long j11 = this.f20453i;
        boolean z13 = elapsedRealtime < j11;
        long j12 = j10 - j11;
        long j13 = j10 - this.f20449e;
        if (!z13) {
            TimeUnit timeUnit = TimeUnit.SECONDS;
            C1525tk c1525tk = this.f20447c;
            int i10 = ((C1323lh) this.f20445a.f20263k.a()).f20039f;
            Integer num = c1525tk.f20682d;
            if (num != null) {
                i10 = num.intValue();
            }
            if (j12 < timeUnit.toMillis(i10) && j13 < timeUnit.toMillis(AbstractC1550uk.f20748a)) {
                z11 = false;
                return !z12 && z10 && (z11 ^ true);
            }
        }
        z11 = true;
        if (z12) {
        }
    }
}
