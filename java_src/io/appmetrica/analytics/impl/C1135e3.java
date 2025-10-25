package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.billinginterface.internal.ProductInfo;
import io.appmetrica.analytics.billinginterface.internal.storage.BillingInfoSender;
import io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor;
import java.util.List;
/* renamed from: io.appmetrica.analytics.impl.e3  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1135e3 implements BillingInfoSender {

    /* renamed from: a  reason: collision with root package name */
    public final InterfaceC1068bb f19560a;

    /* renamed from: b  reason: collision with root package name */
    public final ICommonExecutor f19561b;

    public C1135e3(InterfaceC1068bb interfaceC1068bb) {
        this(interfaceC1068bb, C1665za.j().w().e());
    }

    @Override // io.appmetrica.analytics.billinginterface.internal.storage.BillingInfoSender
    public final void sendInfo(List<ProductInfo> list) {
        for (ProductInfo productInfo : list) {
            this.f19561b.execute(new C1110d3(this, productInfo));
        }
    }

    public C1135e3(InterfaceC1068bb interfaceC1068bb, ICommonExecutor iCommonExecutor) {
        this.f19560a = interfaceC1068bb;
        this.f19561b = iCommonExecutor;
    }
}
