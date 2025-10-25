package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.impl.ob.C0420b0;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class C implements InterfaceC0671l2 {

    /* renamed from: a  reason: collision with root package name */
    private final List<InterfaceC0716mm<Intent>> f9811a;

    /* renamed from: b  reason: collision with root package name */
    private Intent f9812b;

    /* renamed from: c  reason: collision with root package name */
    private final Context f9813c;

    /* renamed from: d  reason: collision with root package name */
    private final C0420b0 f9814d;

    /* loaded from: classes2.dex */
    class a implements InterfaceC0666km<Context, Intent> {
        a() {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0666km
        public void a(Context context, Intent intent) {
            Intent intent2 = intent;
            synchronized (C.this) {
                C.this.f9812b = intent2;
                C.this.a(intent2);
            }
        }
    }

    public C(Context context, ICommonExecutor iCommonExecutor) {
        this(context, iCommonExecutor, new C0420b0.a());
    }

    public synchronized Intent c(InterfaceC0716mm<Intent> interfaceC0716mm) {
        this.f9811a.add(interfaceC0716mm);
        return this.f9812b;
    }

    C(Context context, ICommonExecutor iCommonExecutor, C0420b0.a aVar) {
        this.f9811a = new ArrayList();
        this.f9812b = null;
        this.f9813c = context;
        this.f9814d = aVar.a(new Kl(new a(), iCommonExecutor));
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0671l2
    public synchronized void a() {
        Intent a10 = this.f9814d.a(this.f9813c, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        this.f9812b = a10;
        a(a10);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0671l2
    public synchronized void b() {
        this.f9812b = null;
        this.f9814d.a(this.f9813c);
        a(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Intent intent) {
        for (InterfaceC0716mm<Intent> interfaceC0716mm : this.f9811a) {
            interfaceC0716mm.b(intent);
        }
    }
}
