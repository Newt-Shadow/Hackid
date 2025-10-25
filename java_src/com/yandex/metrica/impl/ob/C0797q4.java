package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.CounterConfiguration;
import com.yandex.metrica.impl.ob.D3;
/* renamed from: com.yandex.metrica.impl.ob.q4  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
class C0797q4 implements InterfaceC0673l4, InterfaceC0748o4<U3> {
    @Override // com.yandex.metrica.impl.ob.InterfaceC0673l4
    public InterfaceC0648k4 a(Context context, C0773p4 c0773p4, C0599i4 c0599i4, D3 d32) {
        return new C0820r4(context, c0773p4.b(new W3(c0599i4.b(), c0599i4.a()), d32, new Y3(this)));
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0748o4
    public Q3 b(Context context, I3 i32, D3.a aVar, C0834ri c0834ri) {
        return new C1012z4(context, i32, aVar, c0834ri.d(), new C0954wi(c0834ri), CounterConfiguration.b.MAIN);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0748o4
    public S3 a(Context context, I3 i32, D3.a aVar, C0834ri c0834ri) {
        return new U3(context, c0834ri.d(), i32, aVar, F0.g().m(), F0.g().u(), new C0954wi(c0834ri));
    }
}
