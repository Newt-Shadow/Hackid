package com.yandex.metrica.impl.ob;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.yandex.metrica.impl.ob.p4  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0773p4 {

    /* renamed from: a  reason: collision with root package name */
    private final HashMap<String, X3> f13107a = new HashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private final HashMap<String, F3> f13108b = new HashMap<>();

    /* renamed from: c  reason: collision with root package name */
    private final Context f13109c;

    public C0773p4(Context context) {
        this.f13109c = context.getApplicationContext();
    }

    public synchronized X3 a(I3 i32) {
        return this.f13107a.get(i32.toString());
    }

    public synchronized X3 b(I3 i32, D3 d32, N3<X3> n32) {
        return (X3) a(i32, d32, n32, this.f13107a);
    }

    public synchronized F3 a(I3 i32, D3 d32, N3<F3> n32) {
        return (F3) a(i32, d32, n32, this.f13108b);
    }

    private <T extends R3> T a(I3 i32, D3 d32, N3<T> n32, Map<String, T> map) {
        T t10 = map.get(i32.toString());
        if (t10 == null) {
            T a10 = n32.a(this.f13109c, i32, d32);
            map.put(i32.toString(), a10);
            return a10;
        }
        t10.a(d32);
        return t10;
    }
}
