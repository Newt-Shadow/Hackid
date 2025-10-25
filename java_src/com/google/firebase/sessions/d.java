package com.google.firebase.sessions;

import android.content.Context;
import com.google.firebase.sessions.b;
import j0.i;
/* loaded from: classes.dex */
public final class d implements w8.b {

    /* renamed from: a  reason: collision with root package name */
    private final wc.a f9059a;

    /* renamed from: b  reason: collision with root package name */
    private final wc.a f9060b;

    public d(wc.a aVar, wc.a aVar2) {
        this.f9059a = aVar;
        this.f9060b = aVar2;
    }

    public static d a(wc.a aVar, wc.a aVar2) {
        return new d(aVar, aVar2);
    }

    public static i c(Context context, ad.i iVar) {
        return (i) w8.d.d(b.InterfaceC0109b.f9056a.i(context, iVar));
    }

    @Override // wc.a
    /* renamed from: b */
    public i get() {
        return c((Context) this.f9059a.get(), (ad.i) this.f9060b.get());
    }
}
