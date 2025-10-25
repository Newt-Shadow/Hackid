package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.Converter;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* renamed from: io.appmetrica.analytics.impl.v7  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1562v7 implements Converter {

    /* renamed from: a  reason: collision with root package name */
    public final C1295ke f20776a;

    public C1562v7() {
        this(null, 1, null);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final C1662z7 fromModel(C1537u7 c1537u7) {
        C1662z7 c1662z7 = new C1662z7();
        Boolean bool = c1537u7.f20705a;
        if (bool != null) {
            c1662z7.f21022a = this.f20776a.fromModel(Boolean.valueOf(bool.booleanValue())).intValue();
        }
        Double d10 = c1537u7.f20707c;
        if (d10 != null) {
            c1662z7.f21024c = d10.doubleValue();
        }
        Double d11 = c1537u7.f20706b;
        if (d11 != null) {
            c1662z7.f21023b = d11.doubleValue();
        }
        Long l10 = c1537u7.f20712h;
        if (l10 != null) {
            c1662z7.f21029h = l10.longValue();
        }
        Integer num = c1537u7.f20710f;
        if (num != null) {
            c1662z7.f21027f = num.intValue();
        }
        Integer num2 = c1537u7.f20709e;
        if (num2 != null) {
            c1662z7.f21026e = num2.intValue();
        }
        Integer num3 = c1537u7.f20711g;
        if (num3 != null) {
            c1662z7.f21028g = num3.intValue();
        }
        Integer num4 = c1537u7.f20708d;
        if (num4 != null) {
            c1662z7.f21025d = num4.intValue();
        }
        String str = c1537u7.f20713i;
        if (str != null) {
            c1662z7.f21030i = str;
        }
        String str2 = c1537u7.f20714j;
        if (str2 != null) {
            c1662z7.f21031j = str2;
        }
        return c1662z7;
    }

    public C1562v7(C1295ke c1295ke) {
        this.f20776a = c1295ke;
    }

    public /* synthetic */ C1562v7(C1295ke c1295ke, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? new C1295ke() : c1295ke);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final C1537u7 toModel(C1662z7 c1662z7) {
        if (c1662z7 == null) {
            return new C1537u7(null, null, null, null, null, null, null, null, null, null);
        }
        C1662z7 c1662z72 = new C1662z7();
        Boolean a10 = this.f20776a.a(c1662z7.f21022a);
        Double valueOf = Double.valueOf(c1662z7.f21024c);
        if (!(!(valueOf.doubleValue() == c1662z72.f21024c))) {
            valueOf = null;
        }
        Double valueOf2 = Double.valueOf(c1662z7.f21023b);
        if (!(!(valueOf2.doubleValue() == c1662z72.f21023b))) {
            valueOf2 = null;
        }
        Long valueOf3 = Long.valueOf(c1662z7.f21029h);
        Long l10 = valueOf3.longValue() != c1662z72.f21029h ? valueOf3 : null;
        Integer valueOf4 = Integer.valueOf(c1662z7.f21027f);
        Integer num = valueOf4.intValue() != c1662z72.f21027f ? valueOf4 : null;
        Integer valueOf5 = Integer.valueOf(c1662z7.f21026e);
        Integer num2 = valueOf5.intValue() != c1662z72.f21026e ? valueOf5 : null;
        Integer valueOf6 = Integer.valueOf(c1662z7.f21028g);
        Integer num3 = valueOf6.intValue() != c1662z72.f21028g ? valueOf6 : null;
        Integer valueOf7 = Integer.valueOf(c1662z7.f21025d);
        Integer num4 = valueOf7.intValue() != c1662z72.f21025d ? valueOf7 : null;
        String str = c1662z7.f21030i;
        String str2 = kotlin.jvm.internal.m.a(str, c1662z72.f21030i) ^ true ? str : null;
        String str3 = c1662z7.f21031j;
        return new C1537u7(a10, valueOf2, valueOf, num4, num2, num, num3, l10, str2, kotlin.jvm.internal.m.a(str3, c1662z72.f21031j) ^ true ? str3 : null);
    }
}
