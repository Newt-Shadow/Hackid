package com.yandex.metrica.impl.ob;

import android.util.SparseArray;
/* loaded from: classes2.dex */
public class Ze {

    /* renamed from: a  reason: collision with root package name */
    private static SparseArray<String> f11877a;

    static {
        SparseArray<String> sparseArray = new SparseArray<>();
        f11877a = sparseArray;
        sparseArray.put(0, "String");
        f11877a.put(1, "Number");
        f11877a.put(2, "Counter");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(int i10) {
        return f11877a.get(i10);
    }
}
