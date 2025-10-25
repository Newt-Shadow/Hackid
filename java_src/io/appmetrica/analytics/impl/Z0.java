package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.StartupParamsCallback;
import java.util.List;
/* loaded from: classes2.dex */
public final class Z0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Context f19310a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ StartupParamsCallback f19311b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ List f19312c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ C1282k1 f19313d;

    public Z0(C1282k1 c1282k1, Context context, StartupParamsCallback startupParamsCallback, List list) {
        this.f19313d = c1282k1;
        this.f19310a = context;
        this.f19311b = startupParamsCallback;
        this.f19312c = list;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1406p0 c1406p0 = this.f19313d.f19881a;
        Context applicationContext = this.f19310a.getApplicationContext();
        c1406p0.getClass();
        C1381o0 a10 = C1381o0.a(applicationContext);
        a10.f().a(this.f19311b, this.f19312c);
    }
}
