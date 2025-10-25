package y8;

import com.google.firebase.components.ComponentRegistrar;
import java.util.ArrayList;
import java.util.List;
import k7.d;
import k7.g;
import k7.i;
/* loaded from: classes.dex */
public class b implements i {
    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object c(String str, k7.c cVar, d dVar) {
        try {
            c.b(str);
            return cVar.h().a(dVar);
        } finally {
            c.a();
        }
    }

    @Override // k7.i
    public List a(ComponentRegistrar componentRegistrar) {
        ArrayList arrayList = new ArrayList();
        for (final k7.c cVar : componentRegistrar.getComponents()) {
            final String i10 = cVar.i();
            if (i10 != null) {
                cVar = cVar.t(new g() { // from class: y8.a
                    @Override // k7.g
                    public final Object a(d dVar) {
                        Object c10;
                        c10 = b.c(i10, cVar, dVar);
                        return c10;
                    }
                });
            }
            arrayList.add(cVar);
        }
        return arrayList;
    }
}
