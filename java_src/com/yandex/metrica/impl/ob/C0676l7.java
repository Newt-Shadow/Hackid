package com.yandex.metrica.impl.ob;
@Deprecated
/* renamed from: com.yandex.metrica.impl.ob.l7  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0676l7 implements InterfaceC0527f7<String> {

    /* renamed from: a  reason: collision with root package name */
    private final U3 f12780a;

    public C0676l7(U3 u32) {
        this.f12780a = u32;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0527f7
    public void a(String str) {
        this.f12780a.a(C1008z0.b(str, C0467cm.a()));
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0527f7
    public void b(String str) {
        this.f12780a.a(C1008z0.a(str, C0467cm.a()));
    }
}
