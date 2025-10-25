package j0;

import java.io.File;
import java.util.List;
/* loaded from: classes.dex */
public final class y {

    /* renamed from: a  reason: collision with root package name */
    public static final y f24281a = new y();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class a extends kotlin.jvm.internal.n implements id.l {

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ td.l0 f24282e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(td.l0 l0Var) {
            super(1);
            this.f24282e = l0Var;
        }

        @Override // id.l
        /* renamed from: a */
        public final t invoke(File it) {
            kotlin.jvm.internal.m.e(it, "it");
            return new x(this.f24282e.n(), it);
        }
    }

    private y() {
    }

    public final i a(e0 serializer, k0.b bVar, List migrations, td.l0 scope, id.a produceFile) {
        List b10;
        kotlin.jvm.internal.m.e(serializer, "serializer");
        kotlin.jvm.internal.m.e(migrations, "migrations");
        kotlin.jvm.internal.m.e(scope, "scope");
        kotlin.jvm.internal.m.e(produceFile, "produceFile");
        o oVar = new o(serializer, new a(scope), produceFile);
        b10 = yc.n.b(h.f24003a.b(migrations));
        e eVar = bVar;
        if (bVar == null) {
            eVar = new k0.a();
        }
        return new k(oVar, b10, eVar, scope);
    }
}
