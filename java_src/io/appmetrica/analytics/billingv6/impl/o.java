package io.appmetrica.analytics.billingv6.impl;

import com.android.billingclient.api.j;
import io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public final class o extends SafeRunnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ p f17612a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ List f17613b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ k f17614c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ u f17615d;

    public o(p pVar, List list, k kVar, u uVar) {
        this.f17612a = pVar;
        this.f17613b = list;
        this.f17614c = kVar;
        this.f17615d = uVar;
    }

    @Override // io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable
    public final void runSafety() {
        int r10;
        if (this.f17612a.f17617b.h()) {
            com.android.billingclient.api.d dVar = this.f17612a.f17617b;
            j.a a10 = com.android.billingclient.api.j.a();
            List<String> list = this.f17613b;
            p pVar = this.f17612a;
            r10 = yc.p.r(list, 10);
            ArrayList arrayList = new ArrayList(r10);
            for (String str : list) {
                arrayList.add(j.b.a().b(str).c(pVar.f17619d).a());
            }
            dVar.k(a10.b(arrayList).a(), this.f17614c);
            return;
        }
        this.f17612a.f17618c.getWorkerExecutor().execute(new n(this.f17612a, this.f17614c));
        this.f17615d.onUpdateFinished();
    }
}
