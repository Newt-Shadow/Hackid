package io.appmetrica.analytics.billingv6.impl;

import io.appmetrica.analytics.billinginterface.internal.BillingInfo;
import io.appmetrica.analytics.billinginterface.internal.storage.BillingInfoManager;
import io.appmetrica.analytics.billinginterface.internal.storage.BillingInfoStorage;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import yc.w;
/* loaded from: classes2.dex */
public final class e implements BillingInfoManager {

    /* renamed from: a  reason: collision with root package name */
    public final BillingInfoStorage f17583a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f17584b;

    /* renamed from: c  reason: collision with root package name */
    public final LinkedHashMap f17585c;

    public e(BillingInfoStorage billingInfoStorage) {
        this.f17583a = billingInfoStorage;
        this.f17584b = billingInfoStorage.isFirstInappCheckOccurred();
        List<BillingInfo> billingInfo = billingInfoStorage.getBillingInfo();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : billingInfo) {
            linkedHashMap.put(((BillingInfo) obj).productId, obj);
        }
        this.f17585c = linkedHashMap;
    }

    @Override // io.appmetrica.analytics.billinginterface.internal.storage.BillingInfoManager
    public final BillingInfo get(String str) {
        return (BillingInfo) this.f17585c.get(str);
    }

    @Override // io.appmetrica.analytics.billinginterface.internal.storage.BillingInfoManager
    public final boolean isFirstInappCheckOccurred() {
        return this.f17584b;
    }

    @Override // io.appmetrica.analytics.billinginterface.internal.storage.BillingInfoManager
    public final void markFirstInappCheckOccurred() {
        List<BillingInfo> k02;
        if (!this.f17584b) {
            this.f17584b = true;
            BillingInfoStorage billingInfoStorage = this.f17583a;
            k02 = w.k0(this.f17585c.values());
            billingInfoStorage.saveInfo(k02, this.f17584b);
        }
    }

    @Override // io.appmetrica.analytics.billinginterface.internal.storage.BillingInfoManager
    public final void update(Map<String, ? extends BillingInfo> map) {
        List<BillingInfo> k02;
        for (BillingInfo billingInfo : map.values()) {
            this.f17585c.put(billingInfo.productId, billingInfo);
        }
        BillingInfoStorage billingInfoStorage = this.f17583a;
        k02 = w.k0(this.f17585c.values());
        billingInfoStorage.saveInfo(k02, this.f17584b);
    }
}
