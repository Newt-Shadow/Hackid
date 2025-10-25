package io.appmetrica.analytics.impl;

import android.content.Intent;
/* loaded from: classes2.dex */
public final class F1 implements M1 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ G1 f18196a;

    public F1(G1 g12) {
        this.f18196a = g12;
    }

    @Override // io.appmetrica.analytics.impl.M1
    public final void a(Intent intent) {
        this.f18196a.getClass();
        C1665za.E.u().a(AbstractC1491sb.e(intent.getStringExtra("screen_size")));
    }
}
