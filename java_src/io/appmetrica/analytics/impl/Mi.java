package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.Revenue;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes2.dex */
public final class Mi implements Yn {

    /* renamed from: a  reason: collision with root package name */
    public final Xn f18603a = new Xn();

    @Override // io.appmetrica.analytics.impl.Yn
    public final Wn a(Revenue revenue) {
        Wn wn;
        Xn xn = this.f18603a;
        Wn[] wnArr = new Wn[1];
        Of of2 = new Of();
        Integer num = revenue.quantity;
        if (num != null && num.intValue() <= 0) {
            wn = new Wn(of2, false, "Invalid quantity value " + num);
        } else {
            wn = new Wn(of2, true, "");
        }
        wnArr[0] = wn;
        List<Wn> asList = Arrays.asList(wnArr);
        xn.getClass();
        return xn.a(asList);
    }
}
