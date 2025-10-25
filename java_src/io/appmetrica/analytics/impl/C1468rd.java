package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable;
/* renamed from: io.appmetrica.analytics.impl.rd  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1468rd extends SafeRunnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C1543ud f20524a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ int f20525b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ String f20526c;

    public C1468rd(C1543ud c1543ud, int i10, String str) {
        this.f20524a = c1543ud;
        this.f20525b = i10;
        this.f20526c = str;
    }

    @Override // io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable
    public final void runSafety() {
        C1543ud.a(this.f20524a).a(new R9(this.f20525b, this.f20526c));
    }
}
