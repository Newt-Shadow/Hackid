package com.google.android.gms.measurement;

import android.content.Context;
import android.content.Intent;
import i6.n;
import i6.o;
/* loaded from: classes.dex */
public final class AppMeasurementReceiver extends v0.a implements n {

    /* renamed from: c  reason: collision with root package name */
    private o f7201c;

    @Override // i6.n
    public void a(Context context, Intent intent) {
        v0.a.c(context, intent);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (this.f7201c == null) {
            this.f7201c = new o(this);
        }
        this.f7201c.a(context, intent);
    }
}
