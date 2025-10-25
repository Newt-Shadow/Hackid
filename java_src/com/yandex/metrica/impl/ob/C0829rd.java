package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.networktasks.api.ConfigProvider;
import com.yandex.metrica.networktasks.api.DefaultNetworkResponseHandler;
import com.yandex.metrica.networktasks.api.ExponentialBackoffDataHolder;
import com.yandex.metrica.networktasks.api.FullUrlFormer;
import com.yandex.metrica.networktasks.api.NetworkTask;
import com.yandex.metrica.networktasks.api.RequestDataHolder;
import com.yandex.metrica.networktasks.api.ResponseDataHolder;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.yandex.metrica.impl.ob.rd  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0829rd {

    /* renamed from: c  reason: collision with root package name */
    public static final C0829rd f13496c = new C0829rd();

    /* renamed from: a  reason: collision with root package name */
    private static final Map<EnumC0806qd, ExponentialBackoffDataHolder> f13494a = new LinkedHashMap();

    /* renamed from: b  reason: collision with root package name */
    private static final String f13495b = cc.a.b("com.yandex.mobile.metrica.sdk", "5.3.0", "45003240");

    private C0829rd() {
    }

    private final synchronized ExponentialBackoffDataHolder a(EnumC0806qd enumC0806qd) {
        ExponentialBackoffDataHolder exponentialBackoffDataHolder;
        Map<EnumC0806qd, ExponentialBackoffDataHolder> map = f13494a;
        exponentialBackoffDataHolder = map.get(enumC0806qd);
        if (exponentialBackoffDataHolder == null) {
            F0 g10 = F0.g();
            kotlin.jvm.internal.m.d(g10, "GlobalServiceLocator.getInstance()");
            C0504e9 s10 = g10.s();
            kotlin.jvm.internal.m.d(s10, "GlobalServiceLocator.get…ance().servicePreferences");
            exponentialBackoffDataHolder = new ExponentialBackoffDataHolder(new C0782pd(s10, enumC0806qd));
            map.put(enumC0806qd, exponentialBackoffDataHolder);
        }
        return exponentialBackoffDataHolder;
    }

    public static final NetworkTask a(Context context, ConfigProvider configProvider, C0445c0 c0445c0, E4 e42, C0428b8 c0428b8) {
        List b10;
        FullUrlFormer fullUrlFormer = new FullUrlFormer(new Og(), configProvider);
        Gm gm = new Gm();
        C0757od c0757od = new C0757od(context);
        C0682ld c0682ld = new C0682ld(f13496c.a(EnumC0806qd.DIAGNOSTIC));
        B4 b42 = new B4(configProvider, c0445c0, e42, c0428b8, new DefaultNetworkResponseHandler(), new RequestDataHolder(), new ResponseDataHolder(new C0732nd()), fullUrlFormer);
        b10 = yc.n.b(A2.a());
        return new NetworkTask(gm, c0757od, c0682ld, b42, b10, f13495b);
    }

    public static final NetworkTask a(Context context, C0558gd c0558gd, C0842s2 c0842s2, Fc fc2) {
        List b10;
        C1030zm c1030zm = new C1030zm();
        Pg pg = new Pg(c1030zm);
        C0 c02 = new C0(c0558gd);
        Gm gm = new Gm();
        C0757od c0757od = new C0757od(context);
        C0682ld c0682ld = new C0682ld(f13496c.a(EnumC0806qd.LOCATION));
        C0458cd c0458cd = new C0458cd(context, c0842s2, fc2, pg, c02, new RequestDataHolder(), new ResponseDataHolder(new C0732nd()), new FullUrlFormer(pg, c02), c1030zm);
        b10 = yc.n.b(A2.a());
        return new NetworkTask(gm, c0757od, c0682ld, c0458cd, b10, f13495b);
    }

    public static final NetworkTask a(L3 l32) {
        List b10;
        C1030zm c1030zm = new C1030zm();
        Qg qg = new Qg(c1030zm);
        C0471d1 c0471d1 = new C0471d1(l32);
        Gm gm = new Gm();
        C0757od c0757od = new C0757od(l32.g());
        C0682ld c0682ld = new C0682ld(f13496c.a(EnumC0806qd.REPORT));
        P1 p12 = new P1(l32, qg, c0471d1, new FullUrlFormer(qg, c0471d1), new RequestDataHolder(), new ResponseDataHolder(new C0732nd()), c1030zm);
        b10 = yc.n.b(A2.a());
        return new NetworkTask(gm, c0757od, c0682ld, p12, b10, f13495b);
    }

    public static final NetworkTask a(C0834ri c0834ri, Mg mg) {
        List h10;
        Kg kg = new Kg();
        F0 g10 = F0.g();
        kotlin.jvm.internal.m.d(g10, "GlobalServiceLocator.getInstance()");
        Rg rg = new Rg(kg, g10.j());
        C0 c02 = new C0(mg);
        Qm qm = new Qm();
        C0757od c0757od = new C0757od(c0834ri.b());
        C0682ld c0682ld = new C0682ld(f13496c.a(EnumC0806qd.STARTUP));
        C0795q2 c0795q2 = new C0795q2(c0834ri, new FullUrlFormer(rg, c02), new RequestDataHolder(), new ResponseDataHolder(new C0732nd()), c02);
        h10 = yc.o.h();
        return new NetworkTask(qm, c0757od, c0682ld, c0795q2, h10, f13495b);
    }
}
