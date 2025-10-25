package com.google.firebase.crashlytics;

import java.util.Iterator;
import java.util.List;
import n7.g;
import q7.d0;
/* loaded from: classes.dex */
public abstract class b {
    public static void a(Throwable th) {
        if (th == null) {
            g.f().k("A null value was passed to recordFatalException. Ignoring.");
        } else {
            a.e().f8766a.G(th);
        }
    }

    public static void b(String str) {
        a.e().f8766a.N("com.crashlytics.flutter.build-id.0", str);
    }

    public static void c(List list) {
        Iterator it = list.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            i10++;
            d0 d0Var = a.e().f8766a;
            d0Var.N("com.crashlytics.flutter.build-id." + i10, (String) it.next());
        }
    }
}
