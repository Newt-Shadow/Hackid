package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.billinginterface.internal.BillingInfo;
import io.appmetrica.analytics.billinginterface.internal.storage.BillingInfoStorage;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufStateStorage;
import java.util.List;
/* renamed from: io.appmetrica.analytics.impl.f3  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1160f3 implements BillingInfoStorage {

    /* renamed from: a  reason: collision with root package name */
    public final ProtobufStateStorage f19623a;

    /* renamed from: b  reason: collision with root package name */
    public C1482s2 f19624b;

    public C1160f3(Context context) {
        this(Bm.a(C1482s2.class).a(context));
    }

    @Override // io.appmetrica.analytics.billinginterface.internal.storage.BillingInfoStorage
    public final List<BillingInfo> getBillingInfo() {
        return this.f19624b.f20569a;
    }

    @Override // io.appmetrica.analytics.billinginterface.internal.storage.BillingInfoStorage
    public final boolean isFirstInappCheckOccurred() {
        return this.f19624b.f20570b;
    }

    @Override // io.appmetrica.analytics.billinginterface.internal.storage.BillingInfoStorage
    public final void saveInfo(List<BillingInfo> list, boolean z10) {
        for (BillingInfo billingInfo : list) {
        }
        C1482s2 c1482s2 = new C1482s2(list, z10);
        this.f19624b = c1482s2;
        this.f19623a.save(c1482s2);
    }

    public C1160f3(ProtobufStateStorage protobufStateStorage) {
        this.f19623a = protobufStateStorage;
        this.f19624b = (C1482s2) protobufStateStorage.read();
    }
}
