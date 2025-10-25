package n0;

import android.content.Context;
import id.l;
import java.util.List;
import kotlin.jvm.internal.m;
import kotlin.jvm.internal.n;
import td.l0;
import td.m0;
import td.m2;
import td.z0;
import yc.o;
/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: n0.a$a */
    /* loaded from: classes.dex */
    public static final class C0251a extends n implements l {

        /* renamed from: e */
        public static final C0251a f26072e = new C0251a();

        C0251a() {
            super(1);
        }

        @Override // id.l
        /* renamed from: a */
        public final List invoke(Context it) {
            List h10;
            m.e(it, "it");
            h10 = o.h();
            return h10;
        }
    }

    public static final ld.c a(String name, k0.b bVar, l produceMigrations, l0 scope) {
        m.e(name, "name");
        m.e(produceMigrations, "produceMigrations");
        m.e(scope, "scope");
        return new c(name, bVar, produceMigrations, scope);
    }

    public static /* synthetic */ ld.c b(String str, k0.b bVar, l lVar, l0 l0Var, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            bVar = null;
        }
        if ((i10 & 4) != 0) {
            lVar = C0251a.f26072e;
        }
        if ((i10 & 8) != 0) {
            l0Var = m0.a(z0.b().e(m2.b(null, 1, null)));
        }
        return a(str, bVar, lVar, l0Var);
    }
}
