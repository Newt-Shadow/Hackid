package io.appmetrica.analytics.impl;

import java.util.HashMap;
/* loaded from: classes2.dex */
public final class Rb implements InterfaceC1308l2 {

    /* renamed from: a  reason: collision with root package name */
    public final D4 f18884a;

    public Rb(D4 d42) {
        this.f18884a = d42;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1308l2
    public final Ln a(Jn jn, Ln ln) {
        int i10 = jn.f18468b;
        int i11 = this.f18884a.f18074a;
        if (i10 == i11) {
            if (((Ln) ((HashMap) jn.f18467a.get(ln.f18564b)).get(new String(ln.f18563a))) != null) {
                ((HashMap) jn.f18467a.get(ln.f18564b)).put(new String(ln.f18563a), ln);
            }
        } else if (i10 < i11) {
            ((HashMap) jn.f18467a.get(ln.f18564b)).put(new String(ln.f18563a), ln);
            jn.f18468b++;
        }
        return ln;
    }
}
