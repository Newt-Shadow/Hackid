package com.yandex.metrica.impl.ob;

import android.location.Location;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class Mc {

    /* renamed from: a  reason: collision with root package name */
    private final Bc f10801a;

    /* renamed from: b  reason: collision with root package name */
    private final C0582hc f10802b;

    /* renamed from: c  reason: collision with root package name */
    private final Sc f10803c;

    /* renamed from: d  reason: collision with root package name */
    private final Rb f10804d;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public Mc(com.yandex.metrica.impl.ob.Nc r10) {
        /*
            r9 = this;
            com.yandex.metrica.impl.ob.Oc r0 = new com.yandex.metrica.impl.ob.Oc
            com.yandex.metrica.impl.ob.Sb r1 = r10.f10889a
            android.content.Context r1 = r1.f11258a
            r0.<init>(r1)
            com.yandex.metrica.impl.ob.Sc r1 = new com.yandex.metrica.impl.ob.Sc
            com.yandex.metrica.impl.ob.Sb r2 = r10.f10889a
            android.content.Context r3 = r2.f11258a
            com.yandex.metrica.impl.ob.pi r4 = r10.f10890b
            com.yandex.metrica.impl.ob.mc r5 = r10.f10891c
            com.yandex.metrica.impl.ob.U7 r6 = r10.f10892d
            com.yandex.metrica.impl.ob.T7 r7 = r10.f10893e
            com.yandex.metrica.core.api.executors.IHandlerExecutor r8 = r2.f11259b
            r2 = r1
            r2.<init>(r3, r4, r5, r6, r7, r8)
            com.yandex.metrica.impl.ob.Rb r2 = new com.yandex.metrica.impl.ob.Rb
            com.yandex.metrica.impl.ob.mc r3 = r10.f10891c
            com.yandex.metrica.impl.ob.U7 r4 = r10.f10892d
            com.yandex.metrica.impl.ob.T7 r5 = r10.f10893e
            r2.<init>(r3, r4, r5)
            r9.<init>(r10, r0, r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.Mc.<init>(com.yandex.metrica.impl.ob.Nc):void");
    }

    public void a() {
        this.f10803c.a();
    }

    public Location b() {
        return this.f10801a.b();
    }

    public void c() {
        this.f10801a.a();
        this.f10802b.b();
    }

    public void d() {
        this.f10801a.c();
        this.f10802b.d();
    }

    public void e() {
        this.f10801a.d();
        this.f10802b.e();
    }

    private Mc(Nc nc2, Oc oc2, Sc sc2, Rb rb2) {
        this(nc2, oc2, Cc.a(nc2, sc2, rb2, oc2.a()), sc2, rb2);
    }

    public void a(C0787pi c0787pi) {
        this.f10803c.a(c0787pi);
        this.f10801a.a(c0787pi);
    }

    public void a(C0706mc c0706mc) {
        this.f10803c.a(c0706mc);
        this.f10804d.a(c0706mc);
        this.f10801a.a(c0706mc);
        this.f10802b.a(c0706mc);
    }

    private Mc(Nc nc2, Oc oc2, Cc cc2, Sc sc2, Rb rb2) {
        this(nc2, oc2, cc2, new Pc(nc2.f10889a.f11258a, nc2.f10891c, sc2, rb2, nc2.f10890b.d()), sc2, rb2);
    }

    private Mc(Nc nc2, Oc oc2, Cc cc2, Pc pc2, Sc sc2, Rb rb2) {
        this(nc2, new Bc(cc2, pc2), new C0582hc(C0607ic.a(nc2, sc2, rb2, oc2.c(), oc2.b())), sc2, rb2);
    }

    Mc(Nc nc2, Bc bc2, C0582hc c0582hc, Sc sc2, Rb rb2) {
        this.f10801a = bc2;
        this.f10802b = c0582hc;
        this.f10803c = sc2;
        this.f10804d = rb2;
    }
}
