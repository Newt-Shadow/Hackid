package yd;

import java.util.Iterator;
import java.util.List;
import java.util.ServiceLoader;
import td.d2;
/* loaded from: classes2.dex */
public final class u {

    /* renamed from: a  reason: collision with root package name */
    public static final u f33301a;

    /* renamed from: b  reason: collision with root package name */
    private static final boolean f33302b = false;

    /* renamed from: c  reason: collision with root package name */
    public static final d2 f33303c;

    static {
        u uVar = new u();
        f33301a = uVar;
        g0.f("kotlinx.coroutines.fast.service.loader", true);
        f33303c = uVar.a();
    }

    private u() {
    }

    private final d2 a() {
        qd.e b10;
        List l10;
        Object next;
        d2 e10;
        try {
            if (!f33302b) {
                b10 = qd.j.b(ServiceLoader.load(t.class, t.class.getClassLoader()).iterator());
                l10 = qd.l.l(b10);
            } else {
                l10 = j.f33266a.c();
            }
            Iterator it = l10.iterator();
            if (!it.hasNext()) {
                next = null;
            } else {
                next = it.next();
                if (it.hasNext()) {
                    int c10 = ((t) next).c();
                    do {
                        Object next2 = it.next();
                        int c11 = ((t) next2).c();
                        if (c10 < c11) {
                            next = next2;
                            c10 = c11;
                        }
                    } while (it.hasNext());
                }
            }
            t tVar = (t) next;
            if (tVar == null || (e10 = v.e(tVar, l10)) == null) {
                return v.b(null, null, 3, null);
            }
            return e10;
        } catch (Throwable th) {
            return v.b(th, null, 2, null);
        }
    }
}
