package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.AdRevenue;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.List;
import java.util.Map;
/* renamed from: io.appmetrica.analytics.impl.z  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1654z {

    /* renamed from: a  reason: collision with root package name */
    public final AdRevenue f21002a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f21003b;

    /* renamed from: c  reason: collision with root package name */
    public final Hm f21004c;

    /* renamed from: d  reason: collision with root package name */
    public final Fm f21005d;

    public C1654z(AdRevenue adRevenue, boolean z10, PublicLogger publicLogger) {
        this.f21002a = adRevenue;
        this.f21003b = z10;
        this.f21004c = new Hm(100, "ad revenue strings", publicLogger);
        this.f21005d = new Fm(30720, "ad revenue payload", publicLogger);
    }

    public final xc.k a() {
        List<xc.k> k10;
        r rVar = new r();
        k10 = yc.o.k(xc.q.a(this.f21002a.adNetwork, new C1479s(rVar)), xc.q.a(this.f21002a.adPlacementId, new C1504t(rVar)), xc.q.a(this.f21002a.adPlacementName, new C1529u(rVar)), xc.q.a(this.f21002a.adUnitId, new C1554v(rVar)), xc.q.a(this.f21002a.adUnitName, new C1579w(rVar)), xc.q.a(this.f21002a.precision, new C1604x(rVar)), xc.q.a(this.f21002a.currency.getCurrencyCode(), new C1629y(rVar)));
        int i10 = 0;
        int i11 = 0;
        for (xc.k kVar : k10) {
            String str = (String) kVar.c();
            Hm hm = this.f21004c;
            hm.getClass();
            String a10 = hm.a(str);
            byte[] stringToBytesForProtobuf = StringUtils.stringToBytesForProtobuf(str);
            byte[] stringToBytesForProtobuf2 = StringUtils.stringToBytesForProtobuf(a10);
            ((id.l) kVar.d()).invoke(stringToBytesForProtobuf2);
            i11 += stringToBytesForProtobuf.length - stringToBytesForProtobuf2.length;
        }
        Integer num = (Integer) A.f17916a.get(this.f21002a.adType);
        if (num != null) {
            i10 = num.intValue();
        }
        rVar.f20478d = i10;
        C1430q c1430q = new C1430q();
        BigDecimal bigDecimal = this.f21002a.adRevenue;
        BigInteger bigInteger = J7.f18427a;
        int i12 = -bigDecimal.scale();
        BigInteger unscaledValue = bigDecimal.unscaledValue();
        while (true) {
            if (unscaledValue.compareTo(J7.f18427a) <= 0 && unscaledValue.compareTo(J7.f18428b) >= 0) {
                break;
            }
            unscaledValue = unscaledValue.divide(BigInteger.TEN);
            i12++;
        }
        xc.k a11 = xc.q.a(Long.valueOf(unscaledValue.longValue()), Integer.valueOf(i12));
        long longValue = ((Number) a11.c()).longValue();
        int intValue = ((Number) a11.d()).intValue();
        c1430q.f20402a = longValue;
        c1430q.f20403b = intValue;
        rVar.f20476b = c1430q;
        Map<String, String> map = this.f21002a.payload;
        if (map != null) {
            String b10 = AbstractC1491sb.b(map);
            Fm fm = this.f21005d;
            fm.getClass();
            byte[] stringToBytesForProtobuf3 = StringUtils.stringToBytesForProtobuf(fm.a(b10));
            rVar.f20485k = stringToBytesForProtobuf3;
            i11 += StringUtils.stringToBytesForProtobuf(b10).length - stringToBytesForProtobuf3.length;
        }
        if (this.f21003b) {
            rVar.f20475a = "autocollected".getBytes(rd.d.f29089b);
        }
        return xc.q.a(MessageNano.toByteArray(rVar), Integer.valueOf(i11));
    }
}
