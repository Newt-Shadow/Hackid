package com.yandex.metrica.impl.ob;

import android.content.Context;
/* renamed from: com.yandex.metrica.impl.ob.ta  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0874ta<T> {

    /* renamed from: a  reason: collision with root package name */
    private final Context f13620a;

    /* renamed from: b  reason: collision with root package name */
    private final String f13621b;

    /* renamed from: c  reason: collision with root package name */
    private final InterfaceC0850sa<T> f13622c;

    /* renamed from: d  reason: collision with root package name */
    private final InterfaceC0741nm<C0826ra, C0803qa> f13623d;

    /* renamed from: e  reason: collision with root package name */
    private final InterfaceC0946wa f13624e;

    /* renamed from: f  reason: collision with root package name */
    private final C0922va f13625f;

    /* renamed from: g  reason: collision with root package name */
    private final M0 f13626g;

    /* renamed from: h  reason: collision with root package name */
    private final dc.d f13627h;

    public C0874ta(Context context, Q0 q02, String str, InterfaceC0850sa<T> interfaceC0850sa, InterfaceC0741nm<C0826ra, C0803qa> interfaceC0741nm, InterfaceC0946wa interfaceC0946wa) {
        this(context, str, interfaceC0850sa, interfaceC0741nm, interfaceC0946wa, new C0922va(context, str, interfaceC0946wa, q02), C0761oh.a(), new dc.c());
    }

    public synchronized void a(T t10, C0826ra c0826ra) {
        if (this.f13625f.a(this.f13623d.a(c0826ra))) {
            this.f13626g.a(this.f13621b, this.f13622c.a(t10));
            this.f13624e.a(new Z8(C0629ja.a(this.f13620a).g()), this.f13627h.currentTimeSeconds());
        }
    }

    public C0874ta(Context context, String str, InterfaceC0850sa<T> interfaceC0850sa, InterfaceC0741nm<C0826ra, C0803qa> interfaceC0741nm, InterfaceC0946wa interfaceC0946wa, C0922va c0922va, M0 m02, dc.d dVar) {
        this.f13620a = context;
        this.f13621b = str;
        this.f13622c = interfaceC0850sa;
        this.f13623d = interfaceC0741nm;
        this.f13624e = interfaceC0946wa;
        this.f13625f = c0922va;
        this.f13626g = m02;
        this.f13627h = dVar;
    }
}
