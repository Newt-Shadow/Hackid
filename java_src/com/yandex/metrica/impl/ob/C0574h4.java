package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.CounterConfiguration;
import com.yandex.metrica.impl.ob.D3;
/* renamed from: com.yandex.metrica.impl.ob.h4  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
class C0574h4 extends C0892u4 {
    @Override // com.yandex.metrica.impl.ob.C0892u4, com.yandex.metrica.impl.ob.InterfaceC0748o4
    public S3 a(Context context, I3 i32, D3.a aVar, C0834ri c0834ri) {
        return new C3(context, c0834ri.d(), i32, aVar, new C0499e4(F0.g().u()), new C1026zi());
    }

    @Override // com.yandex.metrica.impl.ob.C0892u4, com.yandex.metrica.impl.ob.InterfaceC0748o4
    public Q3 b(Context context, I3 i32, D3.a aVar, C0834ri c0834ri) {
        return new C1012z4(context, i32, aVar, c0834ri.d(), new C1026zi(), CounterConfiguration.b.APPMETRICA);
    }

    @Override // com.yandex.metrica.impl.ob.C0892u4
    public L3 c(Context context, I3 i32, D3.a aVar, C0834ri c0834ri) {
        return new C3(context, c0834ri.d(), i32, aVar, new C0499e4(F0.g().u()), new C1026zi());
    }

    @Override // com.yandex.metrica.impl.ob.C0892u4
    public C1012z4 d(Context context, I3 i32, D3.a aVar, C0834ri c0834ri) {
        return new C1012z4(context, i32, aVar, c0834ri.d(), new C1026zi(), CounterConfiguration.b.APPMETRICA);
    }
}
