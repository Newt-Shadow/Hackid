package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.en  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0518en<T> implements InterfaceC0543fn<T> {

    /* renamed from: a  reason: collision with root package name */
    private final InterfaceC0543fn<T> f12350a;

    public C0518en(InterfaceC0543fn<T> interfaceC0543fn, T t10) {
        this.f12350a = interfaceC0543fn;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0543fn
    public T a(T t10) {
        if (t10 != this.f12350a.a(t10)) {
            return "<truncated data was not sent, see METRIKALIB-4568>";
        }
        return t10;
    }
}
