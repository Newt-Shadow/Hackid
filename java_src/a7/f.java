package a7;

import a7.d;
import com.google.crypto.tink.internal.b;
import com.google.crypto.tink.internal.t;
import com.google.crypto.tink.shaded.protobuf.a0;
import e7.i0;
import java.security.GeneralSecurityException;
import s6.y;
/* loaded from: classes.dex */
abstract class f {

    /* renamed from: a  reason: collision with root package name */
    private static final g7.a f138a;

    /* renamed from: b  reason: collision with root package name */
    private static final com.google.crypto.tink.internal.k f139b;

    /* renamed from: c  reason: collision with root package name */
    private static final com.google.crypto.tink.internal.j f140c;

    /* renamed from: d  reason: collision with root package name */
    private static final com.google.crypto.tink.internal.c f141d;

    /* renamed from: e  reason: collision with root package name */
    private static final com.google.crypto.tink.internal.b f142e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f143a;

        static {
            int[] iArr = new int[i0.values().length];
            f143a = iArr;
            try {
                iArr[i0.TINK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f143a[i0.CRUNCHY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f143a[i0.LEGACY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f143a[i0.RAW.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    static {
        g7.a e10 = t.e("type.googleapis.com/google.crypto.tink.AesCmacKey");
        f138a = e10;
        f139b = com.google.crypto.tink.internal.k.a(new t6.j(), d.class, com.google.crypto.tink.internal.p.class);
        f140c = com.google.crypto.tink.internal.j.a(new t6.k(), e10, com.google.crypto.tink.internal.p.class);
        f141d = com.google.crypto.tink.internal.c.a(new t6.l(), a7.a.class, com.google.crypto.tink.internal.o.class);
        f142e = com.google.crypto.tink.internal.b.a(new b.InterfaceC0101b() { // from class: a7.e
            @Override // com.google.crypto.tink.internal.b.InterfaceC0101b
            public final s6.g a(com.google.crypto.tink.internal.q qVar, y yVar) {
                a b10;
                b10 = f.b((com.google.crypto.tink.internal.o) qVar, yVar);
                return b10;
            }
        }, e10, com.google.crypto.tink.internal.o.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static a7.a b(com.google.crypto.tink.internal.o oVar, y yVar) {
        if (oVar.f().equals("type.googleapis.com/google.crypto.tink.AesCmacKey")) {
            try {
                e7.a c02 = e7.a.c0(oVar.g(), com.google.crypto.tink.shaded.protobuf.p.b());
                if (c02.a0() == 0) {
                    return a7.a.c().e(d.a().b(c02.Y().size()).c(c02.Z().X()).d(e(oVar.e())).a()).c(g7.b.a(c02.Y().F(), y.b(yVar))).d(oVar.c()).a();
                }
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            } catch (a0 | IllegalArgumentException unused) {
                throw new GeneralSecurityException("Parsing AesCmacKey failed");
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to AesCmacParameters.parseParameters");
    }

    public static void c() {
        d(com.google.crypto.tink.internal.i.a());
    }

    public static void d(com.google.crypto.tink.internal.i iVar) {
        iVar.h(f139b);
        iVar.g(f140c);
        iVar.f(f141d);
        iVar.e(f142e);
    }

    private static d.c e(i0 i0Var) {
        int i10 = a.f143a[i0Var.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 == 4) {
                        return d.c.f136e;
                    }
                    throw new GeneralSecurityException("Unable to parse OutputPrefixType: " + i0Var.c());
                }
                return d.c.f135d;
            }
            return d.c.f134c;
        }
        return d.c.f133b;
    }
}
