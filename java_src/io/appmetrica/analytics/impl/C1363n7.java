package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Arrays;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* renamed from: io.appmetrica.analytics.impl.n7  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1363n7 implements ProtobufConverter {

    /* renamed from: a  reason: collision with root package name */
    public final C1295ke f20163a;

    /* renamed from: b  reason: collision with root package name */
    public final C1562v7 f20164b;

    public C1363n7() {
        this(null, null, 3, null);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final C1637y7 fromModel(C1413p7 c1413p7) {
        C1637y7 c1637y7 = new C1637y7();
        Integer num = c1413p7.f20330a;
        if (num != null) {
            c1637y7.f20960a = num.intValue();
        }
        String str = c1413p7.f20331b;
        if (str != null) {
            c1637y7.f20961b = StringUtils.correctIllFormedString(str);
        }
        String str2 = c1413p7.f20332c;
        if (str2 != null) {
            c1637y7.f20962c = StringUtils.correctIllFormedString(str2);
        }
        Long l10 = c1413p7.f20333d;
        if (l10 != null) {
            c1637y7.f20963d = l10.longValue();
        }
        C1537u7 c1537u7 = c1413p7.f20334e;
        if (c1537u7 != null) {
            c1637y7.f20964e = this.f20164b.fromModel(c1537u7);
        }
        String str3 = c1413p7.f20335f;
        if (str3 != null) {
            c1637y7.f20965f = str3;
        }
        String str4 = c1413p7.f20336g;
        if (str4 != null) {
            c1637y7.f20966g = str4;
        }
        Long l11 = c1413p7.f20337h;
        if (l11 != null) {
            c1637y7.f20967h = l11.longValue();
        }
        Integer num2 = c1413p7.f20338i;
        if (num2 != null) {
            c1637y7.f20968i = num2.intValue();
        }
        Integer num3 = c1413p7.f20339j;
        if (num3 != null) {
            c1637y7.f20969j = num3.intValue();
        }
        String str5 = c1413p7.f20340k;
        if (str5 != null) {
            c1637y7.f20970k = str5;
        }
        R8 r82 = c1413p7.f20341l;
        if (r82 != null) {
            c1637y7.f20971l = r82.f18883a;
        }
        String str6 = c1413p7.f20342m;
        if (str6 != null) {
            c1637y7.f20972m = str6;
        }
        EnumC1416pa enumC1416pa = c1413p7.f20343n;
        if (enumC1416pa != null) {
            c1637y7.f20973n = enumC1416pa.f20380a;
        }
        EnumC1614x9 enumC1614x9 = c1413p7.f20344o;
        if (enumC1614x9 != null) {
            c1637y7.f20974o = enumC1614x9.f20931a;
        }
        Boolean bool = c1413p7.f20345p;
        if (bool != null) {
            c1637y7.f20975p = this.f20163a.fromModel(Boolean.valueOf(bool.booleanValue())).intValue();
        }
        Integer num4 = c1413p7.f20346q;
        if (num4 != null) {
            c1637y7.f20976q = num4.intValue();
        }
        byte[] bArr = c1413p7.f20347r;
        if (bArr != null) {
            c1637y7.f20977r = bArr;
        }
        return c1637y7;
    }

    public C1363n7(C1295ke c1295ke, C1562v7 c1562v7) {
        this.f20163a = c1295ke;
        this.f20164b = c1562v7;
    }

    public /* synthetic */ C1363n7(C1295ke c1295ke, C1562v7 c1562v7, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? new C1295ke() : c1295ke, (i10 & 2) != 0 ? new C1562v7(null, 1, null) : c1562v7);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final C1413p7 toModel(C1637y7 c1637y7) {
        EnumC1614x9 enumC1614x9;
        C1637y7 c1637y72 = new C1637y7();
        Integer valueOf = Integer.valueOf(c1637y7.f20960a);
        Integer num = valueOf.intValue() != c1637y72.f20960a ? valueOf : null;
        String str = c1637y7.f20961b;
        String str2 = kotlin.jvm.internal.m.a(str, c1637y72.f20961b) ^ true ? str : null;
        String str3 = c1637y7.f20962c;
        String str4 = kotlin.jvm.internal.m.a(str3, c1637y72.f20962c) ^ true ? str3 : null;
        Long valueOf2 = Long.valueOf(c1637y7.f20963d);
        Long l10 = valueOf2.longValue() != c1637y72.f20963d ? valueOf2 : null;
        C1537u7 model = this.f20164b.toModel(c1637y7.f20964e);
        String str5 = c1637y7.f20965f;
        String str6 = kotlin.jvm.internal.m.a(str5, c1637y72.f20965f) ^ true ? str5 : null;
        String str7 = c1637y7.f20966g;
        String str8 = kotlin.jvm.internal.m.a(str7, c1637y72.f20966g) ^ true ? str7 : null;
        Long valueOf3 = Long.valueOf(c1637y7.f20967h);
        if (valueOf3.longValue() == c1637y72.f20967h) {
            valueOf3 = null;
        }
        Integer valueOf4 = Integer.valueOf(c1637y7.f20968i);
        Integer num2 = valueOf4.intValue() != c1637y72.f20968i ? valueOf4 : null;
        Integer valueOf5 = Integer.valueOf(c1637y7.f20969j);
        Integer num3 = valueOf5.intValue() != c1637y72.f20969j ? valueOf5 : null;
        String str9 = c1637y7.f20970k;
        String str10 = kotlin.jvm.internal.m.a(str9, c1637y72.f20970k) ^ true ? str9 : null;
        Integer valueOf6 = Integer.valueOf(c1637y7.f20971l);
        if (valueOf6.intValue() == c1637y72.f20971l) {
            valueOf6 = null;
        }
        R8 a10 = valueOf6 != null ? R8.a(Integer.valueOf(valueOf6.intValue())) : null;
        String str11 = c1637y7.f20972m;
        String str12 = kotlin.jvm.internal.m.a(str11, c1637y72.f20972m) ^ true ? str11 : null;
        Integer valueOf7 = Integer.valueOf(c1637y7.f20973n);
        if (valueOf7.intValue() == c1637y72.f20973n) {
            valueOf7 = null;
        }
        EnumC1416pa a11 = valueOf7 != null ? EnumC1416pa.a(Integer.valueOf(valueOf7.intValue())) : null;
        Integer valueOf8 = Integer.valueOf(c1637y7.f20974o);
        if (valueOf8.intValue() == c1637y72.f20974o) {
            valueOf8 = null;
        }
        if (valueOf8 != null) {
            int intValue = valueOf8.intValue();
            EnumC1614x9[] values = EnumC1614x9.values();
            int length = values.length;
            int i10 = 0;
            while (true) {
                if (i10 < length) {
                    EnumC1614x9 enumC1614x92 = values[i10];
                    EnumC1614x9[] enumC1614x9Arr = values;
                    if (enumC1614x92.f20931a == intValue) {
                        enumC1614x9 = enumC1614x92;
                        break;
                    }
                    i10++;
                    values = enumC1614x9Arr;
                } else {
                    enumC1614x9 = EnumC1614x9.NATIVE;
                    break;
                }
            }
        } else {
            enumC1614x9 = null;
        }
        Boolean a12 = this.f20163a.a(c1637y7.f20975p);
        Integer valueOf9 = Integer.valueOf(c1637y7.f20976q);
        Integer num4 = valueOf9.intValue() != c1637y72.f20976q ? valueOf9 : null;
        byte[] bArr = c1637y7.f20977r;
        return new C1413p7(num, str2, str4, l10, model, str6, str8, valueOf3, num2, num3, str10, a10, str12, a11, enumC1614x9, a12, num4, Arrays.equals(bArr, c1637y72.f20977r) ^ true ? bArr : null);
    }
}
