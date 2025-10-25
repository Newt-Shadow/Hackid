package com.yandex.metrica.impl.ob;

import java.util.List;
/* loaded from: classes2.dex */
public class Wc extends V {

    /* renamed from: b  reason: collision with root package name */
    private final I2 f11694b;

    public Wc(V v10, I2 i22) {
        super(null);
        this.f11694b = i22;
    }

    @Override // com.yandex.metrica.impl.ob.V
    public void b(Object obj) {
        List list = (List) obj;
        if (list != null) {
            this.f11694b.b((I2) list);
        }
    }
}
