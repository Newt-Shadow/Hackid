package io.appmetrica.analytics.impl;

import android.os.Bundle;
import io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: io.appmetrica.analytics.impl.xi  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1623xi implements Xj {

    /* renamed from: a  reason: collision with root package name */
    public final C1207h0 f20936a;

    /* renamed from: b  reason: collision with root package name */
    public final Uj f20937b;

    /* renamed from: c  reason: collision with root package name */
    public final ICommonExecutor f20938c;

    public C1623xi(C1207h0 c1207h0, Uj uj) {
        this(c1207h0, uj, C1509t4.j().f().b());
    }

    public final void a(C1597wh c1597wh) {
        AbstractCallableC1647yh ng;
        ICommonExecutor iCommonExecutor = this.f20938c;
        if (c1597wh.f20867b) {
            Uj uj = this.f20937b;
            ng = new C1461r6(uj.f19068a, uj.f19069b, uj.f19070c, c1597wh);
        } else {
            Uj uj2 = this.f20937b;
            ng = new Ng(uj2.f19069b, uj2.f19070c, c1597wh);
        }
        iCommonExecutor.submit(ng);
    }

    public final void b(C1597wh c1597wh) {
        Uj uj = this.f20937b;
        C1461r6 c1461r6 = new C1461r6(uj.f19068a, uj.f19069b, uj.f19070c, c1597wh);
        if (this.f20936a.a()) {
            try {
                this.f20938c.submit(c1461r6).get(4L, TimeUnit.SECONDS);
            } catch (Throwable unused) {
            }
        }
        if (c1461r6.f20992c) {
            return;
        }
        try {
            c1461r6.a();
        } catch (Throwable unused2) {
        }
    }

    @Override // io.appmetrica.analytics.impl.Xj
    public final void reportData(int i10, Bundle bundle) {
        ICommonExecutor iCommonExecutor = this.f20938c;
        Uj uj = this.f20937b;
        iCommonExecutor.submit(new C1528tn(uj.f19069b, uj.f19070c, i10, bundle));
    }

    public C1623xi(C1207h0 c1207h0, Uj uj, ICommonExecutor iCommonExecutor) {
        this.f20938c = iCommonExecutor;
        this.f20937b = uj;
        this.f20936a = c1207h0;
    }

    public final void b(C1645yf c1645yf) {
        ICommonExecutor iCommonExecutor = this.f20938c;
        Uj uj = this.f20937b;
        iCommonExecutor.submit(new Di(uj.f19069b, uj.f19070c, c1645yf));
    }

    public final void a(C1645yf c1645yf) {
        ICommonExecutor iCommonExecutor = this.f20938c;
        Uj uj = this.f20937b;
        iCommonExecutor.submit(new C1420pe(uj.f19069b, uj.f19070c, c1645yf));
    }
}
