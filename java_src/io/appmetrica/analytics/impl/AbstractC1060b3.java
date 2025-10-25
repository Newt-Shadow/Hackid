package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.billinginterface.internal.ProductType;
/* renamed from: io.appmetrica.analytics.impl.b3  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC1060b3 {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int[] f19420a;

    static {
        int[] iArr = new int[ProductType.values().length];
        f19420a = iArr;
        try {
            iArr[ProductType.INAPP.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f19420a[ProductType.SUBS.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
    }
}
