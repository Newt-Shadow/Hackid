package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.impl.ob.P3;
import com.yandex.metrica.impl.ob.S3;
/* loaded from: classes2.dex */
public class Y3<COMPONENT extends S3 & P3> implements N3<X3> {

    /* renamed from: a  reason: collision with root package name */
    private final InterfaceC0748o4<COMPONENT> f11826a;

    public Y3(InterfaceC0748o4<COMPONENT> interfaceC0748o4) {
        this.f11826a = interfaceC0748o4;
    }

    @Override // com.yandex.metrica.impl.ob.N3
    public X3 a(Context context, I3 i32, D3 d32) {
        return new X3(context, i32, d32, new C0449c4(d32.f9872b), this.f11826a, new J3(), C0513ei.a());
    }
}
