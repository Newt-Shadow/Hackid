package com.google.android.gms.internal.auth;

import java.util.Comparator;
import org.apache.tika.fork.ForkServer;
/* loaded from: classes.dex */
final class g1 implements Comparator {
    @Override // java.util.Comparator
    public final /* synthetic */ int compare(Object obj, Object obj2) {
        p1 p1Var = (p1) obj;
        p1 p1Var2 = (p1) obj2;
        f1 f1Var = new f1(p1Var);
        f1 f1Var2 = new f1(p1Var2);
        while (f1Var.hasNext() && f1Var2.hasNext()) {
            int compareTo = Integer.valueOf(f1Var.zza() & ForkServer.ERROR).compareTo(Integer.valueOf(f1Var2.zza() & ForkServer.ERROR));
            if (compareTo != 0) {
                return compareTo;
            }
        }
        return Integer.valueOf(p1Var.i()).compareTo(Integer.valueOf(p1Var2.i()));
    }
}
