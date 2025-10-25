package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreutils.internal.services.PackageManagerUtils;
import io.appmetrica.analytics.coreutils.internal.time.TimePassedChecker;
/* loaded from: classes2.dex */
public final class Eh extends C1386o5 {

    /* renamed from: v  reason: collision with root package name */
    public final String f18182v;

    /* renamed from: w  reason: collision with root package name */
    public final P6 f18183w;

    public Eh(Context context, C1212h5 c1212h5, F4 f42, P6 p62, Ql ql, AbstractC1336m5 abstractC1336m5, D9 d92) {
        this(context, c1212h5, new C1107d0(), new TimePassedChecker(), new C1510t5(context, c1212h5, f42, abstractC1336m5, ql, new C1672zh(p62), C1665za.j().w().d(), PackageManagerUtils.getAppVersionCodeInt(context), C1665za.j().k(), d92), p62, f42);
    }

    @Override // io.appmetrica.analytics.impl.C1386o5, io.appmetrica.analytics.impl.InterfaceC1068bb, io.appmetrica.analytics.impl.Qa
    public final synchronized void a(F4 f42) {
        super.a(f42);
        this.f18183w.a(this.f18182v, f42.f18207i);
    }

    public Eh(Context context, C1212h5 c1212h5, C1107d0 c1107d0, TimePassedChecker timePassedChecker, C1510t5 c1510t5, P6 p62, F4 f42) {
        super(context, c1212h5, c1107d0, timePassedChecker, c1510t5, f42);
        this.f18182v = c1212h5.b();
        this.f18183w = p62;
    }
}
