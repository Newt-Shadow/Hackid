package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.Vm;
/* renamed from: com.yandex.metrica.impl.ob.gn  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0568gn<V, M extends Vm> implements Vm {

    /* renamed from: a  reason: collision with root package name */
    public final V f12493a;

    /* renamed from: b  reason: collision with root package name */
    public final M f12494b;

    public C0568gn(V v10, M m10) {
        this.f12493a = v10;
        this.f12494b = m10;
    }

    @Override // com.yandex.metrica.impl.ob.Vm
    public int a() {
        return this.f12494b.a();
    }

    public String toString() {
        return "TrimmingResult{value=" + this.f12493a + ", metaInfo=" + this.f12494b + '}';
    }
}
