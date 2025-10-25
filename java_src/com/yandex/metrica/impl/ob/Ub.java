package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.executors.ICommonExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public abstract class Ub<T> implements Qb<T> {

    /* renamed from: a  reason: collision with root package name */
    private ICommonExecutor f11499a;

    /* renamed from: b  reason: collision with root package name */
    private volatile Runnable f11500b;

    public Ub(ICommonExecutor iCommonExecutor) {
        this.f11499a = iCommonExecutor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Runnable runnable, long j10) {
        this.f11499a.executeDelayed(runnable, j10, TimeUnit.SECONDS);
        this.f11500b = runnable;
    }

    @Override // com.yandex.metrica.impl.ob.Qb
    public void a() {
        Runnable runnable = this.f11500b;
        if (runnable != null) {
            this.f11499a.remove(runnable);
            this.f11500b = null;
        }
    }
}
