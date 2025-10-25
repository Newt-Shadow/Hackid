package io.appmetrica.analytics.impl;
/* loaded from: classes2.dex */
public final class P2 implements Yn {
    @Override // io.appmetrica.analytics.impl.Yn
    public final Wn a(Object obj) {
        Ln[] lnArr = ((On) obj).f18746a;
        if (lnArr != null && lnArr.length != 0) {
            return new Wn(this, true, "");
        }
        return new Wn(this, false, "attributes list is empty");
    }
}
