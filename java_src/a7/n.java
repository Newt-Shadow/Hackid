package a7;

import a7.l;
import com.google.crypto.tink.internal.b;
import com.google.crypto.tink.internal.t;
import com.google.crypto.tink.shaded.protobuf.a0;
import e7.i0;
import e7.u;
import e7.v;
import java.security.GeneralSecurityException;
import s6.y;
/* loaded from: classes.dex */
abstract class n {

    /* renamed from: a  reason: collision with root package name */
    private static final g7.a f175a;

    /* renamed from: b  reason: collision with root package name */
    private static final com.google.crypto.tink.internal.k f176b;

    /* renamed from: c  reason: collision with root package name */
    private static final com.google.crypto.tink.internal.j f177c;

    /* renamed from: d  reason: collision with root package name */
    private static final com.google.crypto.tink.internal.c f178d;

    /* renamed from: e  reason: collision with root package name */
    private static final com.google.crypto.tink.internal.b f179e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f180a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f181b;

        static {
            int[] iArr = new int[i0.values().length];
            f181b = iArr;
            try {
                iArr[i0.TINK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f181b[i0.CRUNCHY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f181b[i0.LEGACY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f181b[i0.RAW.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[u.values().length];
            f180a = iArr2;
            try {
                iArr2[u.SHA1.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f180a[u.SHA224.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f180a[u.SHA256.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f180a[u.SHA384.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f180a[u.SHA512.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    static {
        g7.a e10 = t.e("type.googleapis.com/google.crypto.tink.HmacKey");
        f175a = e10;
        f176b = com.google.crypto.tink.internal.k.a(new t6.j(), l.class, com.google.crypto.tink.internal.p.class);
        f177c = com.google.crypto.tink.internal.j.a(new t6.k(), e10, com.google.crypto.tink.internal.p.class);
        f178d = com.google.crypto.tink.internal.c.a(new t6.l(), i.class, com.google.crypto.tink.internal.o.class);
        f179e = com.google.crypto.tink.internal.b.a(new b.InterfaceC0101b() { // from class: a7.m
            @Override // com.google.crypto.tink.internal.b.InterfaceC0101b
            public final s6.g a(com.google.crypto.tink.internal.q qVar, y yVar) {
                i b10;
                b10 = n.b((com.google.crypto.tink.internal.o) qVar, yVar);
                return b10;
            }
        }, e10, com.google.crypto.tink.internal.o.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static i b(com.google.crypto.tink.internal.o oVar, y yVar) {
        if (oVar.f().equals("type.googleapis.com/google.crypto.tink.HmacKey")) {
            try {
                v d02 = v.d0(oVar.g(), com.google.crypto.tink.shaded.protobuf.p.b());
                if (d02.b0() == 0) {
                    return i.c().e(l.a().c(d02.Z().size()).d(d02.a0().Z()).b(e(d02.a0().Y())).e(f(oVar.e())).a()).d(g7.b.a(d02.Z().F(), y.b(yVar))).c(oVar.c()).a();
                }
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            } catch (a0 | IllegalArgumentException unused) {
                throw new GeneralSecurityException("Parsing HmacKey failed");
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to HmacProtoSerialization.parseKey");
    }

    public static void c() {
        d(com.google.crypto.tink.internal.i.a());
    }

    public static void d(com.google.crypto.tink.internal.i iVar) {
        iVar.h(f176b);
        iVar.g(f177c);
        iVar.f(f178d);
        iVar.e(f179e);
    }

    private static l.c e(u uVar) {
        int i10 = a.f180a[uVar.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        if (i10 == 5) {
                            return l.c.f168f;
                        }
                        throw new GeneralSecurityException("Unable to parse HashType: " + uVar.c());
                    }
                    return l.c.f167e;
                }
                return l.c.f166d;
            }
            return l.c.f165c;
        }
        return l.c.f164b;
    }

    private static l.d f(i0 i0Var) {
        int i10 = a.f181b[i0Var.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 == 4) {
                        return l.d.f173e;
                    }
                    throw new GeneralSecurityException("Unable to parse OutputPrefixType: " + i0Var.c());
                }
                return l.d.f172d;
            }
            return l.d.f171c;
        }
        return l.d.f170b;
    }
}
