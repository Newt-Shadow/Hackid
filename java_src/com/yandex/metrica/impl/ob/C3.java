package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.CounterConfiguration;
import com.yandex.metrica.impl.ob.D3;
import com.yandex.metrica.impl.ob.Lg;
/* loaded from: classes2.dex */
public class C3 extends L3 {
    public C3(Context context, C0787pi c0787pi, I3 i32, D3.a aVar, Lg.e eVar, AbstractC0930vi abstractC0930vi) {
        this(context, i32, new B3(), new C0962x2(), new M3(context, i32, aVar, abstractC0930vi, c0787pi, eVar, F0.g().q().d(), A2.b(context, i32.b()), F0.g().h()));
    }

    @Override // com.yandex.metrica.impl.ob.L3
    public CounterConfiguration.b s() {
        return CounterConfiguration.b.APPMETRICA;
    }

    C3(Context context, I3 i32, B3 b32, C0962x2 c0962x2, M3 m32) {
        super(context, i32, b32, c0962x2, m32);
    }
}
