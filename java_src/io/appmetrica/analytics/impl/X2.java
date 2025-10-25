package io.appmetrica.analytics.impl;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import io.appmetrica.analytics.coreapi.internal.backport.Consumer;
import io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes2.dex */
public final class X2 implements InterfaceC1152ek {

    /* renamed from: a  reason: collision with root package name */
    public final ArrayList f19218a;

    /* renamed from: b  reason: collision with root package name */
    public Intent f19219b;

    /* renamed from: c  reason: collision with root package name */
    public final Context f19220c;

    /* renamed from: d  reason: collision with root package name */
    public final V5 f19221d;

    public X2(Context context, ICommonExecutor iCommonExecutor) {
        this(context, iCommonExecutor, 0);
    }

    public final synchronized Intent a(Consumer<Intent> consumer) {
        this.f19218a.add(consumer);
        return this.f19219b;
    }

    public final void b() {
        this.f19219b = null;
        V5 v52 = this.f19221d;
        Context context = this.f19220c;
        synchronized (v52) {
            if (v52.f19111b) {
                try {
                    context.unregisterReceiver(v52.f19110a);
                    v52.f19111b = false;
                } catch (Throwable unused) {
                }
            }
        }
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1152ek
    public final synchronized void onCreate() {
        Intent a10 = a();
        this.f19219b = a10;
        Iterator it = this.f19218a.iterator();
        while (it.hasNext()) {
            ((Consumer) it.next()).consume(a10);
        }
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1152ek
    public final synchronized void onDestroy() {
        this.f19219b = null;
        b();
        Iterator it = this.f19218a.iterator();
        while (it.hasNext()) {
            ((Consumer) it.next()).consume(null);
        }
    }

    public X2(Context context, ICommonExecutor iCommonExecutor, int i10) {
        this.f19218a = new ArrayList();
        this.f19219b = null;
        this.f19220c = context;
        this.f19221d = U5.a(new B2(new W2(this), iCommonExecutor));
    }

    public final Intent a() {
        Intent intent;
        IntentFilter intentFilter = new IntentFilter("android.intent.action.BATTERY_CHANGED");
        V5 v52 = this.f19221d;
        Context context = this.f19220c;
        synchronized (v52) {
            try {
                intent = context.registerReceiver(v52.f19110a, intentFilter);
                try {
                    v52.f19111b = true;
                } catch (Throwable unused) {
                }
            } catch (Throwable unused2) {
                intent = null;
            }
        }
        return intent;
    }
}
