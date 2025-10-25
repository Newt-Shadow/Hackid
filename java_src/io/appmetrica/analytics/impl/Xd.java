package io.appmetrica.analytics.impl;

import java.util.Collection;
/* loaded from: classes2.dex */
public final class Xd implements Yn {

    /* renamed from: a  reason: collision with root package name */
    public final String f19239a;

    public Xd(String str) {
        this.f19239a = str;
    }

    @Override // io.appmetrica.analytics.impl.Yn
    public final Wn a(Collection<Object> collection) {
        if (Rn.a((Collection) collection)) {
            return new Wn(this, false, this.f19239a + " is null or empty.");
        }
        return new Wn(this, true, "");
    }
}
