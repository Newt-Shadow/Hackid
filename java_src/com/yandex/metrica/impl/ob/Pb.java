package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.os.Looper;
/* loaded from: classes2.dex */
public abstract class Pb {

    /* renamed from: a  reason: collision with root package name */
    protected final C0504e9 f11060a;

    /* renamed from: b  reason: collision with root package name */
    protected final Cc f11061b;

    /* renamed from: c  reason: collision with root package name */
    protected final G1 f11062c;

    /* renamed from: d  reason: collision with root package name */
    private final InterfaceC0557gc f11063d;

    /* renamed from: e  reason: collision with root package name */
    private final Mb f11064e;

    /* renamed from: f  reason: collision with root package name */
    private final Nb f11065f;

    public Pb(Cc cc2, C0504e9 c0504e9, G1 g12) {
        this.f11061b = cc2;
        this.f11060a = c0504e9;
        this.f11062c = g12;
        InterfaceC0557gc a10 = a();
        this.f11063d = a10;
        this.f11064e = new Mb(a10, c());
        this.f11065f = new Nb(cc2.f9841a.f11259b);
    }

    public Ec<Xb> a(Pc pc2, Xb xb2) {
        Sb sb2 = this.f11061b.f9841a;
        Context context = sb2.f11258a;
        Looper looper = sb2.f11259b.getLooper();
        Cc cc2 = this.f11061b;
        return new Ec<>(new Tc(context, looper, cc2.f9842b, a(cc2.f9841a.f11260c), b(), new C1020zc(pc2)), this.f11064e, new Ob(this.f11063d, new dc.c()), this.f11065f, xb2);
    }

    protected abstract InterfaceC0557gc a();

    protected abstract InterfaceC1021zd a(C0997yd c0997yd);

    protected abstract String b();

    protected abstract String c();
}
