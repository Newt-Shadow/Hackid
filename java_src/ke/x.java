package ke;

import ge.f;
import java.util.List;
/* loaded from: classes2.dex */
public class x extends he.a {

    /* renamed from: a  reason: collision with root package name */
    private final je.b f24930a;

    /* renamed from: b  reason: collision with root package name */
    private final d0 f24931b;

    /* renamed from: c  reason: collision with root package name */
    public final ke.a f24932c;

    /* renamed from: d  reason: collision with root package name */
    private final le.b f24933d;

    /* renamed from: e  reason: collision with root package name */
    private int f24934e;

    /* renamed from: f  reason: collision with root package name */
    private a f24935f;

    /* renamed from: g  reason: collision with root package name */
    private final je.d f24936g;

    /* renamed from: h  reason: collision with root package name */
    private final n f24937h;

    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public String f24938a;
    }

    /* loaded from: classes2.dex */
    public /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f24939a;

        static {
            int[] iArr = new int[d0.values().length];
            try {
                iArr[d0.f24900d.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[d0.f24901e.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[d0.f24902f.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[d0.f24899c.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f24939a = iArr;
        }
    }

    public x(je.b json, d0 mode, ke.a lexer, ge.d descriptor, a aVar) {
        n nVar;
        kotlin.jvm.internal.m.e(json, "json");
        kotlin.jvm.internal.m.e(mode, "mode");
        kotlin.jvm.internal.m.e(lexer, "lexer");
        kotlin.jvm.internal.m.e(descriptor, "descriptor");
        this.f24930a = json;
        this.f24931b = mode;
        this.f24932c = lexer;
        this.f24933d = json.d();
        this.f24934e = -1;
        this.f24935f = aVar;
        je.d c10 = json.c();
        this.f24936g = c10;
        if (c10.j()) {
            nVar = null;
        } else {
            nVar = new n(descriptor);
        }
        this.f24937h = nVar;
    }

    private final void A(ge.d dVar) {
        do {
        } while (n(dVar) != -1);
    }

    private final boolean B(a aVar, String str) {
        if (aVar == null || !kotlin.jvm.internal.m.a(aVar.f24938a, str)) {
            return false;
        }
        aVar.f24938a = null;
        return true;
    }

    private final void t() {
        if (this.f24932c.C() != 4) {
            return;
        }
        ke.a.v(this.f24932c, "Unexpected leading comma", 0, null, 6, null);
        throw new xc.c();
    }

    private final boolean u(ge.d dVar, int i10) {
        String D;
        boolean z10;
        je.b bVar = this.f24930a;
        boolean j10 = dVar.j(i10);
        ge.d i11 = dVar.i(i10);
        if (j10 && !i11.c() && this.f24932c.K(true)) {
            return true;
        }
        if (kotlin.jvm.internal.m.a(i11.e(), f.b.f16419a) && ((!i11.c() || !this.f24932c.K(false)) && (D = this.f24932c.D(this.f24936g.q())) != null)) {
            int h10 = s.h(i11, bVar, D);
            if (!bVar.c().j() && i11.c()) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (h10 == -3 && (j10 || z10)) {
                this.f24932c.n();
                return true;
            }
        }
        return false;
    }

    private final int v() {
        boolean J = this.f24932c.J();
        if (this.f24932c.e()) {
            int i10 = this.f24934e;
            if (i10 != -1 && !J) {
                ke.a.v(this.f24932c, "Expected end of the array or comma", 0, null, 6, null);
                throw new xc.c();
            }
            int i11 = i10 + 1;
            this.f24934e = i11;
            return i11;
        } else if (!J || this.f24930a.c().d()) {
            return -1;
        } else {
            q.e(this.f24932c, "array");
            throw new xc.c();
        }
    }

    private final int w() {
        boolean z10;
        int i10 = this.f24934e;
        boolean z11 = false;
        if (i10 % 2 != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            if (i10 != -1) {
                z11 = this.f24932c.J();
            }
        } else {
            this.f24932c.k(':');
        }
        if (this.f24932c.e()) {
            if (z10) {
                if (this.f24934e == -1) {
                    ke.a aVar = this.f24932c;
                    boolean z12 = !z11;
                    int i11 = aVar.f24891a;
                    if (!z12) {
                        ke.a.v(aVar, "Unexpected leading comma", i11, null, 4, null);
                        throw new xc.c();
                    }
                } else {
                    ke.a aVar2 = this.f24932c;
                    int i12 = aVar2.f24891a;
                    if (!z11) {
                        ke.a.v(aVar2, "Expected comma after the key-value pair", i12, null, 4, null);
                        throw new xc.c();
                    }
                }
            }
            int i13 = this.f24934e + 1;
            this.f24934e = i13;
            return i13;
        } else if (!z11 || this.f24930a.c().d()) {
            return -1;
        } else {
            q.f(this.f24932c, null, 1, null);
            throw new xc.c();
        }
    }

    private final int x(ge.d dVar) {
        int h10;
        boolean z10;
        boolean J = this.f24932c.J();
        while (true) {
            boolean z11 = true;
            if (this.f24932c.e()) {
                String y10 = y();
                this.f24932c.k(':');
                h10 = s.h(dVar, this.f24930a, y10);
                if (h10 != -3) {
                    if (!this.f24936g.g() || !u(dVar, h10)) {
                        break;
                    }
                    z10 = this.f24932c.J();
                    z11 = false;
                } else {
                    z10 = false;
                }
                if (z11) {
                    J = z(y10);
                } else {
                    J = z10;
                }
            } else if (J && !this.f24930a.c().d()) {
                q.f(this.f24932c, null, 1, null);
                throw new xc.c();
            } else {
                n nVar = this.f24937h;
                if (nVar != null) {
                    return nVar.d();
                }
                return -1;
            }
        }
        n nVar2 = this.f24937h;
        if (nVar2 != null) {
            nVar2.c(h10);
        }
        return h10;
    }

    private final String y() {
        if (this.f24936g.q()) {
            return this.f24932c.q();
        }
        return this.f24932c.i();
    }

    private final boolean z(String str) {
        if (!this.f24936g.k() && !B(this.f24935f, str)) {
            this.f24932c.y(str);
        } else {
            this.f24932c.F(this.f24936g.q());
        }
        return this.f24932c.J();
    }

    @Override // he.c
    public void a(ge.d descriptor) {
        kotlin.jvm.internal.m.e(descriptor, "descriptor");
        if (this.f24930a.c().k() && descriptor.f() == 0) {
            A(descriptor);
        }
        if (this.f24932c.J() && !this.f24930a.c().d()) {
            q.e(this.f24932c, "");
            throw new xc.c();
        }
        this.f24932c.k(this.f24931b.f24906b);
        this.f24932c.f24892b.b();
    }

    @Override // he.e
    public he.c b(ge.d descriptor) {
        kotlin.jvm.internal.m.e(descriptor, "descriptor");
        d0 b10 = e0.b(this.f24930a, descriptor);
        this.f24932c.f24892b.c(descriptor);
        this.f24932c.k(b10.f24905a);
        t();
        int i10 = b.f24939a[b10.ordinal()];
        if (i10 != 1 && i10 != 2 && i10 != 3) {
            if (this.f24931b == b10 && this.f24930a.c().j()) {
                return this;
            }
            return new x(this.f24930a, b10, this.f24932c, descriptor, this.f24935f);
        }
        return new x(this.f24930a, b10, this.f24932c, descriptor, this.f24935f);
    }

    @Override // he.e
    public boolean d() {
        return this.f24932c.g();
    }

    @Override // he.a, he.e
    public int f() {
        long l10 = this.f24932c.l();
        int i10 = (int) l10;
        if (l10 == i10) {
            return i10;
        }
        ke.a aVar = this.f24932c;
        ke.a.v(aVar, "Failed to parse int for input '" + l10 + '\'', 0, null, 6, null);
        throw new xc.c();
    }

    @Override // he.a, he.e
    public Object g(ee.a deserializer) {
        boolean N;
        kotlin.jvm.internal.m.e(deserializer, "deserializer");
        try {
            return deserializer.c(this);
        } catch (ee.c e10) {
            String message = e10.getMessage();
            kotlin.jvm.internal.m.b(message);
            N = rd.b0.N(message, "at path", false, 2, null);
            if (N) {
                throw e10;
            }
            List a10 = e10.a();
            throw new ee.c(a10, e10.getMessage() + " at path: " + this.f24932c.f24892b.a(), e10);
        }
    }

    @Override // he.e
    public Void h() {
        return null;
    }

    @Override // he.a, he.e
    public String i() {
        if (this.f24936g.q()) {
            return this.f24932c.q();
        }
        return this.f24932c.n();
    }

    @Override // he.a, he.c
    public Object j(ge.d descriptor, int i10, ee.a deserializer, Object obj) {
        boolean z10;
        kotlin.jvm.internal.m.e(descriptor, "descriptor");
        kotlin.jvm.internal.m.e(deserializer, "deserializer");
        if (this.f24931b == d0.f24901e && (i10 & 1) == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            this.f24932c.f24892b.d();
        }
        Object j10 = super.j(descriptor, i10, deserializer, obj);
        if (z10) {
            this.f24932c.f24892b.f(j10);
        }
        return j10;
    }

    @Override // he.a, he.e
    public long k() {
        return this.f24932c.l();
    }

    @Override // he.e
    public boolean l() {
        boolean z10;
        n nVar = this.f24937h;
        if (nVar != null) {
            z10 = nVar.b();
        } else {
            z10 = false;
        }
        if (z10 || ke.a.L(this.f24932c, false, 1, null)) {
            return false;
        }
        return true;
    }

    @Override // he.c
    public int n(ge.d descriptor) {
        int w10;
        kotlin.jvm.internal.m.e(descriptor, "descriptor");
        int i10 = b.f24939a[this.f24931b.ordinal()];
        if (i10 != 2) {
            if (i10 != 4) {
                w10 = v();
            } else {
                w10 = x(descriptor);
            }
        } else {
            w10 = w();
        }
        if (this.f24931b != d0.f24901e) {
            this.f24932c.f24892b.g(w10);
        }
        return w10;
    }

    @Override // he.e
    public double r() {
        boolean z10;
        ke.a aVar = this.f24932c;
        String p10 = aVar.p();
        try {
            double parseDouble = Double.parseDouble(p10);
            if (!this.f24930a.c().b()) {
                if (!Double.isInfinite(parseDouble) && !Double.isNaN(parseDouble)) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (!z10) {
                    q.i(this.f24932c, Double.valueOf(parseDouble));
                    throw new xc.c();
                }
            }
            return parseDouble;
        } catch (IllegalArgumentException unused) {
            ke.a.v(aVar, "Failed to parse type 'double' for input '" + p10 + '\'', 0, null, 6, null);
            throw new xc.c();
        }
    }
}
