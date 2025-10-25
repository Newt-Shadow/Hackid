package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.X5;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public abstract class R5 implements U5<W5> {

    /* renamed from: a  reason: collision with root package name */
    private final L3 f11180a;

    /* renamed from: b  reason: collision with root package name */
    private final C0401a6 f11181b;

    /* renamed from: c  reason: collision with root package name */
    private final C0501e6 f11182c;

    /* renamed from: d  reason: collision with root package name */
    private final Z5 f11183d;

    /* renamed from: e  reason: collision with root package name */
    private final M0 f11184e;

    /* renamed from: f  reason: collision with root package name */
    private final dc.c f11185f;

    public R5(L3 l32, C0401a6 c0401a6, C0501e6 c0501e6, Z5 z52, M0 m02, dc.c cVar) {
        this.f11180a = l32;
        this.f11181b = c0401a6;
        this.f11182c = c0501e6;
        this.f11183d = z52;
        this.f11184e = m02;
        this.f11185f = cVar;
    }

    public V5 a(Object obj) {
        W5 w52 = (W5) obj;
        if (this.f11182c.h()) {
            this.f11184e.reportEvent("create session with non-empty storage");
        }
        L3 l32 = this.f11180a;
        C0501e6 c0501e6 = this.f11182c;
        long a10 = this.f11181b.a();
        C0501e6 d10 = this.f11182c.d(a10);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        d10.e(timeUnit.toSeconds(w52.f11681a)).a(w52.f11681a).c(0L).a(true).b();
        this.f11180a.i().a(a10, this.f11183d.b(), timeUnit.toSeconds(w52.f11682b));
        return new V5(l32, c0501e6, a(), new dc.c());
    }

    public final V5 b() {
        if (this.f11182c.h()) {
            return new V5(this.f11180a, this.f11182c, a(), this.f11185f);
        }
        return null;
    }

    X5 a() {
        X5.b d10 = new X5.b(this.f11183d).a(this.f11182c.i()).b(this.f11182c.e()).a(this.f11182c.c()).c(this.f11182c.f()).d(this.f11182c.g());
        d10.f11737a = this.f11182c.d();
        return new X5(d10);
    }
}
