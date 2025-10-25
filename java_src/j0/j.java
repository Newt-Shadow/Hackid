package j0;

import java.util.List;
/* loaded from: classes.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    public static final j f24037a = new j();

    private j() {
    }

    public final i a(e0 serializer, k0.b bVar, List migrations, td.l0 scope, id.a produceFile) {
        kotlin.jvm.internal.m.e(serializer, "serializer");
        kotlin.jvm.internal.m.e(migrations, "migrations");
        kotlin.jvm.internal.m.e(scope, "scope");
        kotlin.jvm.internal.m.e(produceFile, "produceFile");
        return b(new o(serializer, null, produceFile, 2, null), bVar, migrations, scope);
    }

    public final i b(j0 storage, k0.b bVar, List migrations, td.l0 scope) {
        List b10;
        kotlin.jvm.internal.m.e(storage, "storage");
        kotlin.jvm.internal.m.e(migrations, "migrations");
        kotlin.jvm.internal.m.e(scope, "scope");
        e eVar = bVar;
        if (bVar == null) {
            eVar = new k0.a();
        }
        b10 = yc.n.b(h.f24003a.b(migrations));
        return new k(storage, b10, eVar, scope);
    }
}
