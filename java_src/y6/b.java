package y6;

import e7.j0;
import java.security.GeneralSecurityException;
/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a  reason: collision with root package name */
    public static final String f33020a = new a().d();

    /* renamed from: b  reason: collision with root package name */
    public static final j0 f33021b = j0.V();

    /* renamed from: c  reason: collision with root package name */
    public static final j0 f33022c = j0.V();

    static {
        try {
            a();
        } catch (GeneralSecurityException e10) {
            throw new ExceptionInInitializerError(e10);
        }
    }

    public static void a() {
        c.e();
        if (w6.a.a()) {
            return;
        }
        a.m(true);
    }
}
