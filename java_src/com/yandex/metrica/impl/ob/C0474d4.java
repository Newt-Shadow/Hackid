package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.impl.ob.D3;
/* renamed from: com.yandex.metrica.impl.ob.d4  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0474d4 extends L3 {
    private final String A;
    private final C0842s2 B;

    public C0474d4(Context context, I3 i32, D3.a aVar, C0842s2 c0842s2, C0787pi c0787pi, AbstractC0930vi abstractC0930vi) {
        this(context, i32, new B3(), new C0962x2(), new M3(context, i32, aVar, abstractC0930vi, c0787pi, new C0424b4(c0842s2), F0.g().q().d(), A2.b(context, i32.b()), F0.g().h()), c0842s2);
    }

    @Override // com.yandex.metrica.impl.ob.L3, com.yandex.metrica.impl.ob.S3
    public synchronized void a(D3.a aVar) {
        super.a(aVar);
        this.B.a(this.A, aVar.f9885l);
    }

    C0474d4(Context context, I3 i32, B3 b32, C0962x2 c0962x2, M3 m32, C0842s2 c0842s2) {
        super(context, i32, b32, c0962x2, m32);
        this.A = i32.a();
        this.B = c0842s2;
    }
}
