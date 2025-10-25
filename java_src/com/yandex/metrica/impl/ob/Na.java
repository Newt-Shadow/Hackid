package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.Vm;
/* loaded from: classes2.dex */
public class Na<R, M extends Vm> implements Vm {

    /* renamed from: a  reason: collision with root package name */
    public final R f10887a;

    /* renamed from: b  reason: collision with root package name */
    public final M f10888b;

    public Na(R r10, M m10) {
        this.f10887a = r10;
        this.f10888b = m10;
    }

    @Override // com.yandex.metrica.impl.ob.Vm
    public int a() {
        return this.f10888b.a();
    }

    public String toString() {
        return "Result{result=" + this.f10887a + ", metaInfo=" + this.f10888b + '}';
    }
}
