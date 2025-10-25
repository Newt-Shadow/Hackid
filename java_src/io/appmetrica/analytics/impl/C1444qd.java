package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.ModuleEvent;
import io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable;
/* renamed from: io.appmetrica.analytics.impl.qd  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1444qd extends SafeRunnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C1543ud f20440a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ ModuleEvent f20441b;

    public C1444qd(C1543ud c1543ud, ModuleEvent moduleEvent) {
        this.f20440a = c1543ud;
        this.f20441b = moduleEvent;
    }

    @Override // io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable
    public final void runSafety() {
        C1543ud.a(this.f20440a).reportEvent(this.f20441b);
    }
}
