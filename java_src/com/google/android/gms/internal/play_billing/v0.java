package com.google.android.gms.internal.play_billing;

import java.util.Comparator;
import org.apache.tika.fork.ForkServer;
/* loaded from: classes.dex */
final class v0 implements Comparator {
    @Override // java.util.Comparator
    public final /* synthetic */ int compare(Object obj, Object obj2) {
        e1 e1Var = (e1) obj;
        e1 e1Var2 = (e1) obj2;
        u0 u0Var = new u0(e1Var);
        u0 u0Var2 = new u0(e1Var2);
        while (u0Var.hasNext() && u0Var2.hasNext()) {
            int compareTo = Integer.valueOf(u0Var.zza() & ForkServer.ERROR).compareTo(Integer.valueOf(u0Var2.zza() & ForkServer.ERROR));
            if (compareTo != 0) {
                return compareTo;
            }
        }
        return Integer.valueOf(e1Var.i()).compareTo(Integer.valueOf(e1Var2.i()));
    }
}
