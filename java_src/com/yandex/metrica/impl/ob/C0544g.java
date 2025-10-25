package com.yandex.metrica.impl.ob;

import java.util.Map;
/* renamed from: com.yandex.metrica.impl.ob.g  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0544g {

    /* renamed from: a  reason: collision with root package name */
    public static final C0544g f12434a = new C0544g();

    private C0544g() {
    }

    public static void a(C0544g c0544g, Map history, Map newBillingInfo, String type, InterfaceC0668l billingInfoManager, zb.g gVar, int i10) {
        zb.g systemTimeProvider;
        if ((i10 & 16) != 0) {
            systemTimeProvider = new zb.g();
        } else {
            systemTimeProvider = null;
        }
        kotlin.jvm.internal.m.e(history, "history");
        kotlin.jvm.internal.m.e(newBillingInfo, "newBillingInfo");
        kotlin.jvm.internal.m.e(type, "type");
        kotlin.jvm.internal.m.e(billingInfoManager, "billingInfoManager");
        kotlin.jvm.internal.m.e(systemTimeProvider, "systemTimeProvider");
        systemTimeProvider.getClass();
        long currentTimeMillis = System.currentTimeMillis();
        for (zb.a aVar : history.values()) {
            if (newBillingInfo.containsKey(aVar.f33594b)) {
                aVar.f33597e = currentTimeMillis;
            } else {
                zb.a a10 = billingInfoManager.a(aVar.f33594b);
                if (a10 != null) {
                    aVar.f33597e = a10.f33597e;
                }
            }
        }
        billingInfoManager.a(history);
        if (!billingInfoManager.a() && kotlin.jvm.internal.m.a("inapp", type)) {
            billingInfoManager.b();
        }
    }
}
