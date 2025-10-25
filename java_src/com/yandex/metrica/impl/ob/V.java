package com.yandex.metrica.impl.ob;
/* loaded from: classes2.dex */
public abstract class V {

    /* renamed from: a  reason: collision with root package name */
    private V f11626a;

    public V(V v10) {
        this.f11626a = v10;
    }

    public void a(Object obj) {
        b(obj);
        V v10 = this.f11626a;
        if (v10 != null) {
            v10.a(obj);
        }
    }

    public abstract void b(Object obj);
}
