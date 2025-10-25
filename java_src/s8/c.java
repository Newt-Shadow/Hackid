package s8;

import java.util.Iterator;
import java.util.Set;
import k7.q;
/* loaded from: classes.dex */
public class c implements i {

    /* renamed from: a  reason: collision with root package name */
    private final String f29542a;

    /* renamed from: b  reason: collision with root package name */
    private final d f29543b;

    c(Set set, d dVar) {
        this.f29542a = d(set);
        this.f29543b = dVar;
    }

    public static k7.c b() {
        return k7.c.c(i.class).b(q.o(f.class)).f(new k7.g() { // from class: s8.b
            @Override // k7.g
            public final Object a(k7.d dVar) {
                i c10;
                c10 = c.c(dVar);
                return c10;
            }
        }).d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ i c(k7.d dVar) {
        return new c(dVar.f(f.class), d.a());
    }

    private static String d(Set set) {
        StringBuilder sb2 = new StringBuilder();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            f fVar = (f) it.next();
            sb2.append(fVar.b());
            sb2.append('/');
            sb2.append(fVar.c());
            if (it.hasNext()) {
                sb2.append(' ');
            }
        }
        return sb2.toString();
    }

    @Override // s8.i
    public String getUserAgent() {
        if (this.f29543b.b().isEmpty()) {
            return this.f29542a;
        }
        return this.f29542a + ' ' + d(this.f29543b.b());
    }
}
