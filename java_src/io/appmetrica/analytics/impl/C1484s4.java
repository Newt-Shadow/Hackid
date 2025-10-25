package io.appmetrica.analytics.impl;

import android.content.Context;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
/* renamed from: io.appmetrica.analytics.impl.s4  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1484s4 {

    /* renamed from: a  reason: collision with root package name */
    public final Object f20572a;

    /* renamed from: b  reason: collision with root package name */
    public final C1535u5 f20573b;

    /* renamed from: c  reason: collision with root package name */
    public final HashMap f20574c;

    /* renamed from: d  reason: collision with root package name */
    public final Ba f20575d;

    /* renamed from: e  reason: collision with root package name */
    public final Context f20576e;

    /* renamed from: f  reason: collision with root package name */
    public final C1659z4 f20577f;

    public C1484s4(Context context, C1535u5 c1535u5) {
        this(context, c1535u5, new C1659z4());
    }

    public final InterfaceC1584w4 a(C1211h4 c1211h4, G4 g42) {
        InterfaceC1584w4 interfaceC1584w4;
        synchronized (this.f20572a) {
            interfaceC1584w4 = (InterfaceC1584w4) this.f20574c.get(c1211h4);
            if (interfaceC1584w4 == null) {
                this.f20577f.getClass();
                interfaceC1584w4 = C1659z4.a(c1211h4).a(this.f20576e, this.f20573b, c1211h4, g42);
                this.f20574c.put(c1211h4, interfaceC1584w4);
                this.f20575d.a(new C1459r4(c1211h4.f19712b, c1211h4.f19713c, c1211h4.f19714d), c1211h4);
            }
        }
        return interfaceC1584w4;
    }

    public C1484s4(Context context, C1535u5 c1535u5, C1659z4 c1659z4) {
        this.f20572a = new Object();
        this.f20574c = new HashMap();
        this.f20575d = new Ba();
        this.f20576e = context.getApplicationContext();
        this.f20573b = c1535u5;
        this.f20577f = c1659z4;
    }

    public final void a(int i10, String str, String str2) {
        Integer valueOf = Integer.valueOf(i10);
        synchronized (this.f20572a) {
            Ba ba2 = this.f20575d;
            Collection<C1211h4> collection = (Collection) ba2.f17991a.remove(new C1459r4(str, valueOf, str2));
            if (!Rn.a(collection)) {
                collection.size();
                ArrayList arrayList = new ArrayList(collection.size());
                for (C1211h4 c1211h4 : collection) {
                    arrayList.add((InterfaceC1584w4) this.f20574c.remove(c1211h4));
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((InterfaceC1584w4) it.next()).a();
                }
            }
        }
    }
}
