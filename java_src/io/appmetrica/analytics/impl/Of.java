package io.appmetrica.analytics.impl;
/* loaded from: classes2.dex */
public final class Of implements Yn {
    @Override // io.appmetrica.analytics.impl.Yn
    public final Wn a(Object obj) {
        Integer num = (Integer) obj;
        if (num != null && num.intValue() <= 0) {
            return new Wn(this, false, "Invalid quantity value " + num);
        }
        return new Wn(this, true, "");
    }
}
