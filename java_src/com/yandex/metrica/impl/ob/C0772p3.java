package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C0722n3;
/* renamed from: com.yandex.metrica.impl.ob.p3  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0772p3<T extends C0722n3> {

    /* renamed from: a  reason: collision with root package name */
    private final InterfaceC0747o3<T> f13103a;

    /* renamed from: b  reason: collision with root package name */
    private final InterfaceC0697m3<T> f13104b;

    /* renamed from: com.yandex.metrica.impl.ob.p3$b */
    /* loaded from: classes2.dex */
    public static final class b<T extends C0722n3> {

        /* renamed from: a  reason: collision with root package name */
        final InterfaceC0747o3<T> f13105a;

        /* renamed from: b  reason: collision with root package name */
        InterfaceC0697m3<T> f13106b;

        b(InterfaceC0747o3<T> interfaceC0747o3) {
            this.f13105a = interfaceC0747o3;
        }

        public b<T> a(InterfaceC0697m3<T> interfaceC0697m3) {
            this.f13106b = interfaceC0697m3;
            return this;
        }

        public C0772p3<T> a() {
            return new C0772p3<>(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(C0722n3 c0722n3) {
        InterfaceC0697m3<T> interfaceC0697m3 = this.f13104b;
        if (interfaceC0697m3 == null) {
            return false;
        }
        return interfaceC0697m3.a(c0722n3);
    }

    public void b(C0722n3 c0722n3) {
        this.f13103a.a(c0722n3);
    }

    private C0772p3(b bVar) {
        this.f13103a = bVar.f13105a;
        this.f13104b = bVar.f13106b;
    }

    public static <T extends C0722n3> b<T> a(InterfaceC0747o3<T> interfaceC0747o3) {
        return new b<>(interfaceC0747o3);
    }
}
