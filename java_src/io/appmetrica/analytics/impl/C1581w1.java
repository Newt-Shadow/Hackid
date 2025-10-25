package io.appmetrica.analytics.impl;

import android.content.Intent;
import io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable;
/* renamed from: io.appmetrica.analytics.impl.w1  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1581w1 extends SafeRunnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Intent f20845a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ int f20846b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ int f20847c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ D1 f20848d;

    public C1581w1(D1 d12, Intent intent, int i10, int i11) {
        this.f20848d = d12;
        this.f20845a = intent;
        this.f20846b = i10;
        this.f20847c = i11;
    }

    @Override // io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable
    public final void runSafety() {
        this.f20848d.f18071b.a(this.f20845a, this.f20846b, this.f20847c);
    }
}
