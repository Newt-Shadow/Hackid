package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.billinginterface.internal.config.BillingConfig;
import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import io.appmetrica.analytics.networktasks.internal.RetryPolicyConfig;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public final class Ul {
    public final C1403om A;
    public final Map B;
    public final N9 C;

    /* renamed from: a  reason: collision with root package name */
    public final String f19071a;

    /* renamed from: b  reason: collision with root package name */
    public final List f19072b;

    /* renamed from: c  reason: collision with root package name */
    public final String f19073c;

    /* renamed from: d  reason: collision with root package name */
    public final String f19074d;

    /* renamed from: e  reason: collision with root package name */
    public final String f19075e;

    /* renamed from: f  reason: collision with root package name */
    public final List f19076f;

    /* renamed from: g  reason: collision with root package name */
    public final List f19077g;

    /* renamed from: h  reason: collision with root package name */
    public final List f19078h;

    /* renamed from: i  reason: collision with root package name */
    public final Map f19079i;

    /* renamed from: j  reason: collision with root package name */
    public final String f19080j;

    /* renamed from: k  reason: collision with root package name */
    public final String f19081k;

    /* renamed from: l  reason: collision with root package name */
    public final String f19082l;

    /* renamed from: m  reason: collision with root package name */
    public final C4 f19083m;

    /* renamed from: n  reason: collision with root package name */
    public final long f19084n;

    /* renamed from: o  reason: collision with root package name */
    public final boolean f19085o;

    /* renamed from: p  reason: collision with root package name */
    public final boolean f19086p;

    /* renamed from: q  reason: collision with root package name */
    public final String f19087q;

    /* renamed from: r  reason: collision with root package name */
    public final C1502sm f19088r;

    /* renamed from: s  reason: collision with root package name */
    public final C1569ve f19089s;

    /* renamed from: t  reason: collision with root package name */
    public final RetryPolicyConfig f19090t;

    /* renamed from: u  reason: collision with root package name */
    public final long f19091u;

    /* renamed from: v  reason: collision with root package name */
    public final long f19092v;

    /* renamed from: w  reason: collision with root package name */
    public final boolean f19093w;

    /* renamed from: x  reason: collision with root package name */
    public final BillingConfig f19094x;

    /* renamed from: y  reason: collision with root package name */
    public final C1558v3 f19095y;

    /* renamed from: z  reason: collision with root package name */
    public final C1358n2 f19096z;

    public Ul(Tl tl) {
        List unmodifiableListCopy;
        List unmodifiableListCopy2;
        List unmodifiableListCopy3;
        List unmodifiableListCopy4;
        C1403om d10;
        Map e10;
        this.f19071a = tl.f19001a;
        List list = tl.f19002b;
        if (list == null) {
            unmodifiableListCopy = null;
        } else {
            unmodifiableListCopy = CollectionUtils.unmodifiableListCopy(list);
        }
        this.f19072b = unmodifiableListCopy;
        this.f19073c = tl.f19003c;
        this.f19074d = tl.f19004d;
        this.f19075e = tl.f19005e;
        List list2 = tl.f19006f;
        if (list2 == null) {
            unmodifiableListCopy2 = null;
        } else {
            unmodifiableListCopy2 = CollectionUtils.unmodifiableListCopy(list2);
        }
        this.f19076f = unmodifiableListCopy2;
        List list3 = tl.f19007g;
        if (list3 == null) {
            unmodifiableListCopy3 = null;
        } else {
            unmodifiableListCopy3 = CollectionUtils.unmodifiableListCopy(list3);
        }
        this.f19077g = unmodifiableListCopy3;
        List list4 = tl.f19008h;
        if (list4 == null) {
            unmodifiableListCopy4 = null;
        } else {
            unmodifiableListCopy4 = CollectionUtils.unmodifiableListCopy(list4);
        }
        this.f19078h = unmodifiableListCopy4;
        Map map = tl.f19009i;
        this.f19079i = map != null ? CollectionUtils.unmodifiableMapCopy(map) : null;
        this.f19080j = tl.f19010j;
        this.f19081k = tl.f19011k;
        this.f19083m = tl.f19013m;
        this.f19089s = tl.f19014n;
        this.f19084n = tl.f19015o;
        this.f19085o = tl.f19016p;
        this.f19082l = tl.f19012l;
        this.f19086p = tl.f19017q;
        this.f19087q = Tl.a(tl);
        this.f19088r = tl.f19019s;
        this.f19091u = Tl.b(tl);
        this.f19092v = Tl.c(tl);
        this.f19093w = tl.f19022v;
        RetryPolicyConfig retryPolicyConfig = tl.f19023w;
        if (retryPolicyConfig == null) {
            C1253im c1253im = new C1253im();
            this.f19090t = new RetryPolicyConfig(c1253im.f19810w, c1253im.f19811x);
        } else {
            this.f19090t = retryPolicyConfig;
        }
        this.f19094x = tl.f19024x;
        this.f19095y = tl.f19025y;
        this.f19096z = tl.f19026z;
        if (Tl.d(tl) == null) {
            d10 = new C1403om(S7.f18926b.f19693a);
        } else {
            d10 = Tl.d(tl);
        }
        this.A = d10;
        if (Tl.e(tl) == null) {
            e10 = Collections.emptyMap();
        } else {
            e10 = Tl.e(tl);
        }
        this.B = e10;
        this.C = Tl.f(tl);
    }

    public final Tl a(C4 c42) {
        Tl tl = new Tl(c42);
        tl.f19001a = this.f19071a;
        tl.f19006f = this.f19076f;
        tl.f19007g = this.f19077g;
        tl.f19010j = this.f19080j;
        tl.f19002b = this.f19072b;
        tl.f19003c = this.f19073c;
        tl.f19004d = this.f19074d;
        tl.f19005e = this.f19075e;
        tl.f19008h = this.f19078h;
        tl.f19009i = this.f19079i;
        tl.f19011k = this.f19081k;
        tl.f19012l = this.f19082l;
        tl.f19017q = this.f19086p;
        tl.f19015o = this.f19084n;
        tl.f19016p = this.f19085o;
        tl.f19018r = this.f19087q;
        tl.f19014n = this.f19089s;
        tl.f19020t = this.f19091u;
        tl.f19021u = this.f19092v;
        tl.f19019s = this.f19088r;
        tl.f19022v = this.f19093w;
        tl.f19023w = this.f19090t;
        tl.f19025y = this.f19095y;
        tl.f19024x = this.f19094x;
        tl.f19026z = this.f19096z;
        tl.A = this.A;
        tl.B = this.B;
        tl.C = this.C;
        return tl;
    }

    public final String toString() {
        return "StartupStateModel{uuid='" + this.f19071a + "', reportUrls=" + this.f19072b + ", getAdUrl='" + this.f19073c + "', reportAdUrl='" + this.f19074d + "', certificateUrl='" + this.f19075e + "', hostUrlsFromStartup=" + this.f19076f + ", hostUrlsFromClient=" + this.f19077g + ", diagnosticUrls=" + this.f19078h + ", customSdkHosts=" + this.f19079i + ", encodedClidsFromResponse='" + this.f19080j + "', lastClientClidsForStartupRequest='" + this.f19081k + "', lastChosenForRequestClids='" + this.f19082l + "', collectingFlags=" + this.f19083m + ", obtainTime=" + this.f19084n + ", hadFirstStartup=" + this.f19085o + ", startupDidNotOverrideClids=" + this.f19086p + ", countryInit='" + this.f19087q + "', statSending=" + this.f19088r + ", permissionsCollectingConfig=" + this.f19089s + ", retryPolicyConfig=" + this.f19090t + ", obtainServerTime=" + this.f19091u + ", firstStartupServerTime=" + this.f19092v + ", outdated=" + this.f19093w + ", autoInappCollectingConfig=" + this.f19094x + ", cacheControl=" + this.f19095y + ", attributionConfig=" + this.f19096z + ", startupUpdateConfig=" + this.A + ", modulesRemoteConfigs=" + this.B + ", externalAttributionConfig=" + this.C + '}';
    }
}
