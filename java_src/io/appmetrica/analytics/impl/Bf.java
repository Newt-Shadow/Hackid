package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.billinginterface.internal.Period;
import io.appmetrica.analytics.billinginterface.internal.ProductType;
/* loaded from: classes2.dex */
public abstract /* synthetic */ class Bf {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int[] f18003a;

    /* renamed from: b  reason: collision with root package name */
    public static final /* synthetic */ int[] f18004b;

    static {
        int[] iArr = new int[Period.TimeUnit.values().length];
        f18004b = iArr;
        try {
            iArr[Period.TimeUnit.DAY.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f18004b[Period.TimeUnit.WEEK.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f18004b[Period.TimeUnit.MONTH.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f18004b[Period.TimeUnit.YEAR.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        int[] iArr2 = new int[ProductType.values().length];
        f18003a = iArr2;
        try {
            iArr2[ProductType.INAPP.ordinal()] = 1;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            f18003a[ProductType.SUBS.ordinal()] = 2;
        } catch (NoSuchFieldError unused6) {
        }
    }
}
