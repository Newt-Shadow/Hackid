package io.appmetrica.analytics.billingv6.impl;

import io.appmetrica.analytics.billinginterface.internal.update.UpdatePolicy;
import io.appmetrica.analytics.coreutils.internal.time.SystemTimeProvider;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public final class v implements UpdatePolicy {

    /* renamed from: a  reason: collision with root package name */
    public final SystemTimeProvider f17631a;

    public v() {
        this(null, 1, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0052, code lost:
        if (kotlin.jvm.internal.m.a(r3.purchaseToken, r2.purchaseToken) != false) goto L13;
     */
    @Override // io.appmetrica.analytics.billinginterface.internal.update.UpdatePolicy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Map<java.lang.String, io.appmetrica.analytics.billinginterface.internal.BillingInfo> getBillingInfoToUpdate(io.appmetrica.analytics.billinginterface.internal.config.BillingConfig r10, java.util.Map<java.lang.String, ? extends io.appmetrica.analytics.billinginterface.internal.BillingInfo> r11, io.appmetrica.analytics.billinginterface.internal.storage.BillingInfoManager r12) {
        /*
            r9 = this;
            java.util.LinkedHashMap r0 = new java.util.LinkedHashMap
            r0.<init>()
            java.util.Set r11 = r11.entrySet()
            java.util.Iterator r11 = r11.iterator()
        Ld:
            boolean r1 = r11.hasNext()
            if (r1 == 0) goto L9d
            java.lang.Object r1 = r11.next()
            java.util.Map$Entry r1 = (java.util.Map.Entry) r1
            java.lang.Object r2 = r1.getValue()
            io.appmetrica.analytics.billinginterface.internal.BillingInfo r2 = (io.appmetrica.analytics.billinginterface.internal.BillingInfo) r2
            io.appmetrica.analytics.billinginterface.internal.ProductType r3 = r2.type
            io.appmetrica.analytics.billinginterface.internal.ProductType r4 = io.appmetrica.analytics.billinginterface.internal.ProductType.INAPP
            if (r3 != r4) goto L42
            boolean r3 = r12.isFirstInappCheckOccurred()
            if (r3 != 0) goto L42
            io.appmetrica.analytics.coreutils.internal.time.SystemTimeProvider r3 = r9.f17631a
            long r3 = r3.currentTimeMillis()
            long r5 = r2.purchaseTime
            long r3 = r3 - r5
            java.util.concurrent.TimeUnit r2 = java.util.concurrent.TimeUnit.SECONDS
            int r5 = r10.firstCollectingInappMaxAgeSeconds
            long r5 = (long) r5
            long r5 = r2.toMillis(r5)
            int r2 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r2 > 0) goto Ld
            goto L90
        L42:
            java.lang.String r3 = r2.productId
            io.appmetrica.analytics.billinginterface.internal.BillingInfo r3 = r12.get(r3)
            if (r3 == 0) goto L54
            java.lang.String r4 = r3.purchaseToken
            java.lang.String r5 = r2.purchaseToken
            boolean r4 = kotlin.jvm.internal.m.a(r4, r5)
            if (r4 != 0) goto L72
        L54:
            io.appmetrica.analytics.coreutils.internal.time.SystemTimeProvider r4 = r9.f17631a
            long r4 = r4.currentTimeMillis()
            long r6 = r2.purchaseTime
            long r4 = r4 - r6
            java.util.concurrent.TimeUnit r6 = java.util.concurrent.TimeUnit.SECONDS
            int r7 = r10.firstCollectingInappMaxAgeSeconds
            long r7 = (long) r7
            long r6 = r6.toMillis(r7)
            int r4 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r4 > 0) goto L6b
            goto L90
        L6b:
            io.appmetrica.analytics.billinginterface.internal.ProductType r4 = r2.type
            io.appmetrica.analytics.billinginterface.internal.ProductType r5 = io.appmetrica.analytics.billinginterface.internal.ProductType.SUBS
            if (r4 != r5) goto L72
            goto L90
        L72:
            if (r3 == 0) goto Ld
            io.appmetrica.analytics.billinginterface.internal.ProductType r2 = r2.type
            io.appmetrica.analytics.billinginterface.internal.ProductType r4 = io.appmetrica.analytics.billinginterface.internal.ProductType.SUBS
            if (r2 != r4) goto Ld
            io.appmetrica.analytics.coreutils.internal.time.SystemTimeProvider r2 = r9.f17631a
            long r4 = r2.currentTimeMillis()
            long r2 = r3.sendTime
            long r4 = r4 - r2
            java.util.concurrent.TimeUnit r2 = java.util.concurrent.TimeUnit.SECONDS
            int r3 = r10.sendFrequencySeconds
            long r6 = (long) r3
            long r2 = r2.toMillis(r6)
            int r2 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r2 < 0) goto Ld
        L90:
            java.lang.Object r2 = r1.getKey()
            java.lang.Object r1 = r1.getValue()
            r0.put(r2, r1)
            goto Ld
        L9d:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.appmetrica.analytics.billingv6.impl.v.getBillingInfoToUpdate(io.appmetrica.analytics.billinginterface.internal.config.BillingConfig, java.util.Map, io.appmetrica.analytics.billinginterface.internal.storage.BillingInfoManager):java.util.Map");
    }

    public v(SystemTimeProvider systemTimeProvider) {
        this.f17631a = systemTimeProvider;
    }

    public /* synthetic */ v(SystemTimeProvider systemTimeProvider, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? new SystemTimeProvider() : systemTimeProvider);
    }
}
