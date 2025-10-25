package t6;

import com.google.crypto.tink.internal.b;
import java.security.GeneralSecurityException;
import t6.i;
/* loaded from: classes.dex */
abstract class n {

    /* renamed from: a  reason: collision with root package name */
    private static final g7.a f30007a;

    /* renamed from: b  reason: collision with root package name */
    private static final com.google.crypto.tink.internal.k f30008b;

    /* renamed from: c  reason: collision with root package name */
    private static final com.google.crypto.tink.internal.j f30009c;

    /* renamed from: d  reason: collision with root package name */
    private static final com.google.crypto.tink.internal.c f30010d;

    /* renamed from: e  reason: collision with root package name */
    private static final com.google.crypto.tink.internal.b f30011e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f30012a;

        static {
            int[] iArr = new int[e7.i0.values().length];
            f30012a = iArr;
            try {
                iArr[e7.i0.TINK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f30012a[e7.i0.CRUNCHY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f30012a[e7.i0.LEGACY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f30012a[e7.i0.RAW.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    static {
        g7.a e10 = com.google.crypto.tink.internal.t.e("type.googleapis.com/google.crypto.tink.AesEaxKey");
        f30007a = e10;
        f30008b = com.google.crypto.tink.internal.k.a(new j(), i.class, com.google.crypto.tink.internal.p.class);
        f30009c = com.google.crypto.tink.internal.j.a(new k(), e10, com.google.crypto.tink.internal.p.class);
        f30010d = com.google.crypto.tink.internal.c.a(new l(), g.class, com.google.crypto.tink.internal.o.class);
        f30011e = com.google.crypto.tink.internal.b.a(new b.InterfaceC0101b() { // from class: t6.m
            @Override // com.google.crypto.tink.internal.b.InterfaceC0101b
            public final s6.g a(com.google.crypto.tink.internal.q qVar, s6.y yVar) {
                g b10;
                b10 = n.b((com.google.crypto.tink.internal.o) qVar, yVar);
                return b10;
            }
        }, e10, com.google.crypto.tink.internal.o.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static g b(com.google.crypto.tink.internal.o oVar, s6.y yVar) {
        if (oVar.f().equals("type.googleapis.com/google.crypto.tink.AesEaxKey")) {
            try {
                e7.i c02 = e7.i.c0(oVar.g(), com.google.crypto.tink.shaded.protobuf.p.b());
                if (c02.a0() == 0) {
                    return g.a().e(i.a().c(c02.Y().size()).b(c02.Z().X()).d(16).e(e(oVar.e())).a()).d(g7.b.a(c02.Y().F(), s6.y.b(yVar))).c(oVar.c()).a();
                }
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            } catch (com.google.crypto.tink.shaded.protobuf.a0 unused) {
                throw new GeneralSecurityException("Parsing AesEaxcKey failed");
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to AesEaxParameters.parseParameters");
    }

    public static void c() {
        d(com.google.crypto.tink.internal.i.a());
    }

    public static void d(com.google.crypto.tink.internal.i iVar) {
        iVar.h(f30008b);
        iVar.g(f30009c);
        iVar.f(f30010d);
        iVar.e(f30011e);
    }

    private static i.c e(e7.i0 i0Var) {
        int i10 = a.f30012a[i0Var.ordinal()];
        if (i10 != 1) {
            if (i10 != 2 && i10 != 3) {
                if (i10 == 4) {
                    return i.c.f29994d;
                }
                throw new GeneralSecurityException("Unable to parse OutputPrefixType: " + i0Var.c());
            }
            return i.c.f29993c;
        }
        return i.c.f29992b;
    }
}
