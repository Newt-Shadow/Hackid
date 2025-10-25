package io.appmetrica.analytics.impl;

import android.text.TextUtils;
import java.util.LinkedList;
import java.util.List;
/* loaded from: classes2.dex */
public final class Xn implements Yn {
    @Override // io.appmetrica.analytics.impl.Yn
    public final Wn a(List<Wn> list) {
        LinkedList linkedList = new LinkedList();
        boolean z10 = true;
        for (Wn wn : list) {
            if (!wn.f19201a) {
                linkedList.add(wn.f19202b);
                z10 = false;
            }
        }
        if (z10) {
            return new Wn(this, true, "");
        }
        return new Wn(this, false, TextUtils.join(", ", linkedList));
    }
}
