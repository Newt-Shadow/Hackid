package com.yandex.metrica.impl.ob;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
/* loaded from: classes2.dex */
public class Kl extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    private final InterfaceC0666km<Context, Intent> f10628a;

    /* renamed from: b  reason: collision with root package name */
    private final ICommonExecutor f10629b;

    /* loaded from: classes2.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f10630a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Intent f10631b;

        a(Context context, Intent intent) {
            this.f10630a = context;
            this.f10631b = intent;
        }

        @Override // java.lang.Runnable
        public void run() {
            Kl.this.f10628a.a(this.f10630a, this.f10631b);
        }
    }

    public Kl(InterfaceC0666km<Context, Intent> interfaceC0666km, ICommonExecutor iCommonExecutor) {
        this.f10628a = interfaceC0666km;
        this.f10629b = iCommonExecutor;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        this.f10629b.execute(new a(context, intent));
    }
}
