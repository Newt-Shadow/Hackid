package com.google.android.gms.internal.play_billing;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
final class q2 extends u2 {

    /* renamed from: c  reason: collision with root package name */
    private static final Class f7098c = Collections.unmodifiableList(Collections.emptyList()).getClass();

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ q2(p2 p2Var) {
        super(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.play_billing.u2
    public final void a(Object obj, long j10) {
        Object unmodifiableList;
        List list = (List) f4.k(obj, j10);
        if (list instanceof o2) {
            unmodifiableList = ((o2) list).h();
        } else if (!f7098c.isAssignableFrom(list.getClass())) {
            if ((list instanceof m3) && (list instanceof i2)) {
                i2 i2Var = (i2) list;
                if (i2Var.f()) {
                    i2Var.e();
                    return;
                }
                return;
            }
            unmodifiableList = Collections.unmodifiableList(list);
        } else {
            return;
        }
        f4.x(obj, j10, unmodifiableList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.play_billing.u2
    public final void b(Object obj, Object obj2, long j10) {
        n2 n2Var;
        List list = (List) f4.k(obj2, j10);
        int size = list.size();
        List list2 = (List) f4.k(obj, j10);
        if (list2.isEmpty()) {
            if (list2 instanceof o2) {
                list2 = new n2(size);
            } else if ((list2 instanceof m3) && (list2 instanceof i2)) {
                list2 = ((i2) list2).j(size);
            } else {
                list2 = new ArrayList(size);
            }
            f4.x(obj, j10, list2);
        } else {
            if (f7098c.isAssignableFrom(list2.getClass())) {
                ArrayList arrayList = new ArrayList(list2.size() + size);
                arrayList.addAll(list2);
                f4.x(obj, j10, arrayList);
                n2Var = arrayList;
            } else if (list2 instanceof a4) {
                n2 n2Var2 = new n2(list2.size() + size);
                n2Var2.addAll(n2Var2.size(), (a4) list2);
                f4.x(obj, j10, n2Var2);
                n2Var = n2Var2;
            } else if ((list2 instanceof m3) && (list2 instanceof i2)) {
                i2 i2Var = (i2) list2;
                if (!i2Var.f()) {
                    list2 = i2Var.j(list2.size() + size);
                    f4.x(obj, j10, list2);
                }
            }
            list2 = n2Var;
        }
        int size2 = list2.size();
        int size3 = list.size();
        if (size2 > 0 && size3 > 0) {
            list2.addAll(list);
        }
        if (size2 > 0) {
            list = list2;
        }
        f4.x(obj, j10, list);
    }
}
