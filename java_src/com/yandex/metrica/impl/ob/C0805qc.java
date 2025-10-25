package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.impl.ob.C0787pi;
import com.yandex.metrica.impl.ob.C0935w;
import com.yandex.metrica.impl.ob.E;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* renamed from: com.yandex.metrica.impl.ob.qc  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0805qc implements E.c, C0935w.b {

    /* renamed from: a  reason: collision with root package name */
    private List<C0756oc> f13259a;

    /* renamed from: b  reason: collision with root package name */
    private final E f13260b;

    /* renamed from: c  reason: collision with root package name */
    private final C0924vc f13261c;

    /* renamed from: d  reason: collision with root package name */
    private final C0935w f13262d;

    /* renamed from: e  reason: collision with root package name */
    private volatile C0706mc f13263e;

    /* renamed from: f  reason: collision with root package name */
    private final Set<InterfaceC0731nc> f13264f;

    /* renamed from: g  reason: collision with root package name */
    private final Object f13265g;

    public C0805qc(Context context) {
        this(F0.g().c(), C0924vc.a(context), new C0787pi.b(context), F0.g().b());
    }

    private void d() {
        C0706mc a10 = a();
        if (!A2.a(this.f13263e, a10)) {
            this.f13261c.a(a10);
            this.f13263e = a10;
            C0706mc c0706mc = this.f13263e;
            for (InterfaceC0731nc interfaceC0731nc : this.f13264f) {
                interfaceC0731nc.a(c0706mc);
            }
        }
    }

    public synchronized void a(InterfaceC0731nc interfaceC0731nc) {
        this.f13264f.add(interfaceC0731nc);
    }

    public void b() {
        synchronized (this.f13265g) {
            this.f13260b.a(this);
            this.f13262d.a(this);
        }
    }

    public synchronized void c() {
        d();
    }

    public synchronized void a(C0787pi c0787pi) {
        this.f13259a = c0787pi.w();
        this.f13263e = a();
        this.f13261c.a(c0787pi, this.f13263e);
        C0706mc c0706mc = this.f13263e;
        for (InterfaceC0731nc interfaceC0731nc : this.f13264f) {
            interfaceC0731nc.a(c0706mc);
        }
    }

    C0805qc(E e10, C0924vc c0924vc, C0787pi.b bVar, C0935w c0935w) {
        this.f13264f = new HashSet();
        this.f13265g = new Object();
        this.f13260b = e10;
        this.f13261c = c0924vc;
        this.f13262d = c0935w;
        this.f13259a = bVar.a().w();
    }

    @Override // com.yandex.metrica.impl.ob.C0935w.b
    public synchronized void a(C0935w.a aVar) {
        d();
    }

    @Override // com.yandex.metrica.impl.ob.E.c
    public synchronized void a(E.b.a aVar) {
        d();
    }

    private C0706mc a() {
        C0935w.a c10 = this.f13262d.c();
        E.b.a b10 = this.f13260b.b();
        for (C0756oc c0756oc : this.f13259a) {
            if (c0756oc.f13065b.f9711a.contains(b10) && c0756oc.f13065b.f9712b.contains(c10)) {
                return c0756oc.f13064a;
            }
        }
        return null;
    }
}
