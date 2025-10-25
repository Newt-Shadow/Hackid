package io.appmetrica.analytics.impl;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import io.appmetrica.analytics.coreapi.internal.backport.BiConsumer;
import io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor;
/* loaded from: classes2.dex */
public final class B2 extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    public final BiConsumer f17974a;

    /* renamed from: b  reason: collision with root package name */
    public final ICommonExecutor f17975b;

    public B2(W2 w22, ICommonExecutor iCommonExecutor) {
        this.f17974a = w22;
        this.f17975b = iCommonExecutor;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.f17975b.execute(new A2(this, context, intent));
    }
}
