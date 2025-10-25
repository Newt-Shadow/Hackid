package g4;

import h4.i;
import h4.j;
import x4.n;
/* loaded from: classes.dex */
public abstract class g {
    public static n a(j jVar, String str, i iVar, int i10) {
        return new n.b().i(iVar.b(str)).h(iVar.f16805a).g(iVar.f16806b).f(b(jVar, iVar)).b(i10).a();
    }

    public static String b(j jVar, i iVar) {
        String k10 = jVar.k();
        if (k10 == null) {
            return iVar.b(((h4.b) jVar.f16811c.get(0)).f16756a).toString();
        }
        return k10;
    }
}
