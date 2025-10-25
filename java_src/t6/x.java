package t6;

import com.google.crypto.tink.internal.b;
import java.security.GeneralSecurityException;
import t6.v;
/* loaded from: classes.dex */
abstract class x {

    /* renamed from: a  reason: collision with root package name */
    private static final g7.a f30055a;

    /* renamed from: b  reason: collision with root package name */
    private static final com.google.crypto.tink.internal.k f30056b;

    /* renamed from: c  reason: collision with root package name */
    private static final com.google.crypto.tink.internal.j f30057c;

    /* renamed from: d  reason: collision with root package name */
    private static final com.google.crypto.tink.internal.c f30058d;

    /* renamed from: e  reason: collision with root package name */
    private static final com.google.crypto.tink.internal.b f30059e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f30060a;

        static {
            int[] iArr = new int[e7.i0.values().length];
            f30060a = iArr;
            try {
                iArr[e7.i0.TINK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f30060a[e7.i0.CRUNCHY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f30060a[e7.i0.LEGACY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f30060a[e7.i0.RAW.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    static {
        g7.a e10 = com.google.crypto.tink.internal.t.e("type.googleapis.com/google.crypto.tink.AesGcmSivKey");
        f30055a = e10;
        f30056b = com.google.crypto.tink.internal.k.a(new j(), v.class, com.google.crypto.tink.internal.p.class);
        f30057c = com.google.crypto.tink.internal.j.a(new k(), e10, com.google.crypto.tink.internal.p.class);
        f30058d = com.google.crypto.tink.internal.c.a(new l(), t.class, com.google.crypto.tink.internal.o.class);
        f30059e = com.google.crypto.tink.internal.b.a(new b.InterfaceC0101b() { // from class: t6.w
            @Override // com.google.crypto.tink.internal.b.InterfaceC0101b
            public final s6.g a(com.google.crypto.tink.internal.q qVar, s6.y yVar) {
                t b10;
                b10 = x.b((com.google.crypto.tink.internal.o) qVar, yVar);
                return b10;
            }
        }, e10, com.google.crypto.tink.internal.o.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static t b(com.google.crypto.tink.internal.o oVar, s6.y yVar) {
        if (oVar.f().equals("type.googleapis.com/google.crypto.tink.AesGcmSivKey")) {
            try {
                e7.n a02 = e7.n.a0(oVar.g(), com.google.crypto.tink.shaded.protobuf.p.b());
                if (a02.Y() == 0) {
                    return t.a().e(v.a().b(a02.X().size()).c(e(oVar.e())).a()).d(g7.b.a(a02.X().F(), s6.y.b(yVar))).c(oVar.c()).a();
                }
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            } catch (com.google.crypto.tink.shaded.protobuf.a0 unused) {
                throw new GeneralSecurityException("Parsing AesGcmSivKey failed");
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to AesGcmSivParameters.parseParameters");
    }

    public static void c() {
        d(com.google.crypto.tink.internal.i.a());
    }

    public static void d(com.google.crypto.tink.internal.i iVar) {
        iVar.h(f30056b);
        iVar.g(f30057c);
        iVar.f(f30058d);
        iVar.e(f30059e);
    }

    private static v.c e(e7.i0 i0Var) {
        int i10 = a.f30060a[i0Var.ordinal()];
        if (i10 != 1) {
            if (i10 != 2 && i10 != 3) {
                if (i10 == 4) {
                    return v.c.f30053d;
                }
                throw new GeneralSecurityException("Unable to parse OutputPrefixType: " + i0Var.c());
            }
            return v.c.f30052c;
        }
        return v.c.f30051b;
    }
}
