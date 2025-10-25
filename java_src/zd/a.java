package zd;

import ad.e;
import bd.c;
import id.Function2;
import xc.l;
import xc.m;
import xc.t;
import yd.i;
/* loaded from: classes2.dex */
public abstract class a {
    private static final void a(e eVar, Throwable th) {
        l.a aVar = l.f32718b;
        eVar.resumeWith(l.b(m.a(th)));
        throw th;
    }

    public static final void b(e eVar, e eVar2) {
        e c10;
        try {
            c10 = c.c(eVar);
            l.a aVar = l.f32718b;
            i.b(c10, l.b(t.f32733a));
        } catch (Throwable th) {
            a(eVar2, th);
        }
    }

    public static final void c(Function2 function2, Object obj, e eVar) {
        e a10;
        e c10;
        try {
            a10 = c.a(function2, obj, eVar);
            c10 = c.c(a10);
            l.a aVar = l.f32718b;
            i.b(c10, l.b(t.f32733a));
        } catch (Throwable th) {
            a(eVar, th);
        }
    }
}
