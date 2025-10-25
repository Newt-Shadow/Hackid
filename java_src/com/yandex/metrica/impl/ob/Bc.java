package com.yandex.metrica.impl.ob;

import android.location.Location;
import com.yandex.metrica.impl.ob.H0;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes2.dex */
public class Bc implements J0 {

    /* renamed from: a  reason: collision with root package name */
    private Pc f9778a;

    /* renamed from: b  reason: collision with root package name */
    private Cc f9779b;

    /* renamed from: c  reason: collision with root package name */
    private final List<Ec<?>> f9780c;

    /* renamed from: d  reason: collision with root package name */
    private final InterfaceC0781pc<Xb> f9781d;

    /* renamed from: e  reason: collision with root package name */
    private final InterfaceC0781pc<Xb> f9782e;

    /* renamed from: f  reason: collision with root package name */
    private final InterfaceC0781pc<Xb> f9783f;

    /* renamed from: g  reason: collision with root package name */
    private final InterfaceC0781pc<C0457cc> f9784g;

    /* renamed from: h  reason: collision with root package name */
    private final H0 f9785h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f9786i;

    public Bc(Cc cc2, Pc pc2) {
        this(cc2, pc2, F0.g().s());
    }

    @Override // com.yandex.metrica.impl.ob.J0
    public void a() {
        if (this.f9786i) {
            for (Ec<?> ec2 : this.f9780c) {
                ec2.c();
            }
        }
    }

    public Location b() {
        if (this.f9786i) {
            return this.f9778a.a();
        }
        return null;
    }

    public void c() {
        if (this.f9786i) {
            this.f9785h.c();
            for (Ec<?> ec2 : this.f9780c) {
                ec2.a();
            }
        }
    }

    public void d() {
        this.f9785h.d();
        for (Ec<?> ec2 : this.f9780c) {
            ec2.b();
        }
    }

    private Bc(Cc cc2, Pc pc2, C0504e9 c0504e9) {
        this(cc2, pc2, new C0532fc(cc2, c0504e9), new C0656kc(cc2, c0504e9), new Lc(cc2), new C0507ec(cc2, c0504e9, pc2), new H0.c());
    }

    Bc(Cc cc2, Pc pc2, Pb pb2, Pb pb3, Lc lc2, C0507ec c0507ec, H0.c cVar) {
        Xb xb2;
        C0457cc c0457cc;
        Xb xb3;
        Xb xb4;
        this.f9779b = cc2;
        C0706mc c0706mc = cc2.f9843c;
        if (c0706mc != null) {
            this.f9786i = c0706mc.f12868g;
            xb2 = c0706mc.f12875n;
            xb3 = c0706mc.f12876o;
            xb4 = c0706mc.f12877p;
            c0457cc = c0706mc.f12878q;
        } else {
            xb2 = null;
            c0457cc = null;
            xb3 = null;
            xb4 = null;
        }
        this.f9778a = pc2;
        Ec<Xb> a10 = pb2.a(pc2, xb3);
        Ec<Xb> a11 = pb3.a(pc2, xb2);
        Ec<Xb> a12 = lc2.a(pc2, xb4);
        Ec<C0457cc> a13 = c0507ec.a(c0457cc);
        this.f9780c = Arrays.asList(a10, a11, a12, a13);
        this.f9781d = a11;
        this.f9782e = a10;
        this.f9783f = a12;
        this.f9784g = a13;
        H0 a14 = cVar.a(this.f9779b.f9841a.f11259b, this, this.f9778a.b());
        this.f9785h = a14;
        this.f9778a.b().a(a14);
    }

    public void a(C0787pi c0787pi) {
        this.f9778a.a(c0787pi);
    }

    public void a(C0706mc c0706mc) {
        this.f9786i = c0706mc != null && c0706mc.f12868g;
        this.f9778a.a(c0706mc);
        ((Ec) this.f9781d).a(c0706mc == null ? null : c0706mc.f12875n);
        ((Ec) this.f9782e).a(c0706mc == null ? null : c0706mc.f12876o);
        ((Ec) this.f9783f).a(c0706mc == null ? null : c0706mc.f12877p);
        ((Ec) this.f9784g).a(c0706mc != null ? c0706mc.f12878q : null);
        a();
    }
}
