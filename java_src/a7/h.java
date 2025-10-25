package a7;

import java.security.GeneralSecurityException;
import java.util.List;
import s6.v;
import s6.w;
import s6.x;
/* loaded from: classes.dex */
public class h implements w {

    /* renamed from: a  reason: collision with root package name */
    private static final h f144a = new h();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class b implements g {

        /* renamed from: a  reason: collision with root package name */
        private final v f145a;

        private b(v vVar) {
            this.f145a = vVar;
        }
    }

    private h() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void d() {
        x.n(f144a);
    }

    @Override // s6.w
    public Class a() {
        return g.class;
    }

    @Override // s6.w
    public Class c() {
        return g.class;
    }

    @Override // s6.w
    /* renamed from: e */
    public g b(v vVar) {
        if (vVar != null) {
            if (vVar.e() != null) {
                for (List<v.c> list : vVar.c()) {
                    for (v.c cVar : list) {
                        g gVar = (g) cVar.a();
                    }
                }
                return new b(vVar);
            }
            throw new GeneralSecurityException("no primary in primitive set");
        }
        throw new GeneralSecurityException("primitive set must be non-null");
    }
}
