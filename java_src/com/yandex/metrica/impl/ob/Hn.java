package com.yandex.metrica.impl.ob;

import com.yandex.metrica.ValidationException;
/* loaded from: classes2.dex */
public class Hn<T> implements Kn<T> {

    /* renamed from: a  reason: collision with root package name */
    private final Kn<T> f10216a;

    public Hn(Kn<T> kn) {
        this.f10216a = kn;
    }

    @Override // com.yandex.metrica.impl.ob.Kn
    public In a(T t10) {
        In a10 = this.f10216a.a(t10);
        if (a10.b()) {
            return a10;
        }
        throw new ValidationException(a10.a());
    }
}
