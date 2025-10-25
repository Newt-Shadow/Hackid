package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.v2  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0914v2<T> extends G0<T> {
    public AbstractC0914v2(long j10, long j11) {
        super(j10, j11);
    }

    @Override // com.yandex.metrica.impl.ob.G0
    public synchronized T a() {
        return (T) super.a();
    }

    @Override // com.yandex.metrica.impl.ob.G0
    public synchronized void b(T t10) {
        super.b((AbstractC0914v2<T>) t10);
    }

    @Override // com.yandex.metrica.impl.ob.G0
    public synchronized boolean b() {
        boolean z10;
        if (!this.f10101a.b()) {
            z10 = this.f10101a.d();
        }
        return z10;
    }
}
