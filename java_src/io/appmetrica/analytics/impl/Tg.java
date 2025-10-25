package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.backport.Consumer;
import io.appmetrica.analytics.coreapi.internal.backport.Function;
/* loaded from: classes2.dex */
public final class Tg implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final C1605x0 f18989a;

    /* renamed from: b  reason: collision with root package name */
    public final Function f18990b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ Ug f18991c;

    public Tg(Ug ug, C1605x0 c1605x0, Function<String, C1138e6> function) {
        this.f18991c = ug;
        this.f18989a = c1605x0;
        this.f18990b = function;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.backport.Consumer
    /* renamed from: a */
    public final void consume(String str) {
        Ug ug = this.f18991c;
        C1605x0 c1605x0 = this.f18989a;
        String str2 = c1605x0.f20891a;
        String str3 = c1605x0.f20892b;
        Integer valueOf = Integer.valueOf(c1605x0.f20894d);
        C1605x0 c1605x02 = this.f18989a;
        String str4 = c1605x02.f20895e;
        C1211h4 c1211h4 = new C1211h4(str2, str3, valueOf, str4, c1605x02.f20893c);
        G4 g42 = new G4(new Kl(), new F4(), null);
        ug.f19064c.a(c1211h4, g42).a((C1138e6) this.f18990b.apply(str), g42);
        ug.f19064c.a(valueOf.intValue(), str3, str4);
    }
}
