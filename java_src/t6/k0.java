package t6;

import com.google.crypto.tink.internal.b;
import java.security.GeneralSecurityException;
import t6.i0;
/* loaded from: classes.dex */
abstract class k0 {

    /* renamed from: a  reason: collision with root package name */
    private static final g7.a f30001a;

    /* renamed from: b  reason: collision with root package name */
    private static final com.google.crypto.tink.internal.k f30002b;

    /* renamed from: c  reason: collision with root package name */
    private static final com.google.crypto.tink.internal.j f30003c;

    /* renamed from: d  reason: collision with root package name */
    private static final com.google.crypto.tink.internal.c f30004d;

    /* renamed from: e  reason: collision with root package name */
    private static final com.google.crypto.tink.internal.b f30005e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f30006a;

        static {
            int[] iArr = new int[e7.i0.values().length];
            f30006a = iArr;
            try {
                iArr[e7.i0.TINK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f30006a[e7.i0.CRUNCHY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f30006a[e7.i0.LEGACY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f30006a[e7.i0.RAW.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    static {
        g7.a e10 = com.google.crypto.tink.internal.t.e("type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key");
        f30001a = e10;
        f30002b = com.google.crypto.tink.internal.k.a(new j(), i0.class, com.google.crypto.tink.internal.p.class);
        f30003c = com.google.crypto.tink.internal.j.a(new k(), e10, com.google.crypto.tink.internal.p.class);
        f30004d = com.google.crypto.tink.internal.c.a(new l(), g0.class, com.google.crypto.tink.internal.o.class);
        f30005e = com.google.crypto.tink.internal.b.a(new b.InterfaceC0101b() { // from class: t6.j0
            @Override // com.google.crypto.tink.internal.b.InterfaceC0101b
            public final s6.g a(com.google.crypto.tink.internal.q qVar, s6.y yVar) {
                g0 b10;
                b10 = k0.b((com.google.crypto.tink.internal.o) qVar, yVar);
                return b10;
            }
        }, e10, com.google.crypto.tink.internal.o.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static g0 b(com.google.crypto.tink.internal.o oVar, s6.y yVar) {
        if (oVar.f().equals("type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key")) {
            try {
                e7.k0 a02 = e7.k0.a0(oVar.g(), com.google.crypto.tink.shaded.protobuf.p.b());
                if (a02.Y() == 0) {
                    return g0.a(e(oVar.e()), g7.b.a(a02.X().F(), s6.y.b(yVar)), oVar.c());
                }
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            } catch (com.google.crypto.tink.shaded.protobuf.a0 unused) {
                throw new GeneralSecurityException("Parsing XChaCha20Poly1305Key failed");
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to XChaCha20Poly1305Parameters.parseParameters");
    }

    public static void c() {
        d(com.google.crypto.tink.internal.i.a());
    }

    public static void d(com.google.crypto.tink.internal.i iVar) {
        iVar.h(f30002b);
        iVar.g(f30003c);
        iVar.f(f30004d);
        iVar.e(f30005e);
    }

    private static i0.a e(e7.i0 i0Var) {
        int i10 = a.f30006a[i0Var.ordinal()];
        if (i10 != 1) {
            if (i10 != 2 && i10 != 3) {
                if (i10 == 4) {
                    return i0.a.f29999d;
                }
                throw new GeneralSecurityException("Unable to parse OutputPrefixType: " + i0Var.c());
            }
            return i0.a.f29998c;
        }
        return i0.a.f29997b;
    }
}
