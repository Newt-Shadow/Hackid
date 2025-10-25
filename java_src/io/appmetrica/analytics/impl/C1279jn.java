package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.backport.BiFunction;
import java.util.ArrayList;
import java.util.Map;
import java.util.TreeMap;
/* renamed from: io.appmetrica.analytics.impl.jn  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1279jn {

    /* renamed from: a  reason: collision with root package name */
    public final InterfaceC1254in f19876a;

    /* renamed from: b  reason: collision with root package name */
    public final BiFunction f19877b;

    /* renamed from: c  reason: collision with root package name */
    public final C1467rc f19878c;

    public C1279jn() {
        this(new C1205gn(), new C1615xa(), C1509t4.j().m());
    }

    public final ArrayList a(Thread thread, Thread thread2) {
        Map map;
        ArrayList arrayList = new ArrayList();
        TreeMap treeMap = new TreeMap(new C1230hn());
        try {
            map = this.f19876a.c();
        } catch (SecurityException unused) {
            map = null;
        }
        if (map != null) {
            treeMap.putAll(map);
        }
        if (thread2 != null) {
            treeMap.remove(thread2);
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            Thread thread3 = (Thread) entry.getKey();
            if (thread3 != thread && thread3 != thread2) {
                arrayList.add((C1105cn) this.f19877b.apply(thread3, (StackTraceElement[]) entry.getValue()));
            }
        }
        return arrayList;
    }

    public C1279jn(InterfaceC1254in interfaceC1254in, C1615xa c1615xa, C1467rc c1467rc) {
        this.f19876a = interfaceC1254in;
        this.f19877b = c1615xa;
        this.f19878c = c1467rc;
    }
}
