package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.billinginterface.internal.config.BillingConfig;
import io.appmetrica.analytics.networktasks.internal.RetryPolicyConfig;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public final class Ql {
    public final C1403om A;
    public final Map B;
    public final N9 C;

    /* renamed from: a  reason: collision with root package name */
    public final String f18828a;

    /* renamed from: b  reason: collision with root package name */
    public final String f18829b;

    /* renamed from: c  reason: collision with root package name */
    public final Ul f18830c;

    /* renamed from: d  reason: collision with root package name */
    public final String f18831d;

    /* renamed from: e  reason: collision with root package name */
    public final List f18832e;

    /* renamed from: f  reason: collision with root package name */
    public final List f18833f;

    /* renamed from: g  reason: collision with root package name */
    public final List f18834g;

    /* renamed from: h  reason: collision with root package name */
    public final Map f18835h;

    /* renamed from: i  reason: collision with root package name */
    public final String f18836i;

    /* renamed from: j  reason: collision with root package name */
    public final String f18837j;

    /* renamed from: k  reason: collision with root package name */
    public final String f18838k;

    /* renamed from: l  reason: collision with root package name */
    public final String f18839l;

    /* renamed from: m  reason: collision with root package name */
    public final String f18840m;

    /* renamed from: n  reason: collision with root package name */
    public final C4 f18841n;

    /* renamed from: o  reason: collision with root package name */
    public final long f18842o;

    /* renamed from: p  reason: collision with root package name */
    public final boolean f18843p;

    /* renamed from: q  reason: collision with root package name */
    public final boolean f18844q;

    /* renamed from: r  reason: collision with root package name */
    public final String f18845r;

    /* renamed from: s  reason: collision with root package name */
    public final C1569ve f18846s;

    /* renamed from: t  reason: collision with root package name */
    public final RetryPolicyConfig f18847t;

    /* renamed from: u  reason: collision with root package name */
    public final long f18848u;

    /* renamed from: v  reason: collision with root package name */
    public final long f18849v;

    /* renamed from: w  reason: collision with root package name */
    public final boolean f18850w;

    /* renamed from: x  reason: collision with root package name */
    public final BillingConfig f18851x;

    /* renamed from: y  reason: collision with root package name */
    public final C1558v3 f18852y;

    /* renamed from: z  reason: collision with root package name */
    public final C1358n2 f18853z;

    public Ql(String str, String str2, Ul ul) {
        this.f18828a = str;
        this.f18829b = str2;
        this.f18830c = ul;
        this.f18831d = ul.f19071a;
        this.f18832e = ul.f19072b;
        this.f18833f = ul.f19076f;
        this.f18834g = ul.f19077g;
        this.f18835h = ul.f19079i;
        this.f18836i = ul.f19073c;
        this.f18837j = ul.f19074d;
        this.f18838k = ul.f19080j;
        this.f18839l = ul.f19081k;
        this.f18840m = ul.f19082l;
        this.f18841n = ul.f19083m;
        this.f18842o = ul.f19084n;
        this.f18843p = ul.f19085o;
        this.f18844q = ul.f19086p;
        this.f18845r = ul.f19087q;
        this.f18846s = ul.f19089s;
        this.f18847t = ul.f19090t;
        this.f18848u = ul.f19091u;
        this.f18849v = ul.f19092v;
        this.f18850w = ul.f19093w;
        this.f18851x = ul.f19094x;
        this.f18852y = ul.f19095y;
        this.f18853z = ul.f19096z;
        this.A = ul.A;
        this.B = ul.B;
        this.C = ul.C;
    }

    public final String a() {
        return this.f18828a;
    }

    public final String b() {
        return this.f18829b;
    }

    public final long c() {
        return this.f18849v;
    }

    public final long d() {
        return this.f18848u;
    }

    public final String e() {
        return this.f18831d;
    }

    public final String toString() {
        return "StartupState(deviceId=" + this.f18828a + ", deviceIdHash=" + this.f18829b + ", startupStateModel=" + this.f18830c + ')';
    }
}
