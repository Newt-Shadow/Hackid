package s6;

import com.google.crypto.tink.shaded.protobuf.a0;
import e7.c0;
import e7.d0;
import e7.i0;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import s6.v;
/* loaded from: classes.dex */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    private final c0 f29434a;

    /* renamed from: b  reason: collision with root package name */
    private final List f29435b;

    /* renamed from: c  reason: collision with root package name */
    private final c7.a f29436c = c7.a.f5047b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f29437a;

        static {
            int[] iArr = new int[e7.z.values().length];
            f29437a = iArr;
            try {
                iArr[e7.z.ENABLED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f29437a[e7.z.DISABLED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f29437a[e7.z.DESTROYED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final g f29438a;

        /* renamed from: b  reason: collision with root package name */
        private final k f29439b;

        /* renamed from: c  reason: collision with root package name */
        private final int f29440c;

        /* renamed from: d  reason: collision with root package name */
        private final boolean f29441d;

        /* synthetic */ b(g gVar, k kVar, int i10, boolean z10, a aVar) {
            this(gVar, kVar, i10, z10);
        }

        public g a() {
            return this.f29438a;
        }

        private b(g gVar, k kVar, int i10, boolean z10) {
            this.f29438a = gVar;
            this.f29439b = kVar;
            this.f29440c = i10;
            this.f29441d = z10;
        }
    }

    private n(c0 c0Var, List list) {
        this.f29434a = c0Var;
        this.f29435b = list;
    }

    private static void a(e7.t tVar) {
        if (tVar != null && tVar.X().size() != 0) {
            return;
        }
        throw new GeneralSecurityException("empty keyset");
    }

    private static void b(c0 c0Var) {
        if (c0Var != null && c0Var.a0() > 0) {
            return;
        }
        throw new GeneralSecurityException("empty keyset");
    }

    private static c0 c(e7.t tVar, s6.a aVar, byte[] bArr) {
        try {
            c0 f02 = c0.f0(aVar.b(tVar.X().F(), bArr), com.google.crypto.tink.shaded.protobuf.p.b());
            b(f02);
            return f02;
        } catch (a0 unused) {
            throw new GeneralSecurityException("invalid keyset, corrupted key material");
        }
    }

    private static e7.t d(c0 c0Var, s6.a aVar, byte[] bArr) {
        byte[] a10 = aVar.a(c0Var.f(), bArr);
        try {
            if (c0.f0(aVar.b(a10, bArr), com.google.crypto.tink.shaded.protobuf.p.b()).equals(c0Var)) {
                return (e7.t) e7.t.Y().t(com.google.crypto.tink.shaded.protobuf.h.m(a10)).u(z.b(c0Var)).j();
            }
            throw new GeneralSecurityException("cannot encrypt keyset");
        } catch (a0 unused) {
            throw new GeneralSecurityException("invalid keyset, corrupted key material");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final n e(c0 c0Var) {
        b(c0Var);
        return new n(c0Var, f(c0Var));
    }

    private static List f(c0 c0Var) {
        boolean z10;
        ArrayList arrayList = new ArrayList(c0Var.a0());
        for (c0.c cVar : c0Var.b0()) {
            int a02 = cVar.a0();
            try {
                g d10 = com.google.crypto.tink.internal.i.a().d(q(cVar), f.a());
                k m10 = m(cVar.c0());
                if (a02 == c0Var.c0()) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                arrayList.add(new b(d10, m10, a02, z10, null));
            } catch (GeneralSecurityException unused) {
                arrayList.add(null);
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    private Object g(g gVar, Class cls) {
        try {
            return x.c(gVar, cls);
        } catch (GeneralSecurityException unused) {
            return null;
        }
    }

    private static Object j(c0.c cVar, Class cls) {
        try {
            return x.e(cVar.Z(), cls);
        } catch (GeneralSecurityException e10) {
            if (!e10.getMessage().contains("No key manager found for key type ") && !e10.getMessage().contains(" not supported by key manager of type ")) {
                throw e10;
            }
            return null;
        }
    }

    private Object l(Class cls, Class cls2) {
        Object obj;
        z.d(this.f29434a);
        v.b j10 = v.j(cls2);
        j10.e(this.f29436c);
        for (int i10 = 0; i10 < p(); i10++) {
            c0.c Z = this.f29434a.Z(i10);
            if (Z.c0().equals(e7.z.ENABLED)) {
                Object j11 = j(Z, cls2);
                if (this.f29435b.get(i10) != null) {
                    obj = g(((b) this.f29435b.get(i10)).a(), cls2);
                } else {
                    obj = null;
                }
                if (Z.a0() == this.f29434a.c0()) {
                    j10.b(obj, j11, Z);
                } else {
                    j10.a(obj, j11, Z);
                }
            }
        }
        return x.o(j10.d(), cls);
    }

    private static k m(e7.z zVar) {
        int i10 = a.f29437a[zVar.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    return k.f29424d;
                }
                throw new GeneralSecurityException("Unknown key status");
            }
            return k.f29423c;
        }
        return k.f29422b;
    }

    public static final n n(p pVar, s6.a aVar) {
        return o(pVar, aVar, new byte[0]);
    }

    public static final n o(p pVar, s6.a aVar, byte[] bArr) {
        e7.t a10 = pVar.a();
        a(a10);
        return e(c(a10, aVar, bArr));
    }

    private static com.google.crypto.tink.internal.o q(c0.c cVar) {
        Integer valueOf;
        int a02 = cVar.a0();
        if (cVar.b0() == i0.RAW) {
            valueOf = null;
        } else {
            valueOf = Integer.valueOf(a02);
        }
        try {
            return com.google.crypto.tink.internal.o.b(cVar.Z().a0(), cVar.Z().b0(), cVar.Z().Z(), cVar.b0(), valueOf);
        } catch (GeneralSecurityException e10) {
            throw new com.google.crypto.tink.internal.s("Creating a protokey serialization failed", e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c0 h() {
        return this.f29434a;
    }

    public d0 i() {
        return z.b(this.f29434a);
    }

    public Object k(Class cls) {
        Class d10 = x.d(cls);
        if (d10 != null) {
            return l(cls, d10);
        }
        throw new GeneralSecurityException("No wrapper found for " + cls.getName());
    }

    public int p() {
        return this.f29434a.a0();
    }

    public void r(q qVar, s6.a aVar) {
        s(qVar, aVar, new byte[0]);
    }

    public void s(q qVar, s6.a aVar, byte[] bArr) {
        qVar.a(d(this.f29434a, aVar, bArr));
    }

    public String toString() {
        return i().toString();
    }
}
