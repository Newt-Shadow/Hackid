package io.appmetrica.analytics.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
/* loaded from: classes2.dex */
public final class Ba {

    /* renamed from: a  reason: collision with root package name */
    public final HashMap f17991a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f17992b;

    public Ba() {
        this(false);
    }

    public final void a(Object obj, Object obj2) {
        ArrayList arrayList;
        Collection collection = (Collection) this.f17991a.get(obj);
        if (collection == null) {
            arrayList = new ArrayList();
        } else {
            arrayList = new ArrayList(collection);
        }
        arrayList.add(obj2);
        Collection collection2 = (Collection) this.f17991a.put(obj, arrayList);
    }

    public final String toString() {
        return this.f17991a.toString();
    }

    public Ba(boolean z10) {
        this.f17991a = new HashMap();
        this.f17992b = z10;
    }
}
