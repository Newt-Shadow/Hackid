package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C0756oc;
import com.yandex.metrica.impl.ob.H0;
import java.util.Collection;
/* renamed from: com.yandex.metrica.impl.ob.hc  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0582hc {

    /* renamed from: a  reason: collision with root package name */
    private final C0607ic f12515a;

    /* renamed from: b  reason: collision with root package name */
    private final C0631jc f12516b;

    /* renamed from: c  reason: collision with root package name */
    private final dc.c f12517c;

    /* renamed from: d  reason: collision with root package name */
    private C0706mc f12518d;

    /* renamed from: e  reason: collision with root package name */
    private final E f12519e;

    /* renamed from: f  reason: collision with root package name */
    private final H2 f12520f;

    /* renamed from: g  reason: collision with root package name */
    private final Xc f12521g;

    /* renamed from: h  reason: collision with root package name */
    private final C0935w f12522h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f12523i;

    /* renamed from: j  reason: collision with root package name */
    private final Runnable f12524j;

    /* renamed from: com.yandex.metrica.impl.ob.hc$a */
    /* loaded from: classes2.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C0582hc.this.b();
            C0582hc.this.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.hc$b */
    /* loaded from: classes2.dex */
    public class b implements InterfaceC0931vj {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C0681lc f12526a;

        b(C0582hc c0582hc, C0681lc c0681lc) {
            this.f12526a = c0681lc;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0931vj
        public void a(Collection<C0907uj> collection) {
            this.f12526a.a(Tl.a(collection));
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C0582hc(com.yandex.metrica.impl.ob.C0607ic r4) {
        /*
            r3 = this;
            com.yandex.metrica.impl.ob.Xc r0 = new com.yandex.metrica.impl.ob.Xc
            com.yandex.metrica.impl.ob.Sb r1 = r4.f12604a
            android.content.Context r1 = r1.f11258a
            com.yandex.metrica.impl.ob.mc r2 = r4.f12608e
            if (r2 != 0) goto Lc
            r2 = 0
            goto Le
        Lc:
            com.yandex.metrica.impl.ob.Xb r2 = r2.f12874m
        Le:
            r0.<init>(r1, r2)
            r3.<init>(r4, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.C0582hc.<init>(com.yandex.metrica.impl.ob.ic):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        C0706mc c0706mc = this.f12518d;
        if (c0706mc != null) {
            long j10 = c0706mc.f12869h;
            if (j10 > 0) {
                this.f12515a.f12604a.f11259b.executeDelayed(this.f12524j, j10);
            }
        }
    }

    public void b() {
        C0681lc c0681lc = new C0681lc();
        c0681lc.b(this.f12517c.currentTimeMillis());
        c0681lc.a(this.f12517c.elapsedRealtime());
        this.f12521g.b();
        c0681lc.b(F2.a(this.f12520f.a().a()));
        this.f12515a.f12605b.a(new b(this, c0681lc));
        c0681lc.a(this.f12519e.b());
        c0681lc.a(C0756oc.a.a(this.f12522h.c()));
        this.f12516b.a(c0681lc);
        this.f12515a.f12606c.a();
        this.f12515a.f12607d.a();
    }

    public void d() {
        a();
    }

    public void e() {
        this.f12515a.f12604a.f11259b.remove(this.f12524j);
    }

    private void a() {
        C0706mc c0706mc = this.f12518d;
        boolean z10 = c0706mc != null && c0706mc.f12870i;
        if (this.f12523i != z10) {
            this.f12523i = z10;
            if (z10) {
                c();
            } else {
                this.f12515a.f12604a.f11259b.remove(this.f12524j);
            }
        }
    }

    private C0582hc(C0607ic c0607ic, Xc xc2) {
        this(c0607ic, new C0631jc(c0607ic.f12604a.f11258a), new dc.c(), F0.g().c(), F0.g().b(), H2.a(c0607ic.f12604a.f11258a), xc2, new H0.c());
    }

    public void a(C0706mc c0706mc) {
        this.f12518d = c0706mc;
        this.f12521g.a(c0706mc == null ? null : c0706mc.f12874m);
        a();
    }

    C0582hc(C0607ic c0607ic, C0631jc c0631jc, dc.c cVar, E e10, C0935w c0935w, H2 h22, Xc xc2, H0.c cVar2) {
        this.f12524j = new a();
        this.f12515a = c0607ic;
        this.f12516b = c0631jc;
        this.f12517c = cVar;
        this.f12518d = c0607ic.f12608e;
        this.f12519e = e10;
        this.f12522h = c0935w;
        this.f12520f = h22;
        this.f12521g = xc2;
        h22.a().a(cVar2.a(c0607ic.f12604a.f11259b, xc2, h22.a()));
    }
}
