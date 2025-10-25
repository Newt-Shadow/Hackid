package io.appmetrica.analytics.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
/* renamed from: io.appmetrica.analytics.impl.ql  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1452ql {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C1501sl f20456a;

    public C1452ql(C1501sl c1501sl) {
        this.f20456a = c1501sl;
    }

    public final void a(String str, EnumC1551ul enumC1551ul, Ql ql) {
        ArrayList arrayList;
        synchronized (this.f20456a.f20607b) {
            Collection collection = (Collection) this.f20456a.f20606a.f17991a.get(str);
            if (collection == null) {
                arrayList = new ArrayList();
            } else {
                arrayList = new ArrayList(collection);
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((Bl) it.next()).a(enumC1551ul, ql);
        }
    }
}
