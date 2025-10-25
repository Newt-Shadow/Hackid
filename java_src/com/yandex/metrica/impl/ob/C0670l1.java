package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.CounterConfiguration;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.yandex.metrica.impl.ob.l1  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0670l1 extends B {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C0670l1(Context context, A3 a32, com.yandex.metrica.f fVar, T1 t12) {
        this(context, a32, fVar, t12, new A0(context));
    }

    private C0670l1(Context context, A3 a32, com.yandex.metrica.f fVar, T1 t12, A0 a02) {
        this(context, t12, fVar, new Q1(a32, new CounterConfiguration(fVar), fVar.userProfileID), a02, P.g().j(), new Zg(), new Yg(null, null), new X6(), new S6(), new M6(), new K6(), new C0846s6(a02), P.g().k());
    }

    C0670l1(Context context, T1 t12, com.yandex.metrica.f fVar, Q1 q12, A0 a02, InterfaceC0442bm interfaceC0442bm, Zg zg, Yg yg, X6 x62, S6 s62, M6 m62, K6 k62, C0846s6 c0846s6, C1024zg c1024zg) {
        super(context, t12, q12, a02, interfaceC0442bm, zg.a(t12.b(), fVar.apiKey, false), yg, x62, s62, m62, k62, c0846s6);
        c1024zg.a(fVar.apiKey, new Ag(fVar, t12));
    }
}
