package com.google.android.gms.internal.auth;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
final class k2 extends o2 {

    /* renamed from: c  reason: collision with root package name */
    private static final Class f6079c = Collections.unmodifiableList(Collections.emptyList()).getClass();

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ k2(j2 j2Var) {
        super(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.auth.o2
    public final void a(Object obj, long j10) {
        Object unmodifiableList;
        List list = (List) a4.f(obj, j10);
        if (list instanceof i2) {
            unmodifiableList = ((i2) list).h();
        } else if (f6079c.isAssignableFrom(list.getClass())) {
            return;
        } else {
            if ((list instanceof g3) && (list instanceof d2)) {
                d2 d2Var = (d2) list;
                if (d2Var.f()) {
                    d2Var.e();
                    return;
                }
                return;
            }
            unmodifiableList = Collections.unmodifiableList(list);
        }
        a4.p(obj, j10, unmodifiableList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.auth.o2
    public final void b(Object obj, Object obj2, long j10) {
        h2 h2Var;
        List list = (List) a4.f(obj2, j10);
        int size = list.size();
        List list2 = (List) a4.f(obj, j10);
        if (list2.isEmpty()) {
            if (list2 instanceof i2) {
                list2 = new h2(size);
            } else if ((list2 instanceof g3) && (list2 instanceof d2)) {
                list2 = ((d2) list2).j(size);
            } else {
                list2 = new ArrayList(size);
            }
            a4.p(obj, j10, list2);
        } else {
            if (f6079c.isAssignableFrom(list2.getClass())) {
                ArrayList arrayList = new ArrayList(list2.size() + size);
                arrayList.addAll(list2);
                a4.p(obj, j10, arrayList);
                h2Var = arrayList;
            } else if (list2 instanceof v3) {
                h2 h2Var2 = new h2(list2.size() + size);
                h2Var2.addAll(h2Var2.size(), (v3) list2);
                a4.p(obj, j10, h2Var2);
                h2Var = h2Var2;
            } else if ((list2 instanceof g3) && (list2 instanceof d2)) {
                d2 d2Var = (d2) list2;
                if (!d2Var.f()) {
                    list2 = d2Var.j(list2.size() + size);
                    a4.p(obj, j10, list2);
                }
            }
            list2 = h2Var;
        }
        int size2 = list2.size();
        int size3 = list.size();
        if (size2 > 0 && size3 > 0) {
            list2.addAll(list);
        }
        if (size2 > 0) {
            list = list2;
        }
        a4.p(obj, j10, list);
    }
}
