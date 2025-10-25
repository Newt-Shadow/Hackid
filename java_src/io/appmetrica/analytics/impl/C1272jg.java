package io.appmetrica.analytics.impl;

import android.content.Context;
import java.util.HashSet;
import java.util.Iterator;
/* renamed from: io.appmetrica.analytics.impl.jg  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1272jg {

    /* renamed from: a  reason: collision with root package name */
    public final HashSet f19860a = new HashSet();

    /* renamed from: b  reason: collision with root package name */
    public C1322lg f19861b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f19862c;

    /* renamed from: d  reason: collision with root package name */
    public final co f19863d;

    /* renamed from: e  reason: collision with root package name */
    public final Context f19864e;

    public C1272jg(Context context, co coVar) {
        this.f19864e = context;
        this.f19863d = coVar;
        this.f19861b = coVar.b();
        this.f19862c = coVar.c();
    }

    public final void a() {
        if (this.f19862c) {
            return;
        }
        Context context = this.f19864e;
        InterfaceC1043ab a10 = C1521tg.a(context, C1665za.E.f21040d.a());
        InterfaceC1447qg interfaceC1447qg = (InterfaceC1447qg) new C1048ag(this, new C1521tg(a10), new La(context), new C1546ug(context)).f19389f.getValue();
        try {
            a10.a(interfaceC1447qg);
        } catch (Throwable th) {
            interfaceC1447qg.a(th);
        }
    }

    public final synchronized void a(C1372ng c1372ng) {
        this.f19860a.add(c1372ng);
        if (this.f19862c) {
            c1372ng.a(this.f19861b);
        }
    }

    public final synchronized void a(C1322lg c1322lg) {
        Iterator it = this.f19860a.iterator();
        while (it.hasNext()) {
            ((C1372ng) it.next()).a(c1322lg);
        }
    }
}
