package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.executors.ICommonExecutor;
/* loaded from: classes2.dex */
public class Nb extends Ub<Xb> {
    public Nb(ICommonExecutor iCommonExecutor) {
        super(iCommonExecutor);
    }

    @Override // com.yandex.metrica.impl.ob.Qb
    public void a(Runnable runnable, Object obj) {
        Wb wb2 = ((Xb) obj).f11779b;
        if (wb2 != null) {
            a(runnable, wb2.f11692a);
        }
    }
}
