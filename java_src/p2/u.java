package p2;

import android.content.Context;
import java.util.Collections;
import java.util.Set;
import p2.i;
/* loaded from: classes.dex */
public class u implements t {

    /* renamed from: e  reason: collision with root package name */
    private static volatile v f27783e;

    /* renamed from: a  reason: collision with root package name */
    private final z2.a f27784a;

    /* renamed from: b  reason: collision with root package name */
    private final z2.a f27785b;

    /* renamed from: c  reason: collision with root package name */
    private final v2.e f27786c;

    /* renamed from: d  reason: collision with root package name */
    private final w2.r f27787d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u(z2.a aVar, z2.a aVar2, v2.e eVar, w2.r rVar, w2.v vVar) {
        this.f27784a = aVar;
        this.f27785b = aVar2;
        this.f27786c = eVar;
        this.f27787d = rVar;
        vVar.c();
    }

    private i b(o oVar) {
        i.a g10 = i.a().i(this.f27784a.a()).o(this.f27785b.a()).n(oVar.g()).h(new h(oVar.b(), oVar.d())).g(oVar.c().a());
        if (oVar.c().e() != null && oVar.c().e().a() != null) {
            g10.l(oVar.c().e().a());
        }
        oVar.c().b();
        return g10.d();
    }

    public static u c() {
        v vVar = f27783e;
        if (vVar != null) {
            return vVar.b();
        }
        throw new IllegalStateException("Not initialized!");
    }

    private static Set d(f fVar) {
        if (fVar instanceof g) {
            return Collections.unmodifiableSet(((g) fVar).a());
        }
        return Collections.singleton(n2.c.b("proto"));
    }

    public static void f(Context context) {
        if (f27783e == null) {
            synchronized (u.class) {
                if (f27783e == null) {
                    f27783e = e.a().a(context).build();
                }
            }
        }
    }

    @Override // p2.t
    public void a(o oVar, n2.k kVar) {
        this.f27786c.a(oVar.f().f(oVar.c().d()), b(oVar), kVar);
    }

    public w2.r e() {
        return this.f27787d;
    }

    public n2.j g(f fVar) {
        return new q(d(fVar), p.a().b(fVar.getName()).c(fVar.getExtras()).a(), this);
    }
}
