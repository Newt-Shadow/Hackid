package io.appmetrica.analytics.impl;

import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public final class Ml extends C1088c6 {

    /* renamed from: d  reason: collision with root package name */
    public List f18609d;

    /* renamed from: e  reason: collision with root package name */
    public List f18610e;

    /* renamed from: f  reason: collision with root package name */
    public String f18611f;

    /* renamed from: g  reason: collision with root package name */
    public String f18612g;

    /* renamed from: h  reason: collision with root package name */
    public Map f18613h;

    /* renamed from: i  reason: collision with root package name */
    public J3 f18614i;

    /* renamed from: j  reason: collision with root package name */
    public List f18615j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f18616k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f18617l;

    /* renamed from: m  reason: collision with root package name */
    public String f18618m;

    /* renamed from: n  reason: collision with root package name */
    public long f18619n;

    /* renamed from: o  reason: collision with root package name */
    public final C1272jg f18620o;

    /* renamed from: p  reason: collision with root package name */
    public final R7 f18621p;

    public Ml() {
        this(C1665za.j().t(), new R7());
    }

    public final long a(long j10) {
        if (this.f18619n == 0) {
            this.f18619n = j10;
        }
        return this.f18619n;
    }

    public final J3 c() {
        return this.f18614i;
    }

    public final Map<String, String> d() {
        return this.f18613h;
    }

    public final String e() {
        return this.f18618m;
    }

    public final String f() {
        return this.f18611f;
    }

    public final long g() {
        return this.f18619n;
    }

    public final String h() {
        return this.f18612g;
    }

    public final List<String> i() {
        return this.f18615j;
    }

    public final C1272jg j() {
        return this.f18620o;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0040, code lost:
        if ((!r8) != false) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0056, code lost:
        if (r4 != null) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x006d, code lost:
        if ((!r7) != false) goto L35;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<java.lang.String> k() {
        /*
            r9 = this;
            java.util.LinkedHashSet r0 = new java.util.LinkedHashSet
            r0.<init>()
            java.util.List r1 = r9.f18609d
            boolean r1 = io.appmetrica.analytics.impl.Rn.a(r1)
            if (r1 != 0) goto L12
            java.util.List r1 = r9.f18609d
            r0.addAll(r1)
        L12:
            java.util.List r1 = r9.f18610e
            boolean r1 = io.appmetrica.analytics.impl.Rn.a(r1)
            if (r1 != 0) goto L1f
            java.util.List r1 = r9.f18610e
            r0.addAll(r1)
        L1f:
            io.appmetrica.analytics.impl.R7 r1 = r9.f18621p
            io.appmetrica.analytics.impl.Em r1 = r1.f18878a
            java.lang.Object r1 = r1.a()
            java.lang.String[] r1 = (java.lang.String[]) r1
            r2 = 0
            r3 = 0
            if (r1 == 0) goto L59
            java.util.ArrayList r4 = new java.util.ArrayList
            r4.<init>()
            int r5 = r1.length
            r6 = r2
        L34:
            if (r6 >= r5) goto L4c
            r7 = r1[r6]
            if (r7 == 0) goto L43
            boolean r8 = rd.n.b0(r7)
            r8 = r8 ^ 1
            if (r8 == 0) goto L43
            goto L44
        L43:
            r7 = r3
        L44:
            if (r7 == 0) goto L49
            r4.add(r7)
        L49:
            int r6 = r6 + 1
            goto L34
        L4c:
            boolean r1 = r4.isEmpty()
            r1 = r1 ^ 1
            if (r1 == 0) goto L55
            goto L56
        L55:
            r4 = r3
        L56:
            if (r4 == 0) goto L59
            goto L79
        L59:
            java.lang.String[] r1 = io.appmetrica.analytics.BuildConfig.DEFAULT_HOSTS
            java.util.ArrayList r4 = new java.util.ArrayList
            r4.<init>()
            int r5 = r1.length
        L61:
            if (r2 >= r5) goto L79
            r6 = r1[r2]
            if (r6 == 0) goto L70
            boolean r7 = rd.n.b0(r6)
            r7 = r7 ^ 1
            if (r7 == 0) goto L70
            goto L71
        L70:
            r6 = r3
        L71:
            if (r6 == 0) goto L76
            r4.add(r6)
        L76:
            int r2 = r2 + 1
            goto L61
        L79:
            r0.addAll(r4)
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>(r0)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: io.appmetrica.analytics.impl.Ml.k():java.util.List");
    }

    public final List<String> l() {
        return this.f18610e;
    }

    public final List<String> m() {
        return this.f18609d;
    }

    public final boolean n() {
        return this.f18616k;
    }

    public final boolean o() {
        return this.f18617l;
    }

    @Override // io.appmetrica.analytics.impl.C1088c6, io.appmetrica.analytics.networktasks.internal.BaseRequestConfig
    public final String toString() {
        return "StartupRequestConfig{mStartupHostsFromStartup=" + this.f18609d + ", mStartupHostsFromClient=" + this.f18610e + ", mDistributionReferrer='" + this.f18611f + "', mInstallReferrerSource='" + this.f18612g + "', mClidsFromClient=" + this.f18613h + ", mNewCustomHosts=" + this.f18615j + ", mHasNewCustomHosts=" + this.f18616k + ", mSuccessfulStartup=" + this.f18617l + ", mCountryInit='" + this.f18618m + "', mFirstStartupTime=" + this.f18619n + "} " + super.toString();
    }

    public Ml(C1272jg c1272jg, R7 r72) {
        this.f18614i = new J3(null, EnumC1065b8.f19425c);
        this.f18619n = 0L;
        this.f18620o = c1272jg;
        this.f18621p = r72;
    }

    public final void a(List<String> list) {
        this.f18615j = list;
    }

    public final void a(boolean z10) {
        this.f18616k = z10;
    }

    public final void a(String str) {
        this.f18618m = str;
    }
}
