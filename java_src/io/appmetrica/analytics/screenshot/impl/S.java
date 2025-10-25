package io.appmetrica.analytics.screenshot.impl;

import java.util.List;
/* loaded from: classes2.dex */
public final class S {

    /* renamed from: a  reason: collision with root package name */
    public final List f21392a;

    public S(List list) {
        this.f21392a = list;
    }

    public final void a(C1689k c1689k) {
        C1689k c1689k2;
        for (P p10 : this.f21392a) {
            C1690l c1690l = null;
            if (c1689k != null) {
                if (Boolean.valueOf(c1689k.f21440a).booleanValue()) {
                    c1689k2 = c1689k;
                } else {
                    c1689k2 = null;
                }
                if (c1689k2 != null) {
                    c1690l = c1689k2.f21441b;
                }
            }
            p10.a(c1690l);
        }
    }
}
