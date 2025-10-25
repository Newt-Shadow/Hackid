package com.yandex.metrica.impl.ob;

import com.yandex.metrica.plugins.StackTraceItem;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public final class I6 {
    public static final H6 a(Throwable th, C0942w6 c0942w6, List<StackTraceElement> list, String str, Boolean bool) {
        int r10;
        ArrayList arrayList = null;
        F6 a10 = th != null ? G6.a(th) : null;
        if (list != null) {
            r10 = yc.p.r(list, 10);
            arrayList = new ArrayList(r10);
            for (StackTraceElement stackTraceElement : list) {
                arrayList.add(new D6(stackTraceElement));
            }
        }
        return new H6(a10, c0942w6, arrayList, null, null, null, str, bool);
    }

    public static final H6 a(String str, String str2, List<? extends StackTraceItem> list, String str3, String str4, Map<String, String> map, String str5, Boolean bool) {
        ArrayList arrayList;
        int r10;
        if (list != null) {
            r10 = yc.p.r(list, 10);
            arrayList = new ArrayList(r10);
            for (StackTraceItem stackTraceItem : list) {
                arrayList.add(new D6(stackTraceItem.getClassName(), stackTraceItem.getFileName(), stackTraceItem.getLine(), stackTraceItem.getColumn(), stackTraceItem.getMethodName(), null));
            }
        } else {
            arrayList = null;
        }
        return new H6(new F6(str, str2, arrayList, null, null), null, null, str3, str4, map, str5, bool);
    }
}
