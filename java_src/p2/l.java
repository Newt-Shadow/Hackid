package p2;
/* loaded from: classes.dex */
public abstract class l {
    public static void a(n2.i iVar, n2.f fVar) {
        if (iVar instanceof s) {
            u.c().e().u(((s) iVar).d().f(fVar), 1);
            return;
        }
        t2.a.g("ForcedSender", "Expected instance of `TransportImpl`, got `%s`.", iVar);
    }
}
