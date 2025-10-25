package io.appmetrica.analytics.impl;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: io.appmetrica.analytics.impl.zn  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC1678zn {
    public static final C1603wn a(Throwable th, P p10, List list, String str, Boolean bool) {
        C1354mn c1354mn;
        int r10;
        ArrayList arrayList = null;
        if (th != null) {
            c1354mn = AbstractC1379nn.a(th, 1, 0);
        } else {
            c1354mn = null;
        }
        if (list != null) {
            r10 = yc.p.r(list, 10);
            arrayList = new ArrayList(r10);
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(new C1402ol((StackTraceElement) it.next()));
            }
        }
        return new C1603wn(c1354mn, p10, arrayList, null, null, null, str, bool);
    }
}
