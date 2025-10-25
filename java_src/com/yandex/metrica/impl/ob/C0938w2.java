package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.P3;
/* renamed from: com.yandex.metrica.impl.ob.w2  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0938w2<C extends P3> implements InterfaceC0671l2 {

    /* renamed from: a  reason: collision with root package name */
    private C f13852a;

    /* renamed from: b  reason: collision with root package name */
    final Object f13853b = new Object();

    /* renamed from: c  reason: collision with root package name */
    boolean f13854c = false;

    /* renamed from: d  reason: collision with root package name */
    private final InterfaceC1002yi f13855d;

    public C0938w2(C c10, InterfaceC1002yi interfaceC1002yi) {
        this.f13852a = c10;
        this.f13855d = interfaceC1002yi;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0671l2
    public void a() {
        synchronized (this.f13853b) {
            if (this.f13854c) {
                this.f13854c = false;
            }
        }
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0671l2
    public void b() {
        synchronized (this.f13853b) {
            if (!this.f13854c) {
                c();
                this.f13854c = true;
            }
        }
    }

    void c() {
    }

    public void d() {
        synchronized (this.f13853b) {
            if (!this.f13854c) {
                synchronized (this.f13853b) {
                    if (!this.f13854c) {
                        f();
                    }
                }
                c();
            }
        }
    }

    public C e() {
        return this.f13852a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f() {
        this.f13855d.a();
    }
}
