package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class V5 {

    /* renamed from: a  reason: collision with root package name */
    private final L3 f11635a;

    /* renamed from: b  reason: collision with root package name */
    private final InterfaceC0476d6 f11636b;

    /* renamed from: c  reason: collision with root package name */
    private final X5 f11637c;

    /* renamed from: d  reason: collision with root package name */
    private long f11638d;

    /* renamed from: e  reason: collision with root package name */
    private long f11639e;

    /* renamed from: f  reason: collision with root package name */
    private AtomicLong f11640f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f11641g;

    /* renamed from: h  reason: collision with root package name */
    private volatile a f11642h;

    /* renamed from: i  reason: collision with root package name */
    private long f11643i;

    /* renamed from: j  reason: collision with root package name */
    private long f11644j;

    /* renamed from: k  reason: collision with root package name */
    private dc.c f11645k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final String f11646a;

        /* renamed from: b  reason: collision with root package name */
        private final String f11647b;

        /* renamed from: c  reason: collision with root package name */
        private final String f11648c;

        /* renamed from: d  reason: collision with root package name */
        private final String f11649d;

        /* renamed from: e  reason: collision with root package name */
        private final String f11650e;

        /* renamed from: f  reason: collision with root package name */
        private final int f11651f;

        /* renamed from: g  reason: collision with root package name */
        private final int f11652g;

        a(JSONObject jSONObject) {
            this.f11646a = jSONObject.optString("analyticsSdkVersionName", null);
            this.f11647b = jSONObject.optString("kitBuildNumber", null);
            this.f11648c = jSONObject.optString("appVer", null);
            this.f11649d = jSONObject.optString("appBuild", null);
            this.f11650e = jSONObject.optString("osVer", null);
            this.f11651f = jSONObject.optInt("osApiLev", -1);
            this.f11652g = jSONObject.optInt("attribution_id", 0);
        }

        boolean a(Lg lg) {
            lg.getClass();
            if (TextUtils.equals("5.3.0", this.f11646a) && TextUtils.equals("45003240", this.f11647b) && TextUtils.equals(lg.f(), this.f11648c) && TextUtils.equals(lg.b(), this.f11649d) && TextUtils.equals(lg.o(), this.f11650e) && this.f11651f == lg.n() && this.f11652g == lg.C()) {
                return true;
            }
            return false;
        }

        public String toString() {
            return "SessionRequestParams{mKitVersionName='" + this.f11646a + "', mKitBuildNumber='" + this.f11647b + "', mAppVersion='" + this.f11648c + "', mAppBuild='" + this.f11649d + "', mOsVersion='" + this.f11650e + "', mApiLevel=" + this.f11651f + ", mAttributionId=" + this.f11652g + '}';
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public V5(L3 l32, InterfaceC0476d6 interfaceC0476d6, X5 x52, dc.c cVar) {
        this.f11635a = l32;
        this.f11636b = interfaceC0476d6;
        this.f11637c = x52;
        this.f11645k = cVar;
        g();
    }

    private void g() {
        this.f11639e = this.f11637c.a(this.f11645k.elapsedRealtime());
        this.f11638d = this.f11637c.c(-1L);
        this.f11640f = new AtomicLong(this.f11637c.b(0L));
        this.f11641g = this.f11637c.a(true);
        long e10 = this.f11637c.e(0L);
        this.f11643i = e10;
        this.f11644j = this.f11637c.d(e10 - this.f11639e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long a(long j10) {
        InterfaceC0476d6 interfaceC0476d6 = this.f11636b;
        long seconds = TimeUnit.MILLISECONDS.toSeconds(j10 - this.f11639e);
        this.f11644j = seconds;
        ((C0501e6) interfaceC0476d6).b(seconds);
        return this.f11644j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long b() {
        return Math.max(this.f11643i - TimeUnit.MILLISECONDS.toSeconds(this.f11639e), this.f11644j);
    }

    public long c() {
        return this.f11638d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long d() {
        return this.f11644j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long e() {
        long andIncrement = this.f11640f.getAndIncrement();
        ((C0501e6) this.f11636b).c(this.f11640f.get()).b();
        return andIncrement;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public EnumC0526f6 f() {
        return this.f11637c.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean h() {
        if (this.f11641g && this.f11638d > 0) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void i() {
        ((C0501e6) this.f11636b).a();
        this.f11642h = null;
    }

    public String toString() {
        return "Session{mId=" + this.f11638d + ", mInitTime=" + this.f11639e + ", mCurrentReportId=" + this.f11640f + ", mSessionRequestParams=" + this.f11642h + ", mSleepStartSeconds=" + this.f11643i + '}';
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b(long j10) {
        boolean z10 = this.f11638d >= 0;
        boolean a10 = a();
        long elapsedRealtime = this.f11645k.elapsedRealtime();
        long j11 = this.f11643i;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        return z10 && a10 && ((((timeUnit.toSeconds(elapsedRealtime) > j11 ? 1 : (timeUnit.toSeconds(elapsedRealtime) == j11 ? 0 : -1)) < 0) || ((timeUnit.toSeconds(j10) - j11) > ((long) this.f11637c.a(this.f11635a.m().N())) ? 1 : ((timeUnit.toSeconds(j10) - j11) == ((long) this.f11637c.a(this.f11635a.m().N())) ? 0 : -1)) >= 0 || (timeUnit.toSeconds(j10 - this.f11639e) > Y5.f11829b ? 1 : (timeUnit.toSeconds(j10 - this.f11639e) == Y5.f11829b ? 0 : -1)) >= 0) ^ true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(long j10) {
        InterfaceC0476d6 interfaceC0476d6 = this.f11636b;
        long seconds = TimeUnit.MILLISECONDS.toSeconds(j10);
        this.f11643i = seconds;
        ((C0501e6) interfaceC0476d6).e(seconds).b();
    }

    public void a(boolean z10) {
        if (this.f11641g != z10) {
            this.f11641g = z10;
            ((C0501e6) this.f11636b).a(z10).b();
        }
    }

    private boolean a() {
        if (this.f11642h == null) {
            synchronized (this) {
                if (this.f11642h == null) {
                    try {
                        String asString = this.f11635a.i().a(this.f11638d, this.f11637c.a()).getAsString("report_request_parameters");
                        if (!TextUtils.isEmpty(asString)) {
                            this.f11642h = new a(new JSONObject(asString));
                        }
                    } catch (Throwable unused) {
                    }
                }
            }
        }
        a aVar = this.f11642h;
        if (aVar != null) {
            return aVar.a(this.f11635a.m());
        }
        return false;
    }
}
