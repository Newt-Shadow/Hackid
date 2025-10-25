package io.appmetrica.analytics.impl;

import android.content.Context;
import android.content.Intent;
/* loaded from: classes2.dex */
public final class A2 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Context f17921a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Intent f17922b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ B2 f17923c;

    public A2(B2 b22, Context context, Intent intent) {
        this.f17923c = b22;
        this.f17921a = context;
        this.f17922b = intent;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f17923c.f17974a.consume(this.f17921a, this.f17922b);
    }
}
