package com.yandex.metrica.impl.ob;
/* loaded from: classes2.dex */
public abstract class tn<T> {

    /* renamed from: a  reason: collision with root package name */
    public final T f13663a;

    public tn(T t10) {
        this.f13663a = t10;
    }

    protected abstract boolean a(tn<T> tnVar);

    public boolean equals(Object obj) {
        if (obj instanceof tn) {
            try {
                return a((tn) obj);
            } catch (ClassCastException unused) {
            }
        }
        return false;
    }
}
