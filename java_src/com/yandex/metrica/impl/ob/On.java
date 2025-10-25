package com.yandex.metrica.impl.ob;

import com.yandex.metrica.Revenue;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes2.dex */
public class On implements Kn<Revenue> {

    /* renamed from: a  reason: collision with root package name */
    private final Kn<List<In>> f11008a = new Jn();

    @Override // com.yandex.metrica.impl.ob.Kn
    public In a(Revenue revenue) {
        return this.f11008a.a(Arrays.asList(new Nn().a(revenue.quantity)));
    }
}
