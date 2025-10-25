package io.appmetrica.analytics.impl;

import java.util.Collection;
import java.util.List;
/* loaded from: classes2.dex */
public final class Ze implements Hn {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f19347a;

    public Ze(C1072bf c1072bf) {
        boolean z10;
        List<C1047af> list = c1072bf.f19432b;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            for (C1047af c1047af : list) {
                if (c1047af.f19383c == EnumC1065b8.f19425c) {
                    z10 = false;
                    break;
                }
            }
        }
        z10 = true;
        this.f19347a = z10;
    }

    @Override // io.appmetrica.analytics.impl.Hn, id.Function2
    /* renamed from: a */
    public final List<C1047af> invoke(List<? extends C1047af> list, C1396of c1396of) {
        List<C1047af> d02;
        List<C1047af> d03;
        C1047af c1047af = new C1047af(c1396of.f20298a, c1396of.f20299b, c1396of.f20302e);
        if (!(list instanceof Collection) || !list.isEmpty()) {
            for (C1047af c1047af2 : list) {
                if (c1047af2.f19383c == c1396of.f20302e) {
                    if (c1047af.f19383c == EnumC1065b8.f19425c && this.f19347a) {
                        d02 = yc.w.d0(list, c1047af);
                        return d02;
                    }
                    return null;
                }
            }
        }
        d03 = yc.w.d0(list, c1047af);
        return d03;
    }
}
