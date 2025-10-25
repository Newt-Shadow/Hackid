package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.ValidationException;
/* renamed from: io.appmetrica.analytics.impl.kn  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C1304kn implements Yn {

    /* renamed from: a  reason: collision with root package name */
    public final Yn f19999a;

    public C1304kn(Yn yn) {
        this.f19999a = yn;
    }

    @Override // io.appmetrica.analytics.impl.Yn
    public final Wn a(Object obj) {
        Wn a10 = this.f19999a.a(obj);
        if (a10.f19201a) {
            return a10;
        }
        throw new ValidationException(a10.f19202b);
    }

    public final Yn a() {
        return this.f19999a;
    }
}
