package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.U1;
import java.util.List;
/* renamed from: com.yandex.metrica.impl.ob.v6  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0918v6 {

    /* renamed from: a  reason: collision with root package name */
    private final N6 f13791a;

    public C0918v6() {
        this(new N6());
    }

    public U1.f a(H6 h62, Q1 q12) {
        String b10;
        F6 f62 = h62.f10184a;
        String str = "";
        if (f62 != null && (b10 = f62.b()) != null) {
            str = b10;
        }
        byte[] a10 = this.f13791a.a(h62);
        C0467cm b11 = Ul.b(q12.b().b());
        List<Integer> list = C1008z0.f14050i;
        J j10 = new J(a10, str, EnumC0396a1.EVENT_TYPE_EXCEPTION_UNHANDLED_PROTOBUF.b(), b11);
        j10.c(q12.d());
        return new U1.f(j10, q12).a(j10.t()).a(true);
    }

    C0918v6(N6 n62) {
        this.f13791a = n62;
    }
}
