package com.yandex.metrica.impl.ob;

import java.util.ArrayList;
import java.util.List;
/* renamed from: com.yandex.metrica.impl.ob.mg  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0710mg {

    /* renamed from: a  reason: collision with root package name */
    private final xc.d f12934a;

    /* renamed from: b  reason: collision with root package name */
    private final xc.d f12935b;

    /* renamed from: c  reason: collision with root package name */
    private final xc.d f12936c;

    /* renamed from: d  reason: collision with root package name */
    private final List<C0486dg> f12937d;

    /* renamed from: e  reason: collision with root package name */
    private final C0856sg f12938e;

    /* renamed from: f  reason: collision with root package name */
    private final C0952wg f12939f;

    /* renamed from: g  reason: collision with root package name */
    private final C0561gg f12940g;

    /* renamed from: h  reason: collision with root package name */
    private final C0976xg f12941h;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.yandex.metrica.impl.ob.mg$a */
    /* loaded from: classes2.dex */
    public interface a {
        void a();
    }

    /* renamed from: com.yandex.metrica.impl.ob.mg$b */
    /* loaded from: classes2.dex */
    static final class b extends kotlin.jvm.internal.n implements id.a {
        b() {
            super(0);
        }

        @Override // id.a
        public Object invoke() {
            return new C0735ng(this);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.mg$c */
    /* loaded from: classes2.dex */
    static final class c extends kotlin.jvm.internal.n implements id.a {
        c() {
            super(0);
        }

        @Override // id.a
        public Object invoke() {
            return new C0760og(this);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.mg$d */
    /* loaded from: classes2.dex */
    static final class d extends kotlin.jvm.internal.n implements id.a {
        d() {
            super(0);
        }

        @Override // id.a
        public Object invoke() {
            return new C0785pg(this);
        }
    }

    public C0710mg(C0856sg c0856sg, C0952wg c0952wg, C0561gg c0561gg, C0976xg c0976xg) {
        xc.d a10;
        xc.d a11;
        xc.d a12;
        this.f12938e = c0856sg;
        this.f12939f = c0952wg;
        this.f12940g = c0561gg;
        this.f12941h = c0976xg;
        a10 = xc.f.a(new c());
        this.f12934a = a10;
        a11 = xc.f.a(new b());
        this.f12935b = a11;
        a12 = xc.f.a(new d());
        this.f12936c = a12;
        this.f12937d = new ArrayList();
    }

    public static final a b(C0710mg c0710mg) {
        return (a) c0710mg.f12935b.getValue();
    }

    public static final a c(C0710mg c0710mg) {
        return (a) c0710mg.f12934a.getValue();
    }

    public static final void a(C0710mg c0710mg, C0486dg c0486dg, a aVar) {
        c0710mg.f12937d.add(c0486dg);
        if (c0710mg.f12941h.a(c0486dg)) {
            c0710mg.f12938e.a(c0486dg);
        } else {
            aVar.a();
        }
    }

    public final void b() {
        this.f12939f.a((InterfaceC0928vg) this.f12936c.getValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a() {
        List<C0486dg> L;
        List<C0486dg> list = this.f12937d;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (this.f12941h.b((C0486dg) obj)) {
                arrayList.add(obj);
            }
        }
        L = yc.w.L(arrayList);
        this.f12938e.a(this.f12941h.a(L));
    }
}
