package ie;

import java.util.ArrayList;
/* loaded from: classes2.dex */
public abstract class o {
    public static final void a(int i10, int i11, ge.d descriptor) {
        kotlin.jvm.internal.m.e(descriptor, "descriptor");
        ArrayList arrayList = new ArrayList();
        int i12 = (~i10) & i11;
        for (int i13 = 0; i13 < 32; i13++) {
            if ((i12 & 1) != 0) {
                arrayList.add(descriptor.g(i13));
            }
            i12 >>>= 1;
        }
        throw new ee.c(arrayList, descriptor.a());
    }
}
