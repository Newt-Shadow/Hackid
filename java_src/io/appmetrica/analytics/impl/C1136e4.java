package io.appmetrica.analytics.impl;

import android.util.Base64;
import android.util.Pair;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.coreutils.internal.WrapUtils;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import java.util.HashMap;
/* renamed from: io.appmetrica.analytics.impl.e4  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1136e4 extends C1138e6 {

    /* renamed from: q  reason: collision with root package name */
    public HashMap f19562q;

    /* renamed from: r  reason: collision with root package name */
    public Hm f19563r;

    /* renamed from: s  reason: collision with root package name */
    public Fm f19564s;

    /* renamed from: t  reason: collision with root package name */
    public Fm f19565t;

    /* renamed from: u  reason: collision with root package name */
    public C1458r3 f19566u;

    /* renamed from: v  reason: collision with root package name */
    public Hm f19567v;

    public C1136e4(PublicLogger publicLogger) {
        this.f19562q = new HashMap();
        a(publicLogger);
    }

    public static C1138e6 b(String str, String str2) {
        C1138e6 c1138e6 = new C1138e6("", 0);
        EnumC1367nb enumC1367nb = EnumC1367nb.EVENT_TYPE_UNDEFINED;
        c1138e6.f19574d = 5376;
        c1138e6.a(str, str2);
        return c1138e6;
    }

    public static C1138e6 n() {
        C1138e6 c1138e6 = new C1138e6("", 0);
        EnumC1367nb enumC1367nb = EnumC1367nb.EVENT_TYPE_UNDEFINED;
        c1138e6.f19574d = 5632;
        return c1138e6;
    }

    public static C1138e6 o() {
        C1138e6 c1138e6 = new C1138e6("", 0);
        EnumC1367nb enumC1367nb = EnumC1367nb.EVENT_TYPE_UNDEFINED;
        c1138e6.f19574d = 40961;
        return c1138e6;
    }

    public final void a(String str, String str2, EnumC1111d4 enumC1111d4) {
        if (!StringUtils.equalsNullSafety(str, str2)) {
            this.f19562q.put(enumC1111d4, Integer.valueOf(StringUtils.getUTF8Bytes(str).length - StringUtils.getUTF8Bytes(str2).length));
        } else {
            this.f19562q.remove(enumC1111d4);
        }
        int i10 = 0;
        for (Integer num : this.f19562q.values()) {
            i10 += num.intValue();
        }
        this.f19577g = i10;
    }

    @Override // io.appmetrica.analytics.impl.C1138e6
    public final void c(String str) {
        Hm hm = this.f19567v;
        hm.getClass();
        this.f19578h = hm.a(str);
    }

    public final String d(String str) {
        Hm hm = this.f19563r;
        hm.getClass();
        String a10 = hm.a(str);
        a(str, a10, EnumC1111d4.NAME);
        return a10;
    }

    public final String e(String str) {
        Fm fm = this.f19564s;
        fm.getClass();
        String a10 = fm.a(str);
        a(str, a10, EnumC1111d4.VALUE);
        return a10;
    }

    public final C1136e4 f(String str) {
        Fm fm = this.f19565t;
        fm.getClass();
        String a10 = fm.a(str);
        a(str, a10, EnumC1111d4.VALUE);
        this.f19572b = a10;
        return this;
    }

    public final HashMap<EnumC1111d4, Integer> p() {
        return this.f19562q;
    }

    @Override // io.appmetrica.analytics.impl.C1138e6, io.appmetrica.analytics.coreapi.internal.event.CounterReportApi
    public final void setName(String str) {
        this.f19571a = d(str);
    }

    @Override // io.appmetrica.analytics.impl.C1138e6, io.appmetrica.analytics.coreapi.internal.event.CounterReportApi
    public final void setValue(String str) {
        this.f19572b = e(str);
    }

    @Override // io.appmetrica.analytics.impl.C1138e6, io.appmetrica.analytics.coreapi.internal.event.CounterReportApi
    public final void setValueBytes(byte[] bArr) {
        a(bArr);
    }

    public C1136e4(String str, int i10, PublicLogger publicLogger) {
        this("", str, i10, publicLogger);
    }

    public C1136e4(String str, String str2, int i10, PublicLogger publicLogger) {
        this(str, str2, i10, 0, publicLogger);
    }

    public C1136e4(String str, String str2, int i10, int i11, PublicLogger publicLogger) {
        this.f19562q = new HashMap();
        a(publicLogger);
        this.f19572b = e(str);
        this.f19571a = d(str2);
        setType(i10);
        setCustomType(i11);
    }

    public final C1136e4 a(HashMap<EnumC1111d4, Integer> hashMap) {
        this.f19562q = hashMap;
        return this;
    }

    public final void a(PublicLogger publicLogger) {
        this.f19563r = new Hm(1000, "event name", publicLogger);
        this.f19564s = new Fm(245760, "event value", publicLogger);
        this.f19565t = new Fm(1024000, "event extended value", publicLogger);
        this.f19566u = new C1458r3(245760, "event value bytes", publicLogger);
        this.f19567v = new Hm(200, "user profile id", publicLogger);
    }

    public C1136e4(byte[] bArr, String str, int i10, PublicLogger publicLogger) {
        this.f19562q = new HashMap();
        a(publicLogger);
        a(bArr);
        this.f19571a = d(str);
        setType(i10);
    }

    public final void a(byte[] bArr) {
        C1458r3 c1458r3 = this.f19566u;
        c1458r3.getClass();
        byte[] a10 = c1458r3.a(bArr);
        EnumC1111d4 enumC1111d4 = EnumC1111d4.VALUE;
        if (bArr.length != a10.length) {
            this.f19562q.put(enumC1111d4, Integer.valueOf(bArr.length - a10.length));
        } else {
            this.f19562q.remove(enumC1111d4);
        }
        int i10 = 0;
        for (Integer num : this.f19562q.values()) {
            i10 += num.intValue();
        }
        this.f19577g = i10;
        super.setValueBytes(a10);
    }

    public static C1138e6 a(On on) {
        C1138e6 o10 = o();
        o10.setValue(new String(Base64.encode(MessageNano.toByteArray(on), 0)));
        return o10;
    }

    public static C1136e4 a(PublicLogger publicLogger, Ni ni) {
        int i10;
        C1136e4 c1136e4 = new C1136e4(publicLogger);
        EnumC1367nb enumC1367nb = EnumC1367nb.EVENT_TYPE_UNDEFINED;
        c1136e4.f19574d = 40976;
        Li li = new Li();
        li.f18546b = ni.f18646a.currency.getCurrencyCode().getBytes();
        li.f18550f = ni.f18646a.priceMicros;
        li.f18547c = StringUtils.stringToBytesForProtobuf(new Hm(200, "revenue productID", ni.f18650e).a(ni.f18646a.productID));
        li.f18545a = ((Integer) WrapUtils.getOrDefault(ni.f18646a.quantity, 1)).intValue();
        Fm fm = ni.f18647b;
        String str = ni.f18646a.payload;
        fm.getClass();
        li.f18548d = StringUtils.stringToBytesForProtobuf(fm.a(str));
        if (Rn.a(ni.f18646a.receipt)) {
            Gi gi = new Gi();
            String str2 = (String) ni.f18648c.a(ni.f18646a.receipt.data);
            i10 = true ^ StringUtils.equalsNullSafety(ni.f18646a.receipt.data, str2) ? ni.f18646a.receipt.data.length() : 0;
            gi.f18276a = StringUtils.stringToBytesForProtobuf(str2);
            gi.f18277b = StringUtils.stringToBytesForProtobuf((String) ni.f18649d.a(ni.f18646a.receipt.signature));
            li.f18549e = gi;
        } else {
            i10 = 0;
        }
        Pair pair = new Pair(MessageNano.toByteArray(li), Integer.valueOf(i10));
        c1136e4.f19572b = c1136e4.e(new String(Base64.encode((byte[]) pair.first, 0)));
        c1136e4.f19577g = ((Integer) pair.second).intValue();
        return c1136e4;
    }

    public static C1136e4 a(PublicLogger publicLogger, C1654z c1654z) {
        C1136e4 c1136e4 = new C1136e4(publicLogger);
        EnumC1367nb enumC1367nb = EnumC1367nb.EVENT_TYPE_UNDEFINED;
        c1136e4.f19574d = 40977;
        xc.k a10 = c1654z.a();
        c1136e4.f19572b = c1136e4.e(new String(Base64.encode((byte[]) a10.c(), 0)));
        c1136e4.f19577g = ((Integer) a10.d()).intValue();
        return c1136e4;
    }
}
