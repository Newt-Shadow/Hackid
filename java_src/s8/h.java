package s8;

import android.content.Context;
import k7.q;
/* loaded from: classes.dex */
public abstract class h {

    /* loaded from: classes.dex */
    public interface a {
        String a(Object obj);
    }

    public static k7.c b(String str, String str2) {
        return k7.c.l(f.a(str, str2), f.class);
    }

    public static k7.c c(final String str, final a aVar) {
        return k7.c.m(f.class).b(q.k(Context.class)).f(new k7.g() { // from class: s8.g
            @Override // k7.g
            public final Object a(k7.d dVar) {
                f d10;
                d10 = h.d(str, aVar, dVar);
                return d10;
            }
        }).d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ f d(String str, a aVar, k7.d dVar) {
        return f.a(str, aVar.a((Context) dVar.get(Context.class)));
    }
}
