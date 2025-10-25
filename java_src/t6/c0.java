package t6;

import com.google.crypto.tink.internal.b;
import java.security.GeneralSecurityException;
import t6.a0;
/* loaded from: classes.dex */
abstract class c0 {

    /* renamed from: a  reason: collision with root package name */
    private static final g7.a f29953a;

    /* renamed from: b  reason: collision with root package name */
    private static final com.google.crypto.tink.internal.k f29954b;

    /* renamed from: c  reason: collision with root package name */
    private static final com.google.crypto.tink.internal.j f29955c;

    /* renamed from: d  reason: collision with root package name */
    private static final com.google.crypto.tink.internal.c f29956d;

    /* renamed from: e  reason: collision with root package name */
    private static final com.google.crypto.tink.internal.b f29957e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f29958a;

        static {
            int[] iArr = new int[e7.i0.values().length];
            f29958a = iArr;
            try {
                iArr[e7.i0.TINK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f29958a[e7.i0.CRUNCHY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f29958a[e7.i0.LEGACY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f29958a[e7.i0.RAW.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    static {
        g7.a e10 = com.google.crypto.tink.internal.t.e("type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key");
        f29953a = e10;
        f29954b = com.google.crypto.tink.internal.k.a(new j(), a0.class, com.google.crypto.tink.internal.p.class);
        f29955c = com.google.crypto.tink.internal.j.a(new k(), e10, com.google.crypto.tink.internal.p.class);
        f29956d = com.google.crypto.tink.internal.c.a(new l(), y.class, com.google.crypto.tink.internal.o.class);
        f29957e = com.google.crypto.tink.internal.b.a(new b.InterfaceC0101b() { // from class: t6.b0
            @Override // com.google.crypto.tink.internal.b.InterfaceC0101b
            public final s6.g a(com.google.crypto.tink.internal.q qVar, s6.y yVar) {
                y b10;
                b10 = c0.b((com.google.crypto.tink.internal.o) qVar, yVar);
                return b10;
            }
        }, e10, com.google.crypto.tink.internal.o.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static y b(com.google.crypto.tink.internal.o oVar, s6.y yVar) {
        if (oVar.f().equals("type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key")) {
            try {
                e7.r a02 = e7.r.a0(oVar.g(), com.google.crypto.tink.shaded.protobuf.p.b());
                if (a02.Y() == 0) {
                    return y.a(e(oVar.e()), g7.b.a(a02.X().F(), s6.y.b(yVar)), oVar.c());
                }
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            } catch (com.google.crypto.tink.shaded.protobuf.a0 unused) {
                throw new GeneralSecurityException("Parsing ChaCha20Poly1305Key failed");
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to ChaCha20Poly1305Parameters.parseParameters");
    }

    public static void c() {
        d(com.google.crypto.tink.internal.i.a());
    }

    public static void d(com.google.crypto.tink.internal.i iVar) {
        iVar.h(f29954b);
        iVar.g(f29955c);
        iVar.f(f29956d);
        iVar.e(f29957e);
    }

    private static a0.a e(e7.i0 i0Var) {
        int i10 = a.f29958a[i0Var.ordinal()];
        if (i10 != 1) {
            if (i10 != 2 && i10 != 3) {
                if (i10 == 4) {
                    return a0.a.f29951d;
                }
                throw new GeneralSecurityException("Unable to parse OutputPrefixType: " + i0Var.c());
            }
            return a0.a.f29950c;
        }
        return a0.a.f29949b;
    }
}
