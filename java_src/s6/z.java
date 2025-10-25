package s6;

import e7.c0;
import e7.d0;
import e7.i0;
import e7.y;
import java.nio.charset.Charset;
import java.security.GeneralSecurityException;
/* loaded from: classes.dex */
abstract class z {

    /* renamed from: a  reason: collision with root package name */
    public static final Charset f29470a = Charset.forName("UTF-8");

    public static d0.c a(c0.c cVar) {
        return (d0.c) d0.c.a0().w(cVar.Z().a0()).v(cVar.c0()).u(cVar.b0()).t(cVar.a0()).j();
    }

    public static d0 b(c0 c0Var) {
        d0.b u10 = d0.a0().u(c0Var.c0());
        for (c0.c cVar : c0Var.b0()) {
            u10.t(a(cVar));
        }
        return (d0) u10.j();
    }

    public static void c(c0.c cVar) {
        if (cVar.d0()) {
            if (cVar.b0() != i0.UNKNOWN_PREFIX) {
                if (cVar.c0() != e7.z.UNKNOWN_STATUS) {
                    return;
                }
                throw new GeneralSecurityException(String.format("key %d has unknown status", Integer.valueOf(cVar.a0())));
            }
            throw new GeneralSecurityException(String.format("key %d has unknown prefix", Integer.valueOf(cVar.a0())));
        }
        throw new GeneralSecurityException(String.format("key %d has no key data", Integer.valueOf(cVar.a0())));
    }

    public static void d(c0 c0Var) {
        int c02 = c0Var.c0();
        int i10 = 0;
        boolean z10 = false;
        boolean z11 = true;
        for (c0.c cVar : c0Var.b0()) {
            if (cVar.c0() == e7.z.ENABLED) {
                c(cVar);
                if (cVar.a0() == c02) {
                    if (!z10) {
                        z10 = true;
                    } else {
                        throw new GeneralSecurityException("keyset contains multiple primary keys");
                    }
                }
                if (cVar.Z().Z() != y.c.ASYMMETRIC_PUBLIC) {
                    z11 = false;
                }
                i10++;
            }
        }
        if (i10 != 0) {
            if (!z10 && !z11) {
                throw new GeneralSecurityException("keyset doesn't contain a valid primary key");
            }
            return;
        }
        throw new GeneralSecurityException("keyset must contain at least one ENABLED key");
    }
}
