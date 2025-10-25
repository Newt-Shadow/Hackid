package io.appmetrica.analytics.impl;

import android.content.Context;
import android.os.ResultReceiver;
import io.appmetrica.analytics.internal.CounterConfigurationReporterType;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
public final class O4 implements Qa, Bl, Sa {

    /* renamed from: a  reason: collision with root package name */
    public final Context f18683a;

    /* renamed from: b  reason: collision with root package name */
    public final C1212h5 f18684b;

    /* renamed from: c  reason: collision with root package name */
    public final C1353mm f18685c;

    /* renamed from: d  reason: collision with root package name */
    public final Ah f18686d;

    /* renamed from: e  reason: collision with root package name */
    public final V4 f18687e;

    /* renamed from: f  reason: collision with root package name */
    public final Sm f18688f;

    /* renamed from: g  reason: collision with root package name */
    public ArrayList f18689g;

    /* renamed from: h  reason: collision with root package name */
    public final C1237i5 f18690h;

    /* renamed from: i  reason: collision with root package name */
    public final C1272jg f18691i;

    /* renamed from: j  reason: collision with root package name */
    public final C1310l4 f18692j;

    /* renamed from: k  reason: collision with root package name */
    public final C1397og f18693k;

    /* renamed from: l  reason: collision with root package name */
    public final Object f18694l;

    public O4(Context context, C1501sl c1501sl, C1212h5 c1212h5, G4 g42, C1272jg c1272jg) {
        this(context, c1501sl, c1212h5, g42, new Ah(g42.f18260b), c1272jg, new C1237i5(), new Q4(), new C1397og());
    }

    public static void b(G4 g42) {
        Boolean bool = g42.f18260b.f18212n;
        C1665za.E.b().b(!Boolean.FALSE.equals(bool));
    }

    @Override // io.appmetrica.analytics.impl.Qa
    public final void a(F4 f42) {
        Ah ah = this.f18686d;
        ah.f17958a = ah.f17958a.mergeFrom(f42);
    }

    @Override // io.appmetrica.analytics.impl.Qa
    public final CounterConfigurationReporterType c() {
        return CounterConfigurationReporterType.COMMUTATION;
    }

    public final F4 d() {
        return this.f18686d.f17958a;
    }

    public final C1272jg e() {
        return this.f18691i;
    }

    @Override // io.appmetrica.analytics.impl.Qa
    public final Context getContext() {
        return this.f18683a;
    }

    public O4(Context context, C1501sl c1501sl, C1212h5 c1212h5, G4 g42, Ah ah, C1272jg c1272jg, C1237i5 c1237i5, Q4 q42, C1397og c1397og) {
        this.f18689g = new ArrayList();
        this.f18694l = new Object();
        Context applicationContext = context.getApplicationContext();
        this.f18683a = applicationContext;
        this.f18684b = c1212h5;
        this.f18686d = ah;
        this.f18690h = c1237i5;
        this.f18687e = Q4.a(this);
        b(g42);
        C1353mm a10 = c1501sl.a(applicationContext, c1212h5, g42.f18259a);
        this.f18685c = a10;
        this.f18692j = AbstractC1335m4.a(a10, C1665za.j().b());
        this.f18688f = q42.a(this, a10);
        this.f18691i = c1272jg;
        this.f18693k = c1397og;
        c1501sl.a(c1212h5, this);
    }

    public final synchronized void a(L4 l42) {
        this.f18690h.f19775a.add(l42);
        M6.a(l42.f18512c, this.f18692j.a(AbstractC1477rm.a(this.f18685c.e().f18839l)));
    }

    public final synchronized void b(L4 l42) {
        this.f18690h.f19775a.remove(l42);
    }

    @Override // io.appmetrica.analytics.impl.Qa
    public final C1212h5 b() {
        return this.f18684b;
    }

    public final void a(C1138e6 c1138e6, L4 l42) {
        V4 v42 = this.f18687e;
        v42.getClass();
        v42.a(c1138e6, new U4(l42));
    }

    @Override // io.appmetrica.analytics.impl.Bl
    public final void a(EnumC1551ul enumC1551ul, Ql ql) {
        synchronized (this.f18694l) {
            Iterator it = this.f18689g.iterator();
            while (it.hasNext()) {
                C1267jb c1267jb = (C1267jb) it.next();
                M6.a(c1267jb.f19849a, enumC1551ul, this.f18692j.a(c1267jb.f19851c));
            }
            this.f18689g.clear();
        }
    }

    @Override // io.appmetrica.analytics.impl.Bl
    public final void a(Ql ql) {
        synchronized (this.f18694l) {
            Iterator it = this.f18690h.f19775a.iterator();
            while (it.hasNext()) {
                M6.a(((L4) it.next()).f18512c, this.f18692j.a(AbstractC1477rm.a(ql.f18839l)));
            }
            ArrayList arrayList = new ArrayList();
            Iterator it2 = this.f18689g.iterator();
            while (it2.hasNext()) {
                C1267jb c1267jb = (C1267jb) it2.next();
                if (Nl.a(ql, c1267jb.f19850b, c1267jb.f19851c, new C1218hb())) {
                    M6.a(c1267jb.f19849a, this.f18692j.a(c1267jb.f19851c));
                } else {
                    arrayList.add(c1267jb);
                }
            }
            this.f18689g = new ArrayList(arrayList);
            if (!arrayList.isEmpty()) {
                this.f18688f.c();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(C1267jb c1267jb) {
        ResultReceiver resultReceiver;
        HashMap hashMap;
        List list;
        HashMap hashMap2 = new HashMap();
        if (c1267jb != null) {
            list = c1267jb.f19850b;
            resultReceiver = c1267jb.f19849a;
            hashMap = c1267jb.f19851c;
        } else {
            resultReceiver = null;
            hashMap = hashMap2;
            list = null;
        }
        boolean a10 = this.f18685c.a(list, hashMap);
        if (!a10) {
            M6.a(resultReceiver, this.f18692j.a(hashMap));
        }
        if (!this.f18685c.g()) {
            if (a10) {
                M6.a(resultReceiver, this.f18692j.a(hashMap));
                return;
            }
            return;
        }
        synchronized (this.f18694l) {
            if (a10 && c1267jb != null) {
                this.f18689g.add(c1267jb);
            }
        }
        this.f18688f.c();
    }

    public final void a(ResultReceiver resultReceiver) {
        this.f18693k.a(new N4(resultReceiver));
    }

    public final C1310l4 a() {
        return this.f18692j;
    }

    @Override // io.appmetrica.analytics.impl.Sa
    public final void a(G4 g42) {
        this.f18685c.a(g42.f18259a);
        a(g42.f18260b);
    }
}
