package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.CounterConfiguration;
/* renamed from: com.yandex.metrica.impl.ob.d0  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0470d0 extends B {

    /* renamed from: p  reason: collision with root package name */
    private final C0725n6 f12197p;

    /* renamed from: q  reason: collision with root package name */
    private final C0918v6 f12198q;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0470d0(Context context, A3 a32, com.yandex.metrica.j jVar, T1 t12) {
        this(context, a32, jVar, t12, new A0(context));
    }

    @Override // com.yandex.metrica.impl.ob.B, com.yandex.metrica.impl.ob.R0
    public void a(H6 h62) {
        this.f12197p.a(this.f12198q.a(h62, this.f9735b));
        b(h62);
    }

    private C0470d0(Context context, A3 a32, com.yandex.metrica.j jVar, T1 t12, A0 a02) {
        this(context, t12, new Q1(a32, new CounterConfiguration(jVar, CounterConfiguration.b.CRASH), jVar.userProfileID), a02, new C0725n6(context), new C0918v6(), P.g().j(), new Ug(), new Yg(null, null), new X6(), new S6(), new M6(), new K6(), new C0846s6(a02));
    }

    C0470d0(Context context, T1 t12, Q1 q12, A0 a02, C0725n6 c0725n6, C0918v6 c0918v6, InterfaceC0442bm interfaceC0442bm, ec.d dVar, Yg yg, X6 x62, S6 s62, M6 m62, K6 k62, C0846s6 c0846s6) {
        super(context, t12, q12, a02, interfaceC0442bm, dVar, yg, x62, s62, m62, k62, c0846s6);
        this.f12197p = c0725n6;
        this.f12198q = c0918v6;
    }
}
