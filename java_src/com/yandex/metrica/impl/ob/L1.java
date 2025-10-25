package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.os.Bundle;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.impl.ob.C0919v7;
import com.yandex.metrica.impl.ob.D3;
import com.yandex.metrica.impl.ob.J;
import com.yandex.metrica.impl.ob.Mg;
import java.io.File;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes2.dex */
public class L1 {

    /* renamed from: a  reason: collision with root package name */
    private final Context f10651a;

    /* renamed from: b  reason: collision with root package name */
    private final ICommonExecutor f10652b;

    /* renamed from: c  reason: collision with root package name */
    private final C0623j4 f10653c;

    /* renamed from: d  reason: collision with root package name */
    private final B0 f10654d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements InterfaceC0716mm<Z6> {
        a() {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0716mm
        public void b(Z6 z62) {
            Z6 z63 = z62;
            L1 l12 = L1.this;
            C0599i4 c0599i4 = new C0599i4(z63.a(), z63.f(), z63.g(), z63.h(), z63.i());
            String e10 = z63.e();
            byte[] c10 = z63.c();
            int b10 = z63.b();
            HashMap<J.a, Integer> j10 = z63.j();
            String d10 = z63.d();
            C0467cm b11 = Ul.b(z63.a());
            List<Integer> list = C1008z0.f14050i;
            J a10 = new J(c10, e10, EnumC0396a1.EVENT_TYPE_EXCEPTION_UNHANDLED_FROM_FILE.b(), b11).a(j10);
            a10.f12105h = b10;
            l12.a(c0599i4, a10.c(d10), new D3(new Mg.b(null, null, null, null, null, null, false, null), new D3.a(), null));
        }
    }

    /* loaded from: classes2.dex */
    protected class b implements InterfaceC0716mm<String> {

        /* renamed from: a  reason: collision with root package name */
        private final C0599i4 f10656a;

        /* renamed from: b  reason: collision with root package name */
        private final InterfaceC0741nm<String, C0445c0> f10657b;

        public b(C0599i4 c0599i4, InterfaceC0741nm<String, C0445c0> interfaceC0741nm) {
            this.f10656a = c0599i4;
            this.f10657b = interfaceC0741nm;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0716mm
        public void b(String str) {
            L1.this.a(this.f10656a, this.f10657b.a(str), new D3(new Mg.b(null, null, null, null, null, null, false, null), new D3.a(), null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public L1(Context context, C0623j4 c0623j4, ICommonExecutor iCommonExecutor, B0 b02) {
        this.f10651a = context;
        this.f10652b = iCommonExecutor;
        this.f10653c = c0623j4;
        this.f10654d = b02;
    }

    public void a(File file) {
        C0402a7 c0402a7 = new C0402a7();
        this.f10652b.execute(new RunnableC0870t6(file, c0402a7, c0402a7, new a()));
    }

    public void a(C0599i4 c0599i4, C0445c0 c0445c0, D3 d32) {
        this.f10653c.a(c0599i4, d32).a(c0445c0, d32);
        this.f10653c.a(c0599i4.b(), c0599i4.c().intValue(), c0599i4.d());
    }

    public void a(C0823r7 c0823r7, InterfaceC0741nm<String, C0445c0> interfaceC0741nm) {
        ICommonExecutor iCommonExecutor = this.f10652b;
        B0 b02 = this.f10654d;
        String str = c0823r7.f13486a.f13684b;
        b02.getClass();
        iCommonExecutor.execute(new RunnableC0870t6(new File(str), new C0602i7(new C0452c7(EnumC0552g7.CRASHPAD, c0823r7.f13488c.f10119b), new C0577h7(new P6())), new C0919v7.c(c0823r7.f13486a.f13683a), new b(c0823r7.f13487b, interfaceC0741nm)));
    }

    public void a(C0445c0 c0445c0, Bundle bundle) {
        if (EnumC0396a1.EVENT_TYPE_UNDEFINED.b() == c0445c0.f12102e) {
            return;
        }
        this.f10652b.execute(new N1(this.f10651a, c0445c0, bundle, this.f10653c));
    }
}
