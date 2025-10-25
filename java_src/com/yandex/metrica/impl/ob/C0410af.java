package com.yandex.metrica.impl.ob;

import android.util.SparseArray;
import com.yandex.metrica.impl.ob.C0927vf;
import java.util.ArrayList;
import java.util.HashMap;
/* renamed from: com.yandex.metrica.impl.ob.af  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0410af {

    /* renamed from: c  reason: collision with root package name */
    private static final int[] f11974c = {0, 1, 2, 3};

    /* renamed from: a  reason: collision with root package name */
    private final SparseArray<HashMap<String, C0927vf.a>> f11975a;

    /* renamed from: b  reason: collision with root package name */
    private int f11976b;

    public C0410af() {
        this(f11974c);
    }

    public C0927vf.a a(int i10, String str) {
        return this.f11975a.get(i10).get(str);
    }

    public void b() {
        this.f11976b++;
    }

    public C0927vf c() {
        C0927vf c0927vf = new C0927vf();
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < this.f11975a.size(); i10++) {
            SparseArray<HashMap<String, C0927vf.a>> sparseArray = this.f11975a;
            for (C0927vf.a aVar : sparseArray.get(sparseArray.keyAt(i10)).values()) {
                arrayList.add(aVar);
            }
        }
        c0927vf.f13825a = (C0927vf.a[]) arrayList.toArray(new C0927vf.a[arrayList.size()]);
        return c0927vf;
    }

    C0410af(int[] iArr) {
        this.f11975a = new SparseArray<>();
        this.f11976b = 0;
        for (int i10 : iArr) {
            this.f11975a.put(i10, new HashMap<>());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(C0927vf.a aVar) {
        this.f11975a.get(aVar.f13828b).put(new String(aVar.f13827a), aVar);
    }

    public int a() {
        return this.f11976b;
    }
}
