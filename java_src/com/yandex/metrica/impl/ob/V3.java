package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.impl.ob.D3;
import com.yandex.metrica.impl.ob.Lg;
import com.yandex.metrica.impl.ob.U3;
/* loaded from: classes2.dex */
public class V3 extends M3 {

    /* renamed from: m  reason: collision with root package name */
    private final Pm f11634m;

    public V3(Context context, I3 i32, D3.a aVar, AbstractC0930vi abstractC0930vi, C0787pi c0787pi, Lg.e eVar, ICommonExecutor iCommonExecutor, int i10, Pm pm, C0521f1 c0521f1) {
        super(context, i32, aVar, abstractC0930vi, c0787pi, eVar, iCommonExecutor, i10, c0521f1);
        this.f11634m = pm;
    }

    public C0726n7 a(C0602i7 c0602i7, InterfaceC0527f7<String> interfaceC0527f7, C0454c9 c0454c9) {
        return new C0726n7(this.f10775c, new B0(), c0602i7, interfaceC0527f7, F0.g().q().e(), c0454c9);
    }

    public InterfaceC0527f7<String> b(U3 u32) {
        return new C0676l7(u32);
    }

    public C0880tg c(U3 u32) {
        return new C0880tg(new C0685lg(u32), new U3.b(), u32);
    }

    public C0602i7 f() {
        return new C0602i7(new C0452c7(EnumC0552g7.BREAKPAD, null), new C0577h7(new P6()));
    }

    public C0498e3 a(U3 u32) {
        return new C0498e3(this.f10775c, this.f11634m.a(), this.f11634m.i(), C0523f3.a(), new C0448c3(this.f10775c), new C0423b3(u32, F0.g().q().e()), F0.g().b(), new C0473d3());
    }
}
