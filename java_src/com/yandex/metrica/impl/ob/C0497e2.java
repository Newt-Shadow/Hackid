package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.e2  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0497e2 {

    /* renamed from: a  reason: collision with root package name */
    private C0447c2 f12263a = new C0447c2(0, 0, 0, 0.0f, null);

    public synchronized void a(C0447c2 c0447c2) {
        if (c0447c2 != null) {
            this.f12263a = c0447c2;
        }
    }

    public synchronized C0447c2 a() {
        return this.f12263a;
    }
}
