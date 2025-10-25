package io.appmetrica.analytics.impl;

import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.Set;
/* renamed from: io.appmetrica.analytics.impl.ed  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1145ed {

    /* renamed from: a  reason: collision with root package name */
    public final LinkedHashSet f19594a = new LinkedHashSet();

    public final synchronized Set a() {
        int r10;
        Set o02;
        LinkedHashSet<InterfaceC1120dd> linkedHashSet = this.f19594a;
        r10 = yc.p.r(linkedHashSet, 10);
        ArrayList arrayList = new ArrayList(r10);
        for (InterfaceC1120dd interfaceC1120dd : linkedHashSet) {
            arrayList.add(interfaceC1120dd.a());
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (((String) obj).length() > 0) {
                arrayList2.add(obj);
            }
        }
        o02 = yc.w.o0(arrayList2);
        return o02;
    }

    public final synchronized void a(InterfaceC1120dd... interfaceC1120ddArr) {
        yc.t.w(this.f19594a, interfaceC1120ddArr);
    }
}
