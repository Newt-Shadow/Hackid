package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.billinginterface.internal.BillingInfo;
import io.appmetrica.analytics.billinginterface.internal.ProductType;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
import java.util.ArrayList;
/* renamed from: io.appmetrica.analytics.impl.t2  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1507t2 implements ProtobufConverter {

    /* renamed from: a  reason: collision with root package name */
    public final C1085c3 f20616a;

    public C1507t2() {
        this(new C1085c3());
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final C1557v2 fromModel(C1482s2 c1482s2) {
        C1557v2 c1557v2 = new C1557v2();
        c1557v2.f20771a = new C1532u2[c1482s2.f20569a.size()];
        int i10 = 0;
        for (BillingInfo billingInfo : c1482s2.f20569a) {
            C1532u2[] c1532u2Arr = c1557v2.f20771a;
            this.f20616a.getClass();
            c1532u2Arr[i10] = C1085c3.a(billingInfo);
            i10++;
        }
        c1557v2.f20772b = c1482s2.f20570b;
        return c1557v2;
    }

    public C1507t2(C1085c3 c1085c3) {
        this.f20616a = c1085c3;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final C1482s2 toModel(C1557v2 c1557v2) {
        C1532u2[] c1532u2Arr;
        ProductType productType;
        ArrayList arrayList = new ArrayList(c1557v2.f20771a.length);
        for (C1532u2 c1532u2 : c1557v2.f20771a) {
            this.f20616a.getClass();
            int i10 = c1532u2.f20695a;
            if (i10 == 2) {
                productType = ProductType.INAPP;
            } else if (i10 != 3) {
                productType = ProductType.UNKNOWN;
            } else {
                productType = ProductType.SUBS;
            }
            arrayList.add(new BillingInfo(productType, c1532u2.f20696b, c1532u2.f20697c, c1532u2.f20698d, c1532u2.f20699e));
        }
        return new C1482s2(arrayList, c1557v2.f20772b);
    }
}
