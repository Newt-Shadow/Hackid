package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.billinginterface.internal.config.BillingConfig;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
import io.appmetrica.analytics.networktasks.internal.RetryPolicyConfig;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public final class Rl implements ProtobufConverter {

    /* renamed from: a  reason: collision with root package name */
    public final C1594we f18902a = new C1594we();

    /* renamed from: b  reason: collision with root package name */
    public final C1465ra f18903b = new C1465ra();

    /* renamed from: c  reason: collision with root package name */
    public final C1527tm f18904c = new C1527tm();

    /* renamed from: d  reason: collision with root package name */
    public final C1433q2 f18905d = new C1433q2();

    /* renamed from: e  reason: collision with root package name */
    public final C1608x3 f18906e = new C1608x3();

    /* renamed from: f  reason: collision with root package name */
    public final C1383o2 f18907f = new C1383o2();

    /* renamed from: g  reason: collision with root package name */
    public final H6 f18908g = new H6();

    /* renamed from: h  reason: collision with root package name */
    public final C1428pm f18909h = new C1428pm();

    /* renamed from: i  reason: collision with root package name */
    public final C1593wd f18910i = new C1593wd();

    /* renamed from: j  reason: collision with root package name */
    public final O9 f18911j = new O9();

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final C1253im fromModel(Ul ul) {
        C1253im c1253im = new C1253im();
        c1253im.f19806s = ul.f19091u;
        c1253im.f19807t = ul.f19092v;
        String str = ul.f19071a;
        if (str != null) {
            c1253im.f19788a = str;
        }
        List list = ul.f19076f;
        if (list != null) {
            c1253im.f19793f = (String[]) list.toArray(new String[list.size()]);
        }
        List list2 = ul.f19077g;
        if (list2 != null) {
            c1253im.f19794g = (String[]) list2.toArray(new String[list2.size()]);
        }
        List list3 = ul.f19072b;
        if (list3 != null) {
            c1253im.f19790c = (String[]) list3.toArray(new String[list3.size()]);
        }
        List list4 = ul.f19078h;
        if (list4 != null) {
            c1253im.f19802o = (String[]) list4.toArray(new String[list4.size()]);
        }
        Map<String, ? extends List<String>> map = ul.f19079i;
        if (map != null) {
            c1253im.f19795h = this.f18908g.fromModel(map);
        }
        C1569ve c1569ve = ul.f19089s;
        if (c1569ve != null) {
            c1253im.f19809v = this.f18902a.fromModel(c1569ve);
        }
        String str2 = ul.f19080j;
        if (str2 != null) {
            c1253im.f19797j = str2;
        }
        String str3 = ul.f19073c;
        if (str3 != null) {
            c1253im.f19791d = str3;
        }
        String str4 = ul.f19074d;
        if (str4 != null) {
            c1253im.f19792e = str4;
        }
        String str5 = ul.f19075e;
        if (str5 != null) {
            c1253im.f19805r = str5;
        }
        c1253im.f19796i = this.f18903b.fromModel(ul.f19083m);
        String str6 = ul.f19081k;
        if (str6 != null) {
            c1253im.f19798k = str6;
        }
        String str7 = ul.f19082l;
        if (str7 != null) {
            c1253im.f19799l = str7;
        }
        c1253im.f19800m = ul.f19086p;
        c1253im.f19789b = ul.f19084n;
        c1253im.f19804q = ul.f19085o;
        RetryPolicyConfig retryPolicyConfig = ul.f19090t;
        c1253im.f19810w = retryPolicyConfig.maxIntervalSeconds;
        c1253im.f19811x = retryPolicyConfig.exponentialMultiplier;
        String str8 = ul.f19087q;
        if (str8 != null) {
            c1253im.f19801n = str8;
        }
        C1502sm c1502sm = ul.f19088r;
        if (c1502sm != null) {
            this.f18904c.getClass();
            C1229hm c1229hm = new C1229hm();
            c1229hm.f19759a = c1502sm.f20610a;
            c1253im.f19803p = c1229hm;
        }
        c1253im.f19808u = ul.f19093w;
        BillingConfig billingConfig = ul.f19094x;
        if (billingConfig != null) {
            c1253im.f19813z = this.f18905d.fromModel(billingConfig);
        }
        C1558v3 c1558v3 = ul.f19095y;
        if (c1558v3 != null) {
            this.f18906e.getClass();
            C1054am c1054am = new C1054am();
            c1054am.f19406a = c1558v3.f20773a;
            c1253im.f19812y = c1054am;
        }
        C1358n2 c1358n2 = ul.f19096z;
        if (c1358n2 != null) {
            c1253im.A = this.f18907f.fromModel(c1358n2);
        }
        c1253im.B = this.f18909h.fromModel(ul.A);
        c1253im.C = this.f18910i.fromModel(ul.B);
        c1253im.D = this.f18911j.fromModel(ul.C);
        return c1253im;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final Ul toModel(C1253im c1253im) {
        Tl tl = new Tl(this.f18903b.toModel(c1253im.f19796i));
        tl.f19001a = c1253im.f19788a;
        tl.f19010j = c1253im.f19797j;
        tl.f19003c = c1253im.f19791d;
        tl.f19002b = Arrays.asList(c1253im.f19790c);
        tl.f19007g = Arrays.asList(c1253im.f19794g);
        tl.f19006f = Arrays.asList(c1253im.f19793f);
        tl.f19004d = c1253im.f19792e;
        tl.f19005e = c1253im.f19805r;
        tl.f19008h = Arrays.asList(c1253im.f19802o);
        tl.f19011k = c1253im.f19798k;
        tl.f19012l = c1253im.f19799l;
        tl.f19017q = c1253im.f19800m;
        tl.f19015o = c1253im.f19789b;
        tl.f19016p = c1253im.f19804q;
        tl.f19020t = c1253im.f19806s;
        tl.f19021u = c1253im.f19807t;
        tl.f19018r = c1253im.f19801n;
        tl.f19022v = c1253im.f19808u;
        tl.f19023w = new RetryPolicyConfig(c1253im.f19810w, c1253im.f19811x);
        tl.f19009i = this.f18908g.toModel(c1253im.f19795h);
        C1179fm c1179fm = c1253im.f19809v;
        if (c1179fm != null) {
            this.f18902a.getClass();
            tl.f19014n = new C1569ve(c1179fm.f19653a, c1179fm.f19654b);
        }
        C1229hm c1229hm = c1253im.f19803p;
        if (c1229hm != null) {
            this.f18904c.getClass();
            tl.f19019s = new C1502sm(c1229hm.f19759a);
        }
        Zl zl = c1253im.f19813z;
        if (zl != null) {
            this.f18905d.getClass();
            tl.f19024x = new BillingConfig(zl.f19355a, zl.f19356b);
        }
        C1054am c1054am = c1253im.f19812y;
        if (c1054am != null) {
            this.f18906e.getClass();
            tl.f19025y = new C1558v3(c1054am.f19406a);
        }
        Yl yl = c1253im.A;
        if (yl != null) {
            tl.f19026z = this.f18907f.toModel(yl);
        }
        C1204gm c1204gm = c1253im.B;
        if (c1204gm != null) {
            this.f18909h.getClass();
            tl.A = new C1403om(c1204gm.f19693a);
        }
        tl.B = this.f18910i.toModel(c1253im.C);
        C1104cm c1104cm = c1253im.D;
        if (c1104cm != null) {
            this.f18911j.getClass();
            tl.C = new N9(c1104cm.f19487a);
        }
        return new Ul(tl);
    }
}
