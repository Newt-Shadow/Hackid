package io.appmetrica.analytics.impl;

import android.os.Handler;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import java.lang.ref.WeakReference;
import java.util.Set;
/* loaded from: classes2.dex */
public final class Ab implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final WeakReference f17947a;

    /* renamed from: b  reason: collision with root package name */
    public final WeakReference f17948b;

    public Ab(Handler handler, R2 r22) {
        this.f17947a = new WeakReference(handler);
        this.f17948b = new WeakReference(r22);
    }

    @Override // java.lang.Runnable
    public final void run() {
        Handler handler = (Handler) this.f17947a.get();
        R2 r22 = (R2) this.f17948b.get();
        if (handler != null && r22 != null) {
            boolean z10 = !r22.f18865b.f();
            if (z10) {
                PublicLogger publicLogger = r22.f18866c;
                Set set = H9.f18290a;
                EnumC1367nb enumC1367nb = EnumC1367nb.EVENT_TYPE_UNDEFINED;
                C1136e4 c1136e4 = new C1136e4("", "", 3, 0, publicLogger);
                C1598wi c1598wi = r22.f18871h;
                Gh gh = r22.f18865b;
                c1598wi.getClass();
                c1598wi.a(C1598wi.a(c1136e4, gh), gh, 1, null);
            }
            if (z10) {
                C1666zb.a(handler, r22, this);
            }
        }
    }
}
