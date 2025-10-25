package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.CounterConfiguration;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.yandex.metrica.impl.ob.j2  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0621j2 {

    /* renamed from: a  reason: collision with root package name */
    private final C0646k2 f12647a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f12648b;

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, C0597i2> f12649c = new HashMap();

    public C0621j2(Context context, C0646k2 c0646k2) {
        this.f12648b = context;
        this.f12647a = c0646k2;
    }

    public synchronized C0597i2 a(String str, CounterConfiguration.b bVar) {
        C0597i2 c0597i2;
        c0597i2 = this.f12649c.get(str);
        if (c0597i2 == null) {
            c0597i2 = new C0597i2(str, this.f12648b, bVar, this.f12647a);
            this.f12649c.put(str, c0597i2);
        }
        return c0597i2;
    }
}
