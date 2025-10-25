package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.billinginterface.internal.BillingType;
import io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
import io.appmetrica.analytics.coreutils.internal.reflection.ReflectionUtils;
import java.lang.reflect.Field;
import java.util.Objects;
import java.util.concurrent.Executor;
/* loaded from: classes2.dex */
public final class Dc extends C1510t5 {

    /* renamed from: n  reason: collision with root package name */
    public final C1127dk f18089n;

    public Dc(Context context, C1212h5 c1212h5, F4 f42, AbstractC1336m5 abstractC1336m5, Ql ql, InterfaceC1248ih interfaceC1248ih, ICommonExecutor iCommonExecutor, int i10, C1127dk c1127dk, Qb qb2, D9 d92) {
        super(context, c1212h5, f42, abstractC1336m5, ql, interfaceC1248ih, iCommonExecutor, i10, qb2, d92);
        this.f18089n = c1127dk;
    }

    public final C1259j3 a(Bc bc2) {
        String str;
        BillingType billingType;
        boolean b02;
        boolean H;
        boolean H2;
        boolean H3;
        boolean H4;
        boolean H5;
        Field field;
        Context context = this.f20638c;
        IHandlerExecutor a10 = this.f18089n.a();
        Executor f10 = this.f18089n.f();
        try {
            Class<?> findClass = ReflectionUtils.findClass("com.android.billingclient.BuildConfig");
            str = (String) ((findClass == null || (field = findClass.getField("VERSION_NAME")) == null) ? null : field.get(null));
        } catch (Throwable unused) {
            str = null;
        }
        if (str != null) {
            b02 = rd.b0.b0(str);
            if (!b02) {
                H = rd.y.H(str, "2.", false, 2, null);
                if (H) {
                    billingType = BillingType.NONE;
                } else {
                    H2 = rd.y.H(str, "3.", false, 2, null);
                    if (H2) {
                        billingType = BillingType.NONE;
                    } else {
                        H3 = rd.y.H(str, "4.", false, 2, null);
                        if (H3) {
                            billingType = BillingType.NONE;
                        } else {
                            H4 = rd.y.H(str, "5.", false, 2, null);
                            if (H4) {
                                billingType = BillingType.LIBRARY_V6;
                            } else {
                                H5 = rd.y.H(str, "6.", false, 2, null);
                                billingType = H5 ? BillingType.LIBRARY_V6 : BillingType.LIBRARY_V6;
                            }
                        }
                    }
                }
                return new C1259j3(context, a10, f10, billingType, new C1160f3(Bm.a(C1482s2.class).a(this.f20638c)), new C1135e3(bc2, C1665za.j().w().e()));
            }
        }
        billingType = BillingType.NONE;
        return new C1259j3(context, a10, f10, billingType, new C1160f3(Bm.a(C1482s2.class).a(this.f20638c)), new C1135e3(bc2, C1665za.j().w().e()));
    }

    public final C1372ng b(Bc bc2) {
        C1270je c1270je = new C1270je(bc2);
        Objects.requireNonNull(bc2);
        return new C1372ng(c1270je, new Ac(bc2), bc2);
    }

    @Override // io.appmetrica.analytics.impl.C1510t5
    public final B9 a(G9 g92, W6 w62, Og og, F4 f42, C1212h5 c1212h5, Ue ue2) {
        return this.f20647l.a(g92, w62, og, f42, c1212h5, ue2).a();
    }
}
