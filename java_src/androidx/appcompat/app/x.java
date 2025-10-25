package androidx.appcompat.app;

import java.util.LinkedHashSet;
import java.util.Locale;
/* loaded from: classes.dex */
abstract class x {
    private static z.i a(z.i iVar, z.i iVar2) {
        Locale c10;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (int i10 = 0; i10 < iVar.f() + iVar2.f(); i10++) {
            if (i10 < iVar.f()) {
                c10 = iVar.c(i10);
            } else {
                c10 = iVar2.c(i10 - iVar.f());
            }
            if (c10 != null) {
                linkedHashSet.add(c10);
            }
        }
        return z.i.a((Locale[]) linkedHashSet.toArray(new Locale[linkedHashSet.size()]));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static z.i b(z.i iVar, z.i iVar2) {
        if (iVar != null && !iVar.e()) {
            return a(iVar, iVar2);
        }
        return z.i.d();
    }
}
