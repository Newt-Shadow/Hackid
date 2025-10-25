package io.appmetrica.analytics.impl;

import android.content.Context;
import android.content.Intent;
/* renamed from: io.appmetrica.analytics.impl.r6  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1461r6 extends Ng {

    /* renamed from: f  reason: collision with root package name */
    public final Context f20494f;

    /* renamed from: g  reason: collision with root package name */
    public final C1597wh f20495g;

    /* renamed from: h  reason: collision with root package name */
    public final C1467rc f20496h;

    /* renamed from: i  reason: collision with root package name */
    public final A6 f20497i;

    public C1461r6(Context context, C1207h0 c1207h0, Lk lk, C1597wh c1597wh) {
        super(c1207h0, lk, c1597wh);
        this.f20494f = context;
        this.f20495g = c1597wh;
        this.f20496h = C1509t4.j().k();
        this.f20497i = new A6(context);
    }

    public final void a(C1597wh c1597wh) {
        if (c1597wh.f20866a.f19577g == 0) {
            Intent a10 = AbstractC1351mk.a(this.f20494f);
            C1138e6 c1138e6 = c1597wh.f20866a;
            EnumC1367nb enumC1367nb = EnumC1367nb.EVENT_TYPE_UNDEFINED;
            c1138e6.f19574d = 5890;
            a10.putExtras(c1138e6.d(c1597wh.f20870e.c()));
            try {
                this.f20494f.startService(a10);
                return;
            } catch (Throwable unused) {
                this.f20497i.a(c1597wh);
                return;
            }
        }
        this.f20497i.a(c1597wh);
    }

    @Override // io.appmetrica.analytics.impl.AbstractCallableC1647yh
    public final boolean c() {
        a(this.f20495g);
        return false;
    }

    @Override // io.appmetrica.analytics.impl.AbstractCallableC1647yh, java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() {
        a();
        return xc.t.f32733a;
    }

    @Override // io.appmetrica.analytics.impl.AbstractCallableC1647yh
    public final synchronized void a() {
        if (this.f20992c) {
            return;
        }
        this.f20992c = true;
        if (this.f20496h.a("AppMetrica")) {
            this.f20497i.a(this.f20495g);
        } else {
            this.f20990a.c();
            this.f20992c = false;
            super.a();
        }
    }
}
