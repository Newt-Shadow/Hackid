package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.os.Looper;
/* loaded from: classes2.dex */
public class Lc {

    /* renamed from: a  reason: collision with root package name */
    protected final Cc f10706a;

    /* renamed from: b  reason: collision with root package name */
    private final G1 f10707b;

    /* renamed from: c  reason: collision with root package name */
    private final Ic f10708c;

    public Lc(Cc cc2) {
        this(cc2, new G1());
    }

    private Ic a() {
        return new Ic();
    }

    Lc(Cc cc2, G1 g12) {
        this.f10706a = cc2;
        this.f10707b = g12;
        this.f10708c = a();
    }

    public Ec<Xb> a(Pc pc2, Xb xb2) {
        Sb sb2 = this.f10706a.f9841a;
        Context context = sb2.f11258a;
        Looper looper = sb2.f11259b.getLooper();
        Cc cc2 = this.f10706a;
        return new Ec<>(new Tc(context, looper, cc2.f9842b, this.f10707b.c(cc2.f9841a.f11260c), "passive", new C1020zc(pc2)), this.f10708c, new Kc(), new Jc(), xb2);
    }
}
