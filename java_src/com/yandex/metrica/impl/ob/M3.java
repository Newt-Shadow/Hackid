package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.impl.ob.C0399a4;
import com.yandex.metrica.impl.ob.C0426b6;
import com.yandex.metrica.impl.ob.D3;
import com.yandex.metrica.impl.ob.K3;
import com.yandex.metrica.impl.ob.Lg;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class M3 {

    /* renamed from: a  reason: collision with root package name */
    private final b f10773a;

    /* renamed from: b  reason: collision with root package name */
    private final c f10774b;

    /* renamed from: c  reason: collision with root package name */
    protected final Context f10775c;

    /* renamed from: d  reason: collision with root package name */
    private final I3 f10776d;

    /* renamed from: e  reason: collision with root package name */
    private final D3.a f10777e;

    /* renamed from: f  reason: collision with root package name */
    private final AbstractC0930vi f10778f;

    /* renamed from: g  reason: collision with root package name */
    protected final C0787pi f10779g;

    /* renamed from: h  reason: collision with root package name */
    private final Lg.e f10780h;

    /* renamed from: i  reason: collision with root package name */
    private final Dm f10781i;

    /* renamed from: j  reason: collision with root package name */
    private final ICommonExecutor f10782j;

    /* renamed from: k  reason: collision with root package name */
    private final C0521f1 f10783k;

    /* renamed from: l  reason: collision with root package name */
    private final int f10784l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements C0399a4.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ S1 f10785a;

        a(M3 m32, S1 s12) {
            this.f10785a = s12;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private final String f10786a;

        b(String str) {
            this.f10786a = str;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Sl a() {
            return Ul.a(this.f10786a);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public C0467cm b() {
            return Ul.b(this.f10786a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        private final I3 f10787a;

        /* renamed from: b  reason: collision with root package name */
        private final C0629ja f10788b;

        c(Context context, I3 i32) {
            this(i32, C0629ja.a(context));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public C0454c9 a() {
            return new C0454c9(this.f10788b.b(this.f10787a));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public C0404a9 b() {
            return new C0404a9(this.f10788b.b(this.f10787a));
        }

        c(I3 i32, C0629ja c0629ja) {
            this.f10787a = i32;
            this.f10788b = c0629ja;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public M3(Context context, I3 i32, D3.a aVar, AbstractC0930vi abstractC0930vi, C0787pi c0787pi, Lg.e eVar, ICommonExecutor iCommonExecutor, int i10, C0521f1 c0521f1) {
        this(context, i32, aVar, abstractC0930vi, c0787pi, eVar, iCommonExecutor, new Dm(), i10, new b(aVar.f9877d), new c(context, i32), c0521f1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public M5 a() {
        return new M5(this.f10775c, this.f10776d, this.f10784l);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public L7 b(L3 l32) {
        return new L7(l32, C0629ja.a(this.f10775c).c(this.f10776d), new K7(l32.s()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b c() {
        return this.f10773a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c d() {
        return this.f10774b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public S1<L3> e(L3 l32) {
        S1<L3> s12 = new S1<>(l32, this.f10778f.a(), this.f10782j);
        this.f10783k.a(s12);
        return s12;
    }

    M3(Context context, I3 i32, D3.a aVar, AbstractC0930vi abstractC0930vi, C0787pi c0787pi, Lg.e eVar, ICommonExecutor iCommonExecutor, Dm dm, int i10, b bVar, c cVar, C0521f1 c0521f1) {
        this.f10775c = context;
        this.f10776d = i32;
        this.f10777e = aVar;
        this.f10778f = abstractC0930vi;
        this.f10779g = c0787pi;
        this.f10780h = eVar;
        this.f10782j = iCommonExecutor;
        this.f10781i = dm;
        this.f10784l = i10;
        this.f10773a = bVar;
        this.f10774b = cVar;
        this.f10783k = c0521f1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Z3 a(L3 l32) {
        return new Z3(new Lg.c(l32, this.f10780h), this.f10779g, new Lg.a(this.f10777e));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public I4 c(L3 l32) {
        return new I4(l32);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public K3.b d(L3 l32) {
        return new K3.b(l32);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0426b6 a(L3 l32, C0428b8 c0428b8, C0426b6.a aVar) {
        return new C0426b6(l32, new C0401a6(c0428b8), aVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0399a4 a(C0454c9 c0454c9, C0428b8 c0428b8, C0426b6 c0426b6, L7 l72, C0839s c0839s, C0576h6 c0576h6, S1 s12) {
        return new C0399a4(c0454c9, c0428b8, c0426b6, l72, c0839s, this.f10781i, c0576h6, this.f10784l, new a(this, s12), new O3(c0428b8, new Y8(c0428b8)), new dc.c());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0576h6 b() {
        return new C0576h6(this.f10775c, this.f10776d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0428b8 e() {
        return F0.g().w().a(this.f10776d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public L4<X4, L3> a(L3 l32, I4 i42) {
        return new L4<>(i42, l32);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0680lb a(L7 l72) {
        return new C0680lb(l72);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0804qb a(L7 l72, Z3 z32) {
        return new C0804qb(l72, z32);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0755ob a(List<InterfaceC0705mb> list, InterfaceC0780pb interfaceC0780pb) {
        return new C0755ob(list, interfaceC0780pb);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public H a(C0454c9 c0454c9) {
        return new H(this.f10775c, c0454c9);
    }
}
