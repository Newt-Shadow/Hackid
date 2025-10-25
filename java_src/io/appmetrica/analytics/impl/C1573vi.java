package io.appmetrica.analytics.impl;

import android.text.TextUtils;
import io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: io.appmetrica.analytics.impl.vi  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1573vi extends Sm {

    /* renamed from: d  reason: collision with root package name */
    public final RunnableC1548ui f20832d;

    /* renamed from: e  reason: collision with root package name */
    public final ICommonExecutor f20833e;

    public C1573vi(C1386o5 c1386o5, InterfaceC1576vl interfaceC1576vl, ICommonExecutor iCommonExecutor) {
        super(c1386o5, interfaceC1576vl);
        this.f20832d = new RunnableC1548ui(this);
        this.f20833e = iCommonExecutor;
    }

    @Override // io.appmetrica.analytics.impl.Sm
    public final void a() {
        this.f20833e.remove(this.f20832d);
    }

    @Override // io.appmetrica.analytics.impl.Sm
    public final void f() {
        this.f18948b.a();
        C1323lh c1323lh = (C1323lh) ((C1386o5) this.f18947a).f20263k.a();
        if (c1323lh.f20044k.a(c1323lh.f20043j)) {
            String str = c1323lh.f20046m;
            if (!TextUtils.isEmpty(str) && !"-1".equals(str)) {
                try {
                    a(Ud.a((C1386o5) this.f18947a));
                } catch (Throwable unused) {
                }
            }
        }
    }

    @Override // io.appmetrica.analytics.impl.Sm
    public final void g() {
        this.f20833e.executeDelayed(this.f20832d, TimeUnit.SECONDS.toMillis(1L));
    }

    public final void h() {
        if (!this.f18949c.get()) {
            this.f20833e.remove(this.f20832d);
            if (((C1323lh) ((C1386o5) this.f18947a).f20263k.a()).f20040g > 0) {
                this.f20833e.executeDelayed(this.f20832d, TimeUnit.SECONDS.toMillis(((C1323lh) ((C1386o5) this.f18947a).f20263k.a()).f20040g));
            }
        }
    }
}
