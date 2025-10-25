package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.modulesapi.internal.service.event.ModuleServiceEventHandler;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
/* renamed from: io.appmetrica.analytics.impl.od  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1394od extends Pg {

    /* renamed from: b  reason: collision with root package name */
    public final ArrayList f20293b;

    public C1394od(C1386o5 c1386o5) {
        super(c1386o5);
        String b10 = c1386o5.b().b();
        b10 = b10 == null ? "empty" : b10;
        kotlin.jvm.internal.f0 f0Var = kotlin.jvm.internal.f0.f24982a;
        String.format("[ModulesEventHandler-%s]", Arrays.copyOf(new Object[]{b10}, 1));
        LinkedHashMap a10 = C1665za.j().n().a(b10);
        ArrayList arrayList = new ArrayList(a10.size());
        for (Map.Entry entry : a10.entrySet()) {
            arrayList.add(xc.q.a(entry.getValue(), new C1170fd(c1386o5, (String) entry.getKey())));
        }
        this.f20293b = arrayList;
    }

    @Override // io.appmetrica.analytics.impl.Pg
    public final boolean a(C1138e6 c1138e6) {
        ArrayList arrayList = this.f20293b;
        if (!(arrayList instanceof Collection) || !arrayList.isEmpty()) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                xc.k kVar = (xc.k) it.next();
                C1170fd c1170fd = (C1170fd) kVar.b();
                if (((ModuleServiceEventHandler) kVar.a()).handle(new C1245id(c1170fd.f19643b, c1170fd.f19642a, new C1220hd(c1170fd.f19644c, c1138e6)), c1138e6)) {
                    return true;
                }
            }
        }
        return false;
    }
}
