package com.yandex.metrica.impl.ob;

import android.os.Handler;
import com.yandex.metrica.DeferredDeeplinkListener;
import com.yandex.metrica.DeferredDeeplinkParametersListener;
/* renamed from: com.yandex.metrica.impl.ob.bg  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0436bg implements InterfaceC0461cg {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f12046a;

    /* renamed from: b  reason: collision with root package name */
    private final T1 f12047b;

    /* renamed from: c  reason: collision with root package name */
    private final C0429b9 f12048c;

    /* renamed from: d  reason: collision with root package name */
    private final C0744o0 f12049d;

    /* renamed from: e  reason: collision with root package name */
    private final K1 f12050e;

    /* renamed from: f  reason: collision with root package name */
    private final Handler f12051f;

    public C0436bg(T1 t12, C0429b9 c0429b9, Handler handler) {
        this(t12, c0429b9, handler, c0429b9.w());
    }

    public void a() {
        if (this.f12046a) {
            return;
        }
        this.f12047b.a(new ResultReceiverC0511eg(this.f12051f, this));
    }

    private C0436bg(T1 t12, C0429b9 c0429b9, Handler handler, boolean z10) {
        this(t12, c0429b9, handler, z10, new C0744o0(z10), new K1());
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0461cg
    public void a(C0486dg c0486dg) {
        String str = c0486dg == null ? null : c0486dg.f12217a;
        if (!this.f12046a) {
            synchronized (this) {
                this.f12049d.a(this.f12050e.a(str));
            }
        }
    }

    C0436bg(T1 t12, C0429b9 c0429b9, Handler handler, boolean z10, C0744o0 c0744o0, K1 k12) {
        this.f12047b = t12;
        this.f12048c = c0429b9;
        this.f12046a = z10;
        this.f12049d = c0744o0;
        this.f12050e = k12;
        this.f12051f = handler;
    }

    public synchronized void a(DeferredDeeplinkParametersListener deferredDeeplinkParametersListener) {
        this.f12049d.a(deferredDeeplinkParametersListener);
        this.f12048c.y();
    }

    public synchronized void a(DeferredDeeplinkListener deferredDeeplinkListener) {
        this.f12049d.a(deferredDeeplinkListener);
        this.f12048c.y();
    }
}
