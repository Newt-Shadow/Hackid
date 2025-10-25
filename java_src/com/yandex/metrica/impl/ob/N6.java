package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.Converter;
/* loaded from: classes2.dex */
public class N6 implements Converter {

    /* renamed from: a  reason: collision with root package name */
    private final O6<H6> f10873a;

    public N6() {
        this(new O6(new X6()));
    }

    public byte[] a(H6 h62) {
        return this.f10873a.a(h62);
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object fromModel(Object obj) {
        return this.f10873a.a((H6) obj);
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        byte[] bArr = (byte[]) obj;
        throw new UnsupportedOperationException();
    }

    N6(O6<H6> o62) {
        this.f10873a = o62;
    }
}
