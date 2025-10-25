package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
import java.util.HashMap;
/* renamed from: io.appmetrica.analytics.impl.pi  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1424pi {

    /* renamed from: a  reason: collision with root package name */
    public final HashMap f20386a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    public final C1406p0 f20387b;

    public C1424pi(C1406p0 c1406p0) {
        this.f20387b = c1406p0;
    }

    public static C1424pi a() {
        return AbstractC1399oi.f20306a;
    }

    public final C1225hi a(Context context, String str) {
        C1225hi c1225hi = (C1225hi) this.f20386a.get(str);
        if (c1225hi == null) {
            synchronized (this.f20386a) {
                c1225hi = (C1225hi) this.f20386a.get(str);
                if (c1225hi == null) {
                    IHandlerExecutor a10 = C1509t4.j().f20620c.a();
                    this.f20387b.getClass();
                    if (C1381o0.f20244e == null) {
                        ((L9) a10).f18518b.post(new RunnableC1374ni(this, context));
                    }
                    c1225hi = new C1225hi(context.getApplicationContext(), str, new C1406p0());
                    this.f20386a.put(str, c1225hi);
                    c1225hi.c(str);
                }
            }
        }
        return c1225hi;
    }
}
