package com.yandex.metrica.impl.ob;

import android.app.Activity;
import java.util.List;
/* renamed from: com.yandex.metrica.impl.ob.gk  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
class C0565gk implements InterfaceC0933vl {

    /* renamed from: a  reason: collision with root package name */
    private final C0664kk f12487a;

    /* renamed from: b  reason: collision with root package name */
    private final C0429b9 f12488b;

    /* renamed from: c  reason: collision with root package name */
    private final InterfaceC0690ll f12489c;

    /* renamed from: d  reason: collision with root package name */
    private final a f12490d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f12491e;

    /* renamed from: com.yandex.metrica.impl.ob.gk$a */
    /* loaded from: classes2.dex */
    static class a {
    }

    /* renamed from: com.yandex.metrica.impl.ob.gk$b */
    /* loaded from: classes2.dex */
    static class b {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0565gk(C0664kk c0664kk, C0429b9 c0429b9, boolean z10, InterfaceC0690ll interfaceC0690ll, a aVar) {
        this.f12487a = c0664kk;
        this.f12488b = c0429b9;
        this.f12491e = z10;
        this.f12489c = interfaceC0690ll;
        this.f12490d = aVar;
    }

    private boolean b(C0541fl c0541fl) {
        if (!c0541fl.f12424c || c0541fl.f12428g == null) {
            return false;
        }
        if (!this.f12491e && !this.f12488b.a(false)) {
            return false;
        }
        return true;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0933vl
    public void a(long j10, Activity activity, C0491dl c0491dl, List<C0837rl> list, C0541fl c0541fl, Bk bk) {
        C0790pl ck;
        if (b(c0541fl)) {
            a aVar = this.f12490d;
            C0591hl c0591hl = c0541fl.f12428g;
            aVar.getClass();
            if (c0591hl.f12565h) {
                ck = new Fk();
            } else {
                ck = new Ck(list);
            }
            this.f12487a.a(ck.a(activity, c0491dl, c0541fl.f12428g, bk.a(), j10));
            this.f12489c.onResult(this.f12487a.a());
        }
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0933vl
    public void a(Throwable th, C0957wl c0957wl) {
        InterfaceC0690ll interfaceC0690ll = this.f12489c;
        interfaceC0690ll.onError("exception: " + th.getMessage());
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0933vl
    public boolean a(C0541fl c0541fl) {
        return b(c0541fl) && !c0541fl.f12428g.f12565h;
    }
}
