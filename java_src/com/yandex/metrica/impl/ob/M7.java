package com.yandex.metrica.impl.ob;

import android.util.SparseArray;
import com.yandex.metrica.impl.ob.C0627j8;
import com.yandex.metrica.impl.ob.X7;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes2.dex */
public class M7 {

    /* renamed from: a  reason: collision with root package name */
    private final N7 f10794a;

    /* renamed from: b  reason: collision with root package name */
    private final P7 f10795b;

    /* renamed from: c  reason: collision with root package name */
    private final X7.b f10796c;

    public M7(N7 n72, P7 p72, X7.b bVar) {
        this.f10794a = n72;
        this.f10795b = p72;
        this.f10796c = bVar;
    }

    public X7 a() {
        HashMap hashMap = new HashMap();
        hashMap.put("binary_data", C0627j8.b.f12681a);
        return this.f10796c.a("auto_inapp", this.f10794a.a(), this.f10794a.b(), new SparseArray<>(), new Z7("auto_inapp", hashMap));
    }

    public X7 b() {
        HashMap hashMap = new HashMap();
        hashMap.put("preferences", C0627j8.c.f12682a);
        return this.f10796c.a("client storage", this.f10794a.c(), this.f10794a.d(), new SparseArray<>(), new Z7("metrica.db", hashMap));
    }

    public X7 c() {
        return this.f10796c.a("main", this.f10794a.e(), this.f10794a.f(), this.f10794a.l(), new Z7("main", this.f10795b.a()));
    }

    public X7 d() {
        HashMap hashMap = new HashMap();
        hashMap.put("preferences", C0627j8.c.f12682a);
        return this.f10796c.a("metrica_multiprocess.db", this.f10794a.g(), this.f10794a.h(), new SparseArray<>(), new Z7("metrica_multiprocess.db", hashMap));
    }

    public X7 e() {
        HashMap hashMap = new HashMap();
        List<String> list = C0627j8.c.f12682a;
        hashMap.put("preferences", list);
        hashMap.put("binary_data", C0627j8.b.f12681a);
        hashMap.put("startup", list);
        List<String> list2 = C0627j8.a.f12676a;
        hashMap.put("l_dat", list2);
        hashMap.put("lbs_dat", list2);
        return this.f10796c.a("metrica.db", this.f10794a.i(), this.f10794a.j(), this.f10794a.k(), new Z7("metrica.db", hashMap));
    }
}
