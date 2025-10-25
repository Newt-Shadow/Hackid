package com.google.firebase.sessions;

import android.content.Context;
import com.google.firebase.sessions.b;
import j0.i;
import u8.f0;
/* loaded from: classes.dex */
public final class e implements w8.b {

    /* renamed from: a  reason: collision with root package name */
    private final wc.a f9061a;

    /* renamed from: b  reason: collision with root package name */
    private final wc.a f9062b;

    /* renamed from: c  reason: collision with root package name */
    private final wc.a f9063c;

    public e(wc.a aVar, wc.a aVar2, wc.a aVar3) {
        this.f9061a = aVar;
        this.f9062b = aVar2;
        this.f9063c = aVar3;
    }

    public static e a(wc.a aVar, wc.a aVar2, wc.a aVar3) {
        return new e(aVar, aVar2, aVar3);
    }

    public static i c(Context context, ad.i iVar, f0 f0Var) {
        return (i) w8.d.d(b.InterfaceC0109b.f9056a.l(context, iVar, f0Var));
    }

    @Override // wc.a
    /* renamed from: b */
    public i get() {
        return c((Context) this.f9061a.get(), (ad.i) this.f9062b.get(), (f0) this.f9063c.get());
    }
}
