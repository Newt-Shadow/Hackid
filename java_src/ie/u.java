package ie;

import java.util.Arrays;
import java.util.Iterator;
/* loaded from: classes2.dex */
public abstract class u {
    public static final int a(ge.d dVar, ge.d[] typeParams) {
        int i10;
        kotlin.jvm.internal.m.e(dVar, "<this>");
        kotlin.jvm.internal.m.e(typeParams, "typeParams");
        int hashCode = (dVar.a().hashCode() * 31) + Arrays.hashCode(typeParams);
        Iterable<ge.d> a10 = ge.e.a(dVar);
        Iterator it = a10.iterator();
        int i11 = 1;
        int i12 = 1;
        while (true) {
            int i13 = 0;
            if (!it.hasNext()) {
                break;
            }
            int i14 = i12 * 31;
            String a11 = ((ge.d) it.next()).a();
            if (a11 != null) {
                i13 = a11.hashCode();
            }
            i12 = i14 + i13;
        }
        for (ge.d dVar2 : a10) {
            int i15 = i11 * 31;
            ge.f e10 = dVar2.e();
            if (e10 != null) {
                i10 = e10.hashCode();
            } else {
                i10 = 0;
            }
            i11 = i15 + i10;
        }
        return (((hashCode * 31) + i12) * 31) + i11;
    }
}
