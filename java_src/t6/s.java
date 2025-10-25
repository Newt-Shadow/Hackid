package t6;

import com.google.crypto.tink.internal.b;
import java.security.GeneralSecurityException;
import t6.q;
/* loaded from: classes.dex */
abstract class s {

    /* renamed from: a  reason: collision with root package name */
    private static final g7.a f30033a;

    /* renamed from: b  reason: collision with root package name */
    private static final com.google.crypto.tink.internal.k f30034b;

    /* renamed from: c  reason: collision with root package name */
    private static final com.google.crypto.tink.internal.j f30035c;

    /* renamed from: d  reason: collision with root package name */
    private static final com.google.crypto.tink.internal.c f30036d;

    /* renamed from: e  reason: collision with root package name */
    private static final com.google.crypto.tink.internal.b f30037e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f30038a;

        static {
            int[] iArr = new int[e7.i0.values().length];
            f30038a = iArr;
            try {
                iArr[e7.i0.TINK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f30038a[e7.i0.CRUNCHY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f30038a[e7.i0.LEGACY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f30038a[e7.i0.RAW.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    static {
        g7.a e10 = com.google.crypto.tink.internal.t.e("type.googleapis.com/google.crypto.tink.AesGcmKey");
        f30033a = e10;
        f30034b = com.google.crypto.tink.internal.k.a(new j(), q.class, com.google.crypto.tink.internal.p.class);
        f30035c = com.google.crypto.tink.internal.j.a(new k(), e10, com.google.crypto.tink.internal.p.class);
        f30036d = com.google.crypto.tink.internal.c.a(new l(), o.class, com.google.crypto.tink.internal.o.class);
        f30037e = com.google.crypto.tink.internal.b.a(new b.InterfaceC0101b() { // from class: t6.r
            @Override // com.google.crypto.tink.internal.b.InterfaceC0101b
            public final s6.g a(com.google.crypto.tink.internal.q qVar, s6.y yVar) {
                o b10;
                b10 = s.b((com.google.crypto.tink.internal.o) qVar, yVar);
                return b10;
            }
        }, e10, com.google.crypto.tink.internal.o.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static o b(com.google.crypto.tink.internal.o oVar, s6.y yVar) {
        if (oVar.f().equals("type.googleapis.com/google.crypto.tink.AesGcmKey")) {
            try {
                e7.l a02 = e7.l.a0(oVar.g(), com.google.crypto.tink.shaded.protobuf.p.b());
                if (a02.Y() == 0) {
                    return o.a().e(q.a().c(a02.X().size()).b(12).d(16).e(e(oVar.e())).a()).d(g7.b.a(a02.X().F(), s6.y.b(yVar))).c(oVar.c()).a();
                }
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            } catch (com.google.crypto.tink.shaded.protobuf.a0 unused) {
                throw new GeneralSecurityException("Parsing AesGcmKey failed");
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to AesGcmParameters.parseParameters");
    }

    public static void c() {
        d(com.google.crypto.tink.internal.i.a());
    }

    public static void d(com.google.crypto.tink.internal.i iVar) {
        iVar.h(f30034b);
        iVar.g(f30035c);
        iVar.f(f30036d);
        iVar.e(f30037e);
    }

    private static q.c e(e7.i0 i0Var) {
        int i10 = a.f30038a[i0Var.ordinal()];
        if (i10 != 1) {
            if (i10 != 2 && i10 != 3) {
                if (i10 == 4) {
                    return q.c.f30031d;
                }
                throw new GeneralSecurityException("Unable to parse OutputPrefixType: " + i0Var.c());
            }
            return q.c.f30030c;
        }
        return q.c.f30029b;
    }
}
