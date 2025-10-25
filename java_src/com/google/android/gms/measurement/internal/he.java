package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.re;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class he {

    /* renamed from: a  reason: collision with root package name */
    private String f7603a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f7604b;

    /* renamed from: c  reason: collision with root package name */
    private com.google.android.gms.internal.measurement.k7 f7605c;

    /* renamed from: d  reason: collision with root package name */
    private BitSet f7606d;

    /* renamed from: e  reason: collision with root package name */
    private BitSet f7607e;

    /* renamed from: f  reason: collision with root package name */
    private Map f7608f;

    /* renamed from: g  reason: collision with root package name */
    private Map f7609g;

    /* renamed from: h  reason: collision with root package name */
    final /* synthetic */ e f7610h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ he(e eVar, String str, com.google.android.gms.internal.measurement.k7 k7Var, BitSet bitSet, BitSet bitSet2, Map map, Map map2, byte[] bArr) {
        Objects.requireNonNull(eVar);
        this.f7610h = eVar;
        this.f7603a = str;
        this.f7606d = bitSet;
        this.f7607e = bitSet2;
        this.f7608f = map;
        this.f7609g = new r.a();
        for (Integer num : map2.keySet()) {
            ArrayList arrayList = new ArrayList();
            arrayList.add((Long) map2.get(num));
            this.f7609g.put(num, arrayList);
        }
        this.f7604b = false;
        this.f7605c = k7Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(c cVar) {
        int a10 = cVar.a();
        Boolean bool = cVar.f7305c;
        if (bool != null) {
            BitSet bitSet = this.f7607e;
            bool.booleanValue();
            bitSet.set(a10, true);
        }
        Boolean bool2 = cVar.f7306d;
        if (bool2 != null) {
            this.f7606d.set(a10, bool2.booleanValue());
        }
        if (cVar.f7307e != null) {
            Map map = this.f7608f;
            Integer valueOf = Integer.valueOf(a10);
            Long l10 = (Long) map.get(valueOf);
            long longValue = cVar.f7307e.longValue() / 1000;
            if (l10 == null || longValue > l10.longValue()) {
                this.f7608f.put(valueOf, Long.valueOf(longValue));
            }
        }
        if (cVar.f7308f != null) {
            Map map2 = this.f7609g;
            Integer valueOf2 = Integer.valueOf(a10);
            List list = (List) map2.get(valueOf2);
            if (list == null) {
                list = new ArrayList();
                this.f7609g.put(valueOf2, list);
            }
            if (cVar.b()) {
                list.clear();
            }
            re.a();
            w6 w6Var = this.f7610h.f8322a;
            m w10 = w6Var.w();
            String str = this.f7603a;
            b5 b5Var = c5.G0;
            if (w10.H(str, b5Var) && cVar.c()) {
                list.clear();
            }
            re.a();
            if (w6Var.w().H(this.f7603a, b5Var)) {
                Long valueOf3 = Long.valueOf(cVar.f7308f.longValue() / 1000);
                if (!list.contains(valueOf3)) {
                    list.add(valueOf3);
                    return;
                }
                return;
            }
            list.add(Long.valueOf(cVar.f7308f.longValue() / 1000));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final com.google.android.gms.internal.measurement.h6 b(int i10) {
        ArrayList arrayList;
        List list;
        com.google.android.gms.internal.measurement.g6 J = com.google.android.gms.internal.measurement.h6.J();
        J.t(i10);
        J.w(this.f7604b);
        com.google.android.gms.internal.measurement.k7 k7Var = this.f7605c;
        if (k7Var != null) {
            J.v(k7Var);
        }
        com.google.android.gms.internal.measurement.j7 K = com.google.android.gms.internal.measurement.k7.K();
        K.v(td.Q(this.f7606d));
        K.t(td.Q(this.f7607e));
        Map map = this.f7608f;
        if (map == null) {
            arrayList = null;
        } else {
            ArrayList arrayList2 = new ArrayList(map.size());
            for (Integer num : this.f7608f.keySet()) {
                int intValue = num.intValue();
                Long l10 = (Long) this.f7608f.get(Integer.valueOf(intValue));
                if (l10 != null) {
                    com.google.android.gms.internal.measurement.q6 G = com.google.android.gms.internal.measurement.r6.G();
                    G.t(intValue);
                    G.u(l10.longValue());
                    arrayList2.add((com.google.android.gms.internal.measurement.r6) G.p());
                }
            }
            arrayList = arrayList2;
        }
        if (arrayList != null) {
            K.x(arrayList);
        }
        Map map2 = this.f7609g;
        if (map2 == null) {
            list = Collections.emptyList();
        } else {
            ArrayList arrayList3 = new ArrayList(map2.size());
            for (Integer num2 : this.f7609g.keySet()) {
                com.google.android.gms.internal.measurement.l7 H = com.google.android.gms.internal.measurement.m7.H();
                H.t(num2.intValue());
                List list2 = (List) this.f7609g.get(num2);
                if (list2 != null) {
                    Collections.sort(list2);
                    H.u(list2);
                }
                arrayList3.add((com.google.android.gms.internal.measurement.m7) H.p());
            }
            list = arrayList3;
        }
        K.z(list);
        J.u(K);
        return (com.google.android.gms.internal.measurement.h6) J.p();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ BitSet c() {
        return this.f7606d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ he(e eVar, String str, byte[] bArr) {
        Objects.requireNonNull(eVar);
        this.f7610h = eVar;
        this.f7603a = str;
        this.f7604b = true;
        this.f7606d = new BitSet();
        this.f7607e = new BitSet();
        this.f7608f = new r.a();
        this.f7609g = new r.a();
    }
}
