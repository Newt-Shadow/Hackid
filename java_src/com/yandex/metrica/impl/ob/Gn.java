package com.yandex.metrica.impl.ob;
/* loaded from: classes2.dex */
public class Gn<T> implements Kn<T> {

    /* renamed from: a  reason: collision with root package name */
    private final String f10138a;

    public Gn(String str) {
        this.f10138a = str;
    }

    @Override // com.yandex.metrica.impl.ob.Kn
    public In a(T t10) {
        if (t10 == null) {
            return In.a(this, this.f10138a + " is null.");
        }
        return In.a(this);
    }
}
