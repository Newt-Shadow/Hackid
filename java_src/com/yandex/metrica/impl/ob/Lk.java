package com.yandex.metrica.impl.ob;

import android.app.Activity;
import com.yandex.metrica.impl.ob.C1005yl;
import java.util.List;
/* loaded from: classes2.dex */
class Lk implements InterfaceC0981xl {

    /* renamed from: a  reason: collision with root package name */
    private final fc.a f10758a;

    /* renamed from: b  reason: collision with root package name */
    private final C1005yl.a f10759b;

    /* renamed from: c  reason: collision with root package name */
    private final El f10760c;

    /* renamed from: d  reason: collision with root package name */
    private final Dl f10761d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Lk(InterfaceC0716mm<Activity> interfaceC0716mm, El el) {
        this(new C1005yl.a(), interfaceC0716mm, el, new Ek(), new Dl());
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0981xl
    public void a(Activity activity, long j10) {
    }

    Lk(C1005yl.a aVar, InterfaceC0716mm<Activity> interfaceC0716mm, El el, Ek ek, Dl dl) {
        this.f10759b = aVar;
        this.f10760c = el;
        this.f10758a = ek.a(interfaceC0716mm);
        this.f10761d = dl;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0933vl
    public boolean a(C0541fl c0541fl) {
        return false;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0981xl
    public void a(Activity activity, boolean z10) {
        if (z10) {
            return;
        }
        try {
            this.f10758a.subscribe(activity);
        } catch (Throwable unused) {
        }
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0933vl
    public void a(long j10, Activity activity, C0491dl c0491dl, List<C0837rl> list, C0541fl c0541fl, Bk bk) {
        C0591hl c0591hl;
        C0591hl c0591hl2;
        if (c0541fl.f12423b && (c0591hl2 = c0541fl.f12427f) != null) {
            this.f10760c.b(this.f10761d.a(activity, c0491dl, c0591hl2, bk.b(), j10));
        }
        if (!c0541fl.f12425d || (c0591hl = c0541fl.f12429h) == null) {
            return;
        }
        this.f10760c.a(this.f10761d.a(activity, c0491dl, c0591hl, bk.d(), j10));
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0933vl
    public void a(Throwable th, C0957wl c0957wl) {
        this.f10759b.getClass();
        new C1005yl(c0957wl, C0761oh.a()).a("ui_parsing", th);
    }

    public void a(Activity activity) {
        try {
            this.f10758a.unsubscribe(activity);
        } catch (Throwable unused) {
        }
    }
}
