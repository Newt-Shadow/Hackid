package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.WrapUtils;
import java.util.Collection;
import java.util.List;
/* renamed from: io.appmetrica.analytics.impl.lh  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1323lh extends C1088c6 {

    /* renamed from: d  reason: collision with root package name */
    public boolean f20037d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f20038e;

    /* renamed from: f  reason: collision with root package name */
    public int f20039f;

    /* renamed from: g  reason: collision with root package name */
    public int f20040g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f20041h;

    /* renamed from: i  reason: collision with root package name */
    public int f20042i;

    /* renamed from: j  reason: collision with root package name */
    public Boolean f20043j;

    /* renamed from: k  reason: collision with root package name */
    public InterfaceC1248ih f20044k;

    /* renamed from: l  reason: collision with root package name */
    public final InterfaceC1298kh f20045l;

    /* renamed from: m  reason: collision with root package name */
    public String f20046m;

    /* renamed from: n  reason: collision with root package name */
    public boolean f20047n;

    /* renamed from: o  reason: collision with root package name */
    public boolean f20048o;

    /* renamed from: p  reason: collision with root package name */
    public String f20049p;

    /* renamed from: q  reason: collision with root package name */
    public List f20050q;

    /* renamed from: r  reason: collision with root package name */
    public int f20051r;

    /* renamed from: s  reason: collision with root package name */
    public long f20052s;

    /* renamed from: t  reason: collision with root package name */
    public long f20053t;

    /* renamed from: u  reason: collision with root package name */
    public boolean f20054u;

    /* renamed from: v  reason: collision with root package name */
    public long f20055v;

    /* renamed from: w  reason: collision with root package name */
    public List f20056w;

    public C1323lh(C1386o5 c1386o5) {
        this.f20045l = c1386o5;
    }

    public final void a(int i10) {
        this.f20051r = i10;
    }

    public final void b(List<String> list) {
        this.f20050q = list;
    }

    public final String c() {
        return this.f20046m;
    }

    public final void d(boolean z10) {
        this.f20037d = z10;
    }

    public final void e(boolean z10) {
        this.f20041h = z10;
    }

    public final void f(boolean z10) {
        this.f20047n = z10;
    }

    public final String g() {
        return (String) WrapUtils.getOrDefault(this.f20049p, "");
    }

    public final boolean h() {
        return this.f20044k.a(this.f20043j);
    }

    public final int i() {
        return this.f20040g;
    }

    public final long j() {
        return this.f20055v;
    }

    public final int k() {
        return this.f20042i;
    }

    public final long l() {
        return this.f20052s;
    }

    public final long m() {
        return this.f20053t;
    }

    public final List<String> n() {
        return this.f20050q;
    }

    public final int o() {
        return this.f20039f;
    }

    public final boolean p() {
        return this.f20048o;
    }

    public final boolean q() {
        return this.f20038e;
    }

    public final boolean r() {
        return this.f20037d;
    }

    public final boolean s() {
        return this.f20047n;
    }

    public final boolean t() {
        if (isIdentifiersValid() && !Rn.a((Collection) this.f20050q) && this.f20054u) {
            return true;
        }
        return false;
    }

    @Override // io.appmetrica.analytics.impl.C1088c6, io.appmetrica.analytics.networktasks.internal.BaseRequestConfig
    public final String toString() {
        return "ReportRequestConfig{mLocationTracking=" + this.f20037d + ", mFirstActivationAsUpdate=" + this.f20038e + ", mSessionTimeout=" + this.f20039f + ", mDispatchPeriod=" + this.f20040g + ", mLogEnabled=" + this.f20041h + ", mMaxReportsCount=" + this.f20042i + ", dataSendingEnabledFromArguments=" + this.f20043j + ", dataSendingStrategy=" + this.f20044k + ", mPreloadInfoSendingStrategy=" + this.f20045l + ", mApiKey='" + this.f20046m + "', mPermissionsCollectingEnabled=" + this.f20047n + ", mFeaturesCollectingEnabled=" + this.f20048o + ", mClidsFromStartupResponse='" + this.f20049p + "', mReportHosts=" + this.f20050q + ", mAttributionId=" + this.f20051r + ", mPermissionsCollectingIntervalSeconds=" + this.f20052s + ", mPermissionsForceSendIntervalSeconds=" + this.f20053t + ", mClidsFromClientMatchClidsFromStartupRequest=" + this.f20054u + ", mMaxReportsInDbCount=" + this.f20055v + ", mCertificates=" + this.f20056w + "} " + super.toString();
    }

    public final boolean u() {
        return ((C1386o5) this.f20045l).A();
    }

    public final void a(long j10) {
        this.f20055v = j10;
    }

    public final void b(long j10) {
        this.f20052s = j10;
    }

    public final void c(long j10) {
        this.f20053t = j10;
    }

    public final void d(int i10) {
        this.f20039f = i10;
    }

    public final List<String> e() {
        return this.f20056w;
    }

    public final boolean f() {
        return this.f20054u;
    }

    public final void a(List<String> list) {
        this.f20056w = list;
    }

    public final void b(boolean z10) {
        this.f20048o = z10;
    }

    public final void c(boolean z10) {
        this.f20038e = z10;
    }

    public final int d() {
        return this.f20051r;
    }

    public final void a(Boolean bool, InterfaceC1248ih interfaceC1248ih) {
        this.f20043j = bool;
        this.f20044k = interfaceC1248ih;
    }

    public final void b(int i10) {
        this.f20040g = i10;
    }

    public final void c(int i10) {
        this.f20042i = i10;
    }

    public final void a(boolean z10) {
        this.f20054u = z10;
    }
}
