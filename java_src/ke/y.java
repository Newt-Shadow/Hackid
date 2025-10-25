package ke;

import ge.g;
import ke.w;
/* loaded from: classes2.dex */
public final class y extends he.b implements je.e {

    /* renamed from: a  reason: collision with root package name */
    private final g f24940a;

    /* renamed from: b  reason: collision with root package name */
    private final je.b f24941b;

    /* renamed from: c  reason: collision with root package name */
    private final d0 f24942c;

    /* renamed from: d  reason: collision with root package name */
    private final je.e[] f24943d;

    /* renamed from: e  reason: collision with root package name */
    private final le.b f24944e;

    /* renamed from: f  reason: collision with root package name */
    private final je.d f24945f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f24946g;

    /* renamed from: h  reason: collision with root package name */
    private String f24947h;

    /* renamed from: i  reason: collision with root package name */
    private String f24948i;

    /* loaded from: classes2.dex */
    public /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f24949a;

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
            f24949a = iArr;
        }
    }

    public y(g composer, je.b json, d0 mode, je.e[] eVarArr) {
        kotlin.jvm.internal.m.e(composer, "composer");
        kotlin.jvm.internal.m.e(json, "json");
        kotlin.jvm.internal.m.e(mode, "mode");
        this.f24940a = composer;
        this.f24941b = json;
        this.f24942c = mode;
        this.f24943d = eVarArr;
        this.f24944e = n().d();
        this.f24945f = n().c();
        int ordinal = mode.ordinal();
        if (eVarArr != null) {
            je.e eVar = eVarArr[ordinal];
            if (eVar == null && eVar == this) {
                return;
            }
            eVarArr[ordinal] = this;
        }
    }

    private final void u(String str, String str2) {
        this.f24940a.c();
        r(str);
        this.f24940a.e(':');
        this.f24940a.m();
        r(str2);
    }

    @Override // he.d
    public void a(ge.d descriptor) {
        kotlin.jvm.internal.m.e(descriptor, "descriptor");
        if (this.f24942c.f24906b != 0) {
            this.f24940a.n();
            this.f24940a.d();
            this.f24940a.e(this.f24942c.f24906b);
        }
    }

    @Override // he.f
    public he.d b(ge.d descriptor) {
        je.e eVar;
        kotlin.jvm.internal.m.e(descriptor, "descriptor");
        d0 b10 = e0.b(n(), descriptor);
        char c10 = b10.f24905a;
        if (c10 != 0) {
            this.f24940a.e(c10);
            this.f24940a.b();
        }
        String str = this.f24947h;
        if (str != null) {
            String str2 = this.f24948i;
            if (str2 == null) {
                str2 = descriptor.a();
            }
            u(str, str2);
            this.f24947h = null;
            this.f24948i = null;
        }
        if (this.f24942c == b10) {
            return this;
        }
        je.e[] eVarArr = this.f24943d;
        if (eVarArr == null || (eVar = eVarArr[b10.ordinal()]) == null) {
            return new y(this.f24940a, n(), b10, this.f24943d);
        }
        return eVar;
    }

    @Override // he.f
    public void d() {
        this.f24940a.i("null");
    }

    @Override // he.b, he.d
    public void f(ge.d descriptor, int i10, ee.e serializer, Object obj) {
        kotlin.jvm.internal.m.e(descriptor, "descriptor");
        kotlin.jvm.internal.m.e(serializer, "serializer");
        if (obj != null || this.f24945f.j()) {
            super.f(descriptor, i10, serializer, obj);
        }
    }

    @Override // he.f
    public void g(double d10) {
        boolean z10;
        if (this.f24946g) {
            r(String.valueOf(d10));
        } else {
            this.f24940a.f(d10);
        }
        if (!this.f24945f.b()) {
            if (!Double.isInfinite(d10) && !Double.isNaN(d10)) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (!z10) {
                throw q.a(Double.valueOf(d10), this.f24940a.f24912a.toString());
            }
        }
    }

    @Override // he.f
    public void j(boolean z10) {
        if (this.f24946g) {
            r(String.valueOf(z10));
        } else {
            this.f24940a.j(z10);
        }
    }

    @Override // he.b, he.f
    public void k(ee.e serializer, Object obj) {
        String str;
        kotlin.jvm.internal.m.e(serializer, "serializer");
        if (n().c().p()) {
            serializer.e(this, obj);
            return;
        }
        int i10 = w.a.f24929a[n().c().f().ordinal()];
        boolean z10 = false;
        if (i10 != 1 && i10 != 2) {
            if (i10 == 3) {
                ge.f e10 = serializer.a().e();
                if (kotlin.jvm.internal.m.a(e10, g.a.f16420a) || kotlin.jvm.internal.m.a(e10, g.d.f16423a)) {
                    z10 = true;
                }
            } else {
                throw new xc.i();
            }
        }
        if (z10) {
            str = w.a(serializer.a(), n());
        } else {
            str = null;
        }
        if (str != null) {
            String a10 = serializer.a().a();
            this.f24947h = str;
            this.f24948i = a10;
        }
        serializer.e(this, obj);
    }

    @Override // he.d
    public boolean m(ge.d descriptor, int i10) {
        kotlin.jvm.internal.m.e(descriptor, "descriptor");
        return this.f24945f.i();
    }

    @Override // je.e
    public je.b n() {
        return this.f24941b;
    }

    @Override // he.b, he.f
    public void o(int i10) {
        if (this.f24946g) {
            r(String.valueOf(i10));
        } else {
            this.f24940a.g(i10);
        }
    }

    @Override // he.b, he.f
    public void p(long j10) {
        if (this.f24946g) {
            r(String.valueOf(j10));
        } else {
            this.f24940a.h(j10);
        }
    }

    @Override // he.b, he.f
    public void r(String value) {
        kotlin.jvm.internal.m.e(value, "value");
        this.f24940a.k(value);
    }

    @Override // he.b
    public boolean s(ge.d descriptor, int i10) {
        kotlin.jvm.internal.m.e(descriptor, "descriptor");
        int i11 = a.f24949a[this.f24942c.ordinal()];
        if (i11 != 1) {
            boolean z10 = false;
            if (i11 != 2) {
                if (i11 != 3) {
                    if (!this.f24940a.a()) {
                        this.f24940a.e(',');
                    }
                    this.f24940a.c();
                    r(s.g(descriptor, n(), i10));
                    this.f24940a.e(':');
                    this.f24940a.m();
                } else {
                    if (i10 == 0) {
                        this.f24946g = true;
                    }
                    if (i10 == 1) {
                        this.f24940a.e(',');
                        this.f24940a.m();
                        this.f24946g = false;
                    }
                }
            } else if (!this.f24940a.a()) {
                if (i10 % 2 == 0) {
                    this.f24940a.e(',');
                    this.f24940a.c();
                    z10 = true;
                } else {
                    this.f24940a.e(':');
                    this.f24940a.m();
                }
                this.f24946g = z10;
            } else {
                this.f24946g = true;
                this.f24940a.c();
            }
        } else {
            if (!this.f24940a.a()) {
                this.f24940a.e(',');
            }
            this.f24940a.c();
        }
        return true;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public y(l output, je.b json, d0 mode, je.e[] modeReuseCache) {
        this(i.a(output, json), json, mode, modeReuseCache);
        kotlin.jvm.internal.m.e(output, "output");
        kotlin.jvm.internal.m.e(json, "json");
        kotlin.jvm.internal.m.e(mode, "mode");
        kotlin.jvm.internal.m.e(modeReuseCache, "modeReuseCache");
    }
}
