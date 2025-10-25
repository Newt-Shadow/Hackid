package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.t0  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0864t0<T> {

    /* renamed from: a  reason: collision with root package name */
    private final Zl<EnumC0888u0, Integer> f13608a;

    public AbstractC0864t0() {
        Zl<EnumC0888u0, Integer> zl = new Zl<>(0);
        zl.a(EnumC0888u0.UNDEFINED, 0);
        zl.a(EnumC0888u0.APP, 1);
        zl.a(EnumC0888u0.SATELLITE, 2);
        zl.a(EnumC0888u0.RETAIL, 3);
        this.f13608a = zl;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Zl<EnumC0888u0, Integer> a() {
        return this.f13608a;
    }

    public abstract boolean a(T t10, T t11);
}
