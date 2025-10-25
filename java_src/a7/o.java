package a7;

import e7.j0;
import java.security.GeneralSecurityException;
/* loaded from: classes.dex */
public abstract class o {

    /* renamed from: a  reason: collision with root package name */
    public static final String f182a = new k().d();

    /* renamed from: b  reason: collision with root package name */
    public static final j0 f183b;

    /* renamed from: c  reason: collision with root package name */
    public static final j0 f184c;

    /* renamed from: d  reason: collision with root package name */
    public static final j0 f185d;

    static {
        j0 V = j0.V();
        f183b = V;
        f184c = V;
        f185d = V;
        try {
            a();
        } catch (GeneralSecurityException e10) {
            throw new ExceptionInInitializerError(e10);
        }
    }

    public static void a() {
        b();
    }

    public static void b() {
        r.f();
        h.d();
        k.p(true);
        if (w6.a.a()) {
            return;
        }
        c.o(true);
    }
}
