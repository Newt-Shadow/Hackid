package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.impl.ob.C0420b0;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class J2 implements InterfaceC0671l2 {

    /* renamed from: a  reason: collision with root package name */
    private final List<InterfaceC0691lm<Context, Intent, Void>> f10473a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f10474b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f10475c;

    /* renamed from: d  reason: collision with root package name */
    private final Context f10476d;

    /* renamed from: e  reason: collision with root package name */
    private final C0420b0 f10477e;

    /* loaded from: classes2.dex */
    class a implements InterfaceC0666km<Context, Intent> {
        a() {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0666km
        public void a(Context context, Intent intent) {
            J2.a(J2.this, context, intent);
        }
    }

    public J2(Context context, ICommonExecutor iCommonExecutor) {
        this(context, iCommonExecutor, new C0420b0.a());
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0671l2
    public synchronized void a() {
        this.f10475c = true;
        if (!this.f10473a.isEmpty()) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.net.wifi.SCAN_RESULTS");
            this.f10477e.a(this.f10476d, intentFilter);
            this.f10474b = true;
        }
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0671l2
    public synchronized void b() {
        this.f10475c = false;
        if (this.f10474b) {
            this.f10477e.a(this.f10476d);
            this.f10474b = false;
        }
    }

    J2(Context context, ICommonExecutor iCommonExecutor, C0420b0.a aVar) {
        this.f10473a = new ArrayList();
        this.f10474b = false;
        this.f10475c = false;
        this.f10476d = context;
        this.f10477e = aVar.a(new Kl(new a(), iCommonExecutor));
    }

    public synchronized void b(InterfaceC0691lm<Context, Intent, Void> interfaceC0691lm) {
        this.f10473a.remove(interfaceC0691lm);
        if (this.f10473a.isEmpty() && this.f10474b) {
            this.f10477e.a(this.f10476d);
            this.f10474b = false;
        }
    }

    public synchronized void a(InterfaceC0691lm<Context, Intent, Void> interfaceC0691lm) {
        this.f10473a.add(interfaceC0691lm);
        if (this.f10475c && !this.f10474b) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.net.wifi.SCAN_RESULTS");
            this.f10477e.a(this.f10476d, intentFilter);
            this.f10474b = true;
        }
    }

    static void a(J2 j22, Context context, Intent intent) {
        synchronized (j22) {
            for (InterfaceC0691lm<Context, Intent, Void> interfaceC0691lm : j22.f10473a) {
                interfaceC0691lm.a(context, intent);
            }
        }
    }
}
