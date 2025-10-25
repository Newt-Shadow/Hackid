package com.yandex.metrica.impl.ob;

import java.util.Comparator;
/* loaded from: classes2.dex */
public class pn implements Comparator<C0907uj> {
    @Override // java.util.Comparator
    public int compare(C0907uj c0907uj, C0907uj c0907uj2) {
        boolean z10;
        C0907uj c0907uj3 = c0907uj;
        C0907uj c0907uj4 = c0907uj2;
        if (c0907uj3 == c0907uj4) {
            return 0;
        }
        boolean z11 = true;
        if (c0907uj3 == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (c0907uj4 != null) {
            z11 = false;
        }
        if (!(z11 ^ z10) && c0907uj3.q() == c0907uj4.q() && c0907uj3.c() == c0907uj4.c() && (c0907uj3.k() == null ? c0907uj4.k() == null : c0907uj3.k().equals(c0907uj4.k())) && (c0907uj3.l() == null ? c0907uj4.l() == null : c0907uj3.l().equals(c0907uj4.l())) && (c0907uj3.e() == null ? c0907uj4.e() == null : c0907uj3.e().equals(c0907uj4.e())) && (c0907uj3.b() == null ? c0907uj4.b() == null : c0907uj3.b().equals(c0907uj4.b())) && (c0907uj3.n() == null ? c0907uj4.n() == null : c0907uj3.n().equals(c0907uj4.n())) && (c0907uj3.m() == null ? c0907uj4.m() == null : c0907uj3.m().equals(c0907uj4.m()))) {
            if (c0907uj3.o() != null) {
                if (c0907uj3.o().equals(c0907uj4.o())) {
                    return 0;
                }
            } else if (c0907uj4.o() == null) {
                return 0;
            }
        }
        return 10;
    }
}
