package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.MessageNano;
import com.yandex.metrica.AdRevenue;
import com.yandex.metrica.impl.ob.C0460cf;
import java.math.BigDecimal;
import java.util.Currency;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public final class Sg {

    /* renamed from: a  reason: collision with root package name */
    private final InterfaceC0543fn<String> f11279a;

    /* renamed from: b  reason: collision with root package name */
    private final InterfaceC0543fn<String> f11280b;

    /* renamed from: c  reason: collision with root package name */
    private final AdRevenue f11281c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class a extends kotlin.jvm.internal.n implements id.l {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C0460cf f11282a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(C0460cf c0460cf) {
            super(1);
            this.f11282a = c0460cf;
        }

        @Override // id.l
        public Object invoke(Object obj) {
            this.f11282a.f12177e = (byte[]) obj;
            return xc.t.f32733a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class b extends kotlin.jvm.internal.n implements id.l {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C0460cf f11283a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(C0460cf c0460cf) {
            super(1);
            this.f11283a = c0460cf;
        }

        @Override // id.l
        public Object invoke(Object obj) {
            this.f11283a.f12180h = (byte[]) obj;
            return xc.t.f32733a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class c extends kotlin.jvm.internal.n implements id.l {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C0460cf f11284a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(C0460cf c0460cf) {
            super(1);
            this.f11284a = c0460cf;
        }

        @Override // id.l
        public Object invoke(Object obj) {
            this.f11284a.f12181i = (byte[]) obj;
            return xc.t.f32733a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class d extends kotlin.jvm.internal.n implements id.l {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C0460cf f11285a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(C0460cf c0460cf) {
            super(1);
            this.f11285a = c0460cf;
        }

        @Override // id.l
        public Object invoke(Object obj) {
            this.f11285a.f12178f = (byte[]) obj;
            return xc.t.f32733a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class e extends kotlin.jvm.internal.n implements id.l {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C0460cf f11286a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(C0460cf c0460cf) {
            super(1);
            this.f11286a = c0460cf;
        }

        @Override // id.l
        public Object invoke(Object obj) {
            this.f11286a.f12179g = (byte[]) obj;
            return xc.t.f32733a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class f extends kotlin.jvm.internal.n implements id.l {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C0460cf f11287a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(C0460cf c0460cf) {
            super(1);
            this.f11287a = c0460cf;
        }

        @Override // id.l
        public Object invoke(Object obj) {
            this.f11287a.f12182j = (byte[]) obj;
            return xc.t.f32733a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class g extends kotlin.jvm.internal.n implements id.l {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C0460cf f11288a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(C0460cf c0460cf) {
            super(1);
            this.f11288a = c0460cf;
        }

        @Override // id.l
        public Object invoke(Object obj) {
            this.f11288a.f12175c = (byte[]) obj;
            return xc.t.f32733a;
        }
    }

    public Sg(AdRevenue adRevenue, C0467cm c0467cm) {
        this.f11281c = adRevenue;
        this.f11279a = new C0493dn(100, "ad revenue strings", c0467cm);
        this.f11280b = new C0468cn(30720, "ad revenue payload", c0467cm);
    }

    public final xc.k a() {
        List<xc.k> k10;
        Map map;
        C0460cf c0460cf = new C0460cf();
        xc.k a10 = xc.q.a(this.f11281c.adNetwork, new a(c0460cf));
        xc.k a11 = xc.q.a(this.f11281c.adPlacementId, new b(c0460cf));
        xc.k a12 = xc.q.a(this.f11281c.adPlacementName, new c(c0460cf));
        xc.k a13 = xc.q.a(this.f11281c.adUnitId, new d(c0460cf));
        xc.k a14 = xc.q.a(this.f11281c.adUnitName, new e(c0460cf));
        xc.k a15 = xc.q.a(this.f11281c.precision, new f(c0460cf));
        Currency currency = this.f11281c.currency;
        kotlin.jvm.internal.m.d(currency, "revenue.currency");
        k10 = yc.o.k(a10, a11, a12, a13, a14, a15, xc.q.a(currency.getCurrencyCode(), new g(c0460cf)));
        int i10 = 0;
        int i11 = 0;
        for (xc.k kVar : k10) {
            String str = (String) kVar.c();
            byte[] e10 = C0419b.e(str);
            kotlin.jvm.internal.m.d(e10, "StringUtils.stringToBytesForProtobuf(value)");
            byte[] e11 = C0419b.e(this.f11279a.a(str));
            kotlin.jvm.internal.m.d(e11, "StringUtils.stringToBytesForProtobuf(result)");
            ((id.l) kVar.d()).invoke(e11);
            i11 += e10.length - e11.length;
        }
        map = Tg.f11425a;
        Integer num = (Integer) map.get(this.f11281c.adType);
        if (num != null) {
            i10 = num.intValue();
        }
        c0460cf.f12176d = i10;
        C0460cf.a aVar = new C0460cf.a();
        BigDecimal bigDecimal = this.f11281c.adRevenue;
        kotlin.jvm.internal.m.d(bigDecimal, "revenue.adRevenue");
        xc.k a16 = Ol.a(bigDecimal);
        Nl nl = new Nl(((Number) a16.c()).longValue(), ((Number) a16.d()).intValue());
        aVar.f12184a = nl.b();
        aVar.f12185b = nl.a();
        c0460cf.f12174b = aVar;
        Map<String, String> map2 = this.f11281c.payload;
        if (map2 != null) {
            String g10 = Tl.g(map2);
            byte[] e12 = C0419b.e(this.f11280b.a(g10));
            kotlin.jvm.internal.m.d(e12, "StringUtils.stringToByte…oadTrimmer.trim(payload))");
            c0460cf.f12183k = e12;
            i11 += C0419b.e(g10).length - e12.length;
        }
        return xc.q.a(MessageNano.toByteArray(c0460cf), Integer.valueOf(i11));
    }
}
