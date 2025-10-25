package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.CounterConfiguration;
import com.yandex.metrica.impl.ob.C0856sg;
import com.yandex.metrica.impl.ob.D3;
import java.io.File;
/* loaded from: classes2.dex */
public class U3 extends L3 implements InterfaceC0610ig, InterfaceC0586hg {
    private final C0856sg A;
    private final C0880tg B;
    private final C0842s2 C;
    private final InterfaceC0502e7<File> D;
    private final C0498e3 E;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements InterfaceC0716mm<File> {
        a() {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0716mm
        public void b(File file) {
            U3.a(U3.this, file);
        }
    }

    /* loaded from: classes2.dex */
    public class b implements C0856sg.a {
        public b() {
        }

        @Override // com.yandex.metrica.impl.ob.C0856sg.a
        public void a(C0486dg c0486dg) {
            if (c0486dg == null) {
                return;
            }
            U3.this.a(new C0445c0().a(c0486dg.a()).a(EnumC0396a1.EVENT_TYPE_SEND_REFERRER.b()));
        }
    }

    public U3(Context context, C0787pi c0787pi, I3 i32, D3.a aVar, C0856sg c0856sg, C0842s2 c0842s2, AbstractC0930vi abstractC0930vi) {
        this(context, i32, c0787pi, aVar, new B3(), new C0962x2(), new B0(), new V3(context, i32, aVar, abstractC0930vi, c0787pi, new T3(c0842s2), F0.g().q().d(), A2.b(context, i32.b()), F0.g().q(), F0.g().h()), c0856sg, c0842s2);
    }

    private void a(Context context, B0 b02) {
        File a10 = b02.a(context, "YandexMetricaNativeCrashes");
        if (a10 != null) {
            new Y6(a10, new a()).a();
        }
    }

    @Override // com.yandex.metrica.impl.ob.L3
    public void G() {
        this.A.a(this.B);
    }

    @Override // com.yandex.metrica.impl.ob.L3
    public CounterConfiguration.b s() {
        return CounterConfiguration.b.MAIN;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0586hg
    public void a() {
        x().c(true);
    }

    @Override // com.yandex.metrica.impl.ob.L3, com.yandex.metrica.impl.ob.S3
    public synchronized void a(D3.a aVar) {
        super.a(aVar);
        this.C.a(aVar.f9885l);
    }

    @Override // com.yandex.metrica.impl.ob.L3, com.yandex.metrica.impl.ob.InterfaceC0662ki
    public void a(C0787pi c0787pi) {
        super.a(c0787pi);
        this.E.a(c0787pi);
    }

    U3(Context context, I3 i32, C0787pi c0787pi, D3.a aVar, B3 b32, C0962x2 c0962x2, B0 b02, V3 v32, C0856sg c0856sg, C0842s2 c0842s2) {
        super(context, i32, b32, c0962x2, v32);
        this.A = c0856sg;
        I4 k10 = k();
        k10.a(EnumC0396a1.EVENT_TYPE_REGULAR, new C5(k10.b()));
        this.B = v32.c(this);
        this.C = c0842s2;
        C0726n7 a10 = v32.a(v32.f(), v32.b(this), f());
        this.D = a10;
        a10.a();
        a(context, b02);
        C0498e3 a11 = v32.a(this);
        this.E = a11;
        a11.a(c0787pi, aVar.f9890q);
    }

    static void a(U3 u32, File file) {
        u32.D.a(file);
    }
}
