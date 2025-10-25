package io.appmetrica.analytics.impl;

import android.content.Context;
import java.util.Iterator;
/* renamed from: io.appmetrica.analytics.impl.n1  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class RunnableC1357n1 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Context f20154a;

    public RunnableC1357n1(Context context) {
        this.f20154a = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Oj oj = AbstractC1375nj.f20222a;
        Context context = this.f20154a;
        synchronized (oj) {
            if (oj.f18712b == null) {
                oj.f18712b = AbstractC1399oi.f20306a.a(context, "20799a27-fa80-4b36-b2db-0f8141f24180");
                Iterator it = oj.f18711a.iterator();
                while (it.hasNext()) {
                    ((InterfaceC1093cb) it.next()).a(oj.f18712b);
                }
                oj.f18711a.clear();
            }
        }
    }
}
