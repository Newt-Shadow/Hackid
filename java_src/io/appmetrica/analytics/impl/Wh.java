package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.ModuleEvent;
/* loaded from: classes2.dex */
public final class Wh implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ModuleEvent f19190a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C1225hi f19191b;

    public Wh(C1225hi c1225hi, ModuleEvent moduleEvent) {
        this.f19191b = c1225hi;
        this.f19190a = moduleEvent;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1225hi c1225hi = this.f19191b;
        C1225hi.a(c1225hi.f19748a, c1225hi.f19751d, c1225hi.f19752e).reportEvent(this.f19190a);
    }
}
