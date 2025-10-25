package com.yandex.metrica.impl.ob;

import com.yandex.metrica.IReporter;
import java.util.HashMap;
/* loaded from: classes2.dex */
public class Y4 extends X4 {

    /* renamed from: b  reason: collision with root package name */
    private final IReporter f11827b;

    public Y4(L3 l32, IReporter iReporter) {
        super(l32);
        this.f11827b = iReporter;
    }

    @Override // com.yandex.metrica.impl.ob.S4
    public boolean a(C0445c0 c0445c0) {
        C0822r6 a10 = C0822r6.a(c0445c0.o());
        HashMap hashMap = new HashMap();
        hashMap.put("type", a10.f13484a);
        hashMap.put("delivery_method", a10.f13485b);
        this.f11827b.reportEvent("crash_saved", hashMap);
        return false;
    }
}
