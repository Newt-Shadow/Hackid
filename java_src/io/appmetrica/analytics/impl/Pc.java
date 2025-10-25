package io.appmetrica.analytics.impl;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class Pc {

    /* renamed from: a  reason: collision with root package name */
    public final Map f18776a;

    /* renamed from: b  reason: collision with root package name */
    public final Object f18777b;

    public Pc(Object obj) {
        this(new HashMap(), obj);
    }

    public final void a(Object obj, Object obj2) {
        this.f18776a.put(obj, obj2);
    }

    public Pc(HashMap hashMap, Object obj) {
        this.f18776a = hashMap;
        this.f18777b = obj;
    }

    public final Object a(Object obj) {
        Object obj2 = this.f18776a.get(obj);
        return obj2 == null ? this.f18777b : obj2;
    }
}
