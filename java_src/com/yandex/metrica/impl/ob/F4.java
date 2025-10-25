package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.P3;
/* loaded from: classes2.dex */
public class F4<T, C extends P3> {

    /* renamed from: a  reason: collision with root package name */
    private final K4<T> f10076a;

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes2.dex */
    public interface a<T> {
        boolean a(T t10, C0445c0 c0445c0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public F4(K4<T> k42, C c10) {
        this.f10076a = k42;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    public boolean a(C0445c0 c0445c0, a<T> aVar) {
        for (Object obj : this.f10076a.a(c0445c0.o()).a()) {
            if (aVar.a(obj, c0445c0)) {
                return true;
            }
        }
        return false;
    }
}
