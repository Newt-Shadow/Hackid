package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.billinginterface.internal.BillingInfo;
import io.appmetrica.analytics.billinginterface.internal.ProductType;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
/* renamed from: io.appmetrica.analytics.impl.c3  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1085c3 implements ProtobufConverter {
    public static C1532u2 a(BillingInfo billingInfo) {
        C1532u2 c1532u2 = new C1532u2();
        int i10 = AbstractC1060b3.f19420a[billingInfo.type.ordinal()];
        int i11 = 2;
        if (i10 != 1) {
            if (i10 != 2) {
                i11 = 1;
            } else {
                i11 = 3;
            }
        }
        c1532u2.f20695a = i11;
        c1532u2.f20696b = billingInfo.productId;
        c1532u2.f20697c = billingInfo.purchaseToken;
        c1532u2.f20698d = billingInfo.purchaseTime;
        c1532u2.f20699e = billingInfo.sendTime;
        return c1532u2;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final /* bridge */ /* synthetic */ Object fromModel(Object obj) {
        return a((BillingInfo) obj);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        ProductType productType;
        C1532u2 c1532u2 = (C1532u2) obj;
        int i10 = c1532u2.f20695a;
        if (i10 != 2) {
            if (i10 != 3) {
                productType = ProductType.UNKNOWN;
            } else {
                productType = ProductType.SUBS;
            }
        } else {
            productType = ProductType.INAPP;
        }
        return new BillingInfo(productType, c1532u2.f20696b, c1532u2.f20697c, c1532u2.f20698d, c1532u2.f20699e);
    }
}
