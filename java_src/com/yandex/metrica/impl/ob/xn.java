package com.yandex.metrica.impl.ob;

import java.util.Collection;
import java.util.Comparator;
import java.util.HashMap;
/* loaded from: classes2.dex */
public class xn<T> implements Comparator<Collection<T>> {

    /* renamed from: a  reason: collision with root package name */
    private final un<T> f13966a;

    /* renamed from: b  reason: collision with root package name */
    private final Comparator<T> f13967b;

    public xn(un<T> unVar, Comparator<T> comparator) {
        this.f13966a = unVar;
        this.f13967b = comparator;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Comparator
    public int compare(Object obj, Object obj2) {
        boolean z10;
        Collection collection = (Collection) obj;
        Collection collection2 = (Collection) obj2;
        boolean z11 = true;
        if (collection == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (collection2 != null) {
            z11 = false;
        }
        if (!(z11 ^ z10)) {
            if (collection == collection2) {
                return 0;
            }
            if (collection.size() == collection2.size()) {
                HashMap hashMap = new HashMap();
                for (Object obj3 : collection) {
                    hashMap.put(this.f13966a.a(obj3), obj3);
                }
                for (Object obj4 : collection2) {
                    Object obj5 = hashMap.get(this.f13966a.a(obj4));
                    if (obj5 != null) {
                        if (this.f13967b.compare(obj5, obj4) != 0) {
                        }
                    }
                }
                return 0;
            }
        }
        return 10;
    }
}
