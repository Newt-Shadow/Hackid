package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import com.yandex.metrica.impl.ob.C0907uj;
/* renamed from: com.yandex.metrica.impl.ob.xj  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0979xj {
    private boolean a(Integer num) {
        return (num == null || num.intValue() == Integer.MAX_VALUE) ? false : true;
    }

    public C0907uj a(C0907uj c0907uj) {
        C0907uj.a aVar = new C0907uj.a();
        aVar.a(c0907uj.c());
        if (a(c0907uj.p())) {
            aVar.l(c0907uj.p());
        }
        if (a(c0907uj.k())) {
            aVar.i(c0907uj.k());
        }
        if (a(c0907uj.l())) {
            aVar.j(c0907uj.l());
        }
        if (a(c0907uj.e())) {
            aVar.c(c0907uj.e());
        }
        if (a(c0907uj.b())) {
            aVar.b(c0907uj.b());
        }
        if (!TextUtils.isEmpty(c0907uj.n())) {
            aVar.b(c0907uj.n());
        }
        if (!TextUtils.isEmpty(c0907uj.m())) {
            aVar.a(c0907uj.m());
        }
        aVar.a(c0907uj.q());
        if (a(c0907uj.o())) {
            aVar.k(c0907uj.o());
        }
        aVar.a(c0907uj.d());
        if (a(c0907uj.h())) {
            aVar.f(c0907uj.h());
        }
        if (a(c0907uj.j())) {
            aVar.h(c0907uj.j());
        }
        if (a(c0907uj.a())) {
            aVar.a(c0907uj.a());
        }
        if (a(c0907uj.i())) {
            aVar.g(c0907uj.i());
        }
        if (a(c0907uj.f())) {
            aVar.d(c0907uj.f());
        }
        if (a(c0907uj.g())) {
            aVar.e(c0907uj.g());
        }
        return new C0907uj(aVar);
    }
}
