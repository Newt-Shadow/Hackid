package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C0627j8;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes2.dex */
public class P7 {

    /* renamed from: a  reason: collision with root package name */
    private final HashMap<String, List<String>> f11057a;

    public P7() {
        HashMap<String, List<String>> hashMap = new HashMap<>();
        this.f11057a = hashMap;
        hashMap.put("reports", C0627j8.d.f12683a);
        hashMap.put("sessions", C0627j8.e.f12685a);
        hashMap.put("preferences", C0627j8.c.f12682a);
        hashMap.put("binary_data", C0627j8.b.f12681a);
    }

    public HashMap<String, List<String>> a() {
        return this.f11057a;
    }
}
