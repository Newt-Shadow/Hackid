package com.yandex.metrica.impl.ob;

import android.content.Context;
/* renamed from: com.yandex.metrica.impl.ob.g4  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0549g4 implements InterfaceC0648k4 {

    /* renamed from: a  reason: collision with root package name */
    private final X3 f12441a;

    /* renamed from: b  reason: collision with root package name */
    private final Vc f12442b;

    public AbstractC0549g4(Context context, X3 x32) {
        this(context, x32, new Vc(C0924vc.a(context), H2.a(context), F0.g().s()));
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0648k4
    public void a(C0445c0 c0445c0, D3 d32) {
        b(c0445c0, d32);
    }

    public X3 b() {
        return this.f12441a;
    }

    protected abstract void b(C0445c0 c0445c0, D3 d32);

    public Vc c() {
        return this.f12442b;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0648k4
    public void a() {
        this.f12441a.b(this);
        this.f12442b.b(this);
    }

    AbstractC0549g4(Context context, X3 x32, Vc vc2) {
        context.getApplicationContext();
        this.f12441a = x32;
        this.f12442b = vc2;
        x32.a(this);
        vc2.a(this);
    }
}
