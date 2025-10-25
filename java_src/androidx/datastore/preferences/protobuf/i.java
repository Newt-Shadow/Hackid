package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.q1;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class i implements d1 {

    /* renamed from: a  reason: collision with root package name */
    private final h f2194a;

    /* renamed from: b  reason: collision with root package name */
    private int f2195b;

    /* renamed from: c  reason: collision with root package name */
    private int f2196c;

    /* renamed from: d  reason: collision with root package name */
    private int f2197d = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f2198a;

        static {
            int[] iArr = new int[q1.b.values().length];
            f2198a = iArr;
            try {
                iArr[q1.b.f2272j.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2198a[q1.b.f2276n.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2198a[q1.b.f2265c.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f2198a[q1.b.f2278p.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f2198a[q1.b.f2271i.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f2198a[q1.b.f2270h.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f2198a[q1.b.f2266d.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f2198a[q1.b.f2269g.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f2198a[q1.b.f2267e.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f2198a[q1.b.f2275m.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f2198a[q1.b.f2279q.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f2198a[q1.b.f2280r.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f2198a[q1.b.f2281s.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f2198a[q1.b.f2282t.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f2198a[q1.b.f2273k.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f2198a[q1.b.f2277o.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f2198a[q1.b.f2268f.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
        }
    }

    private i(h hVar) {
        h hVar2 = (h) y.b(hVar, "input");
        this.f2194a = hVar2;
        hVar2.f2153d = this;
    }

    public static i O(h hVar) {
        i iVar = hVar.f2153d;
        if (iVar != null) {
            return iVar;
        }
        return new i(hVar);
    }

    private void P(Object obj, e1 e1Var, o oVar) {
        int i10 = this.f2196c;
        this.f2196c = q1.c(q1.a(this.f2195b), 4);
        try {
            e1Var.g(obj, this, oVar);
            if (this.f2195b == this.f2196c) {
                return;
            }
            throw z.h();
        } finally {
            this.f2196c = i10;
        }
    }

    private void Q(Object obj, e1 e1Var, o oVar) {
        h hVar;
        int D = this.f2194a.D();
        h hVar2 = this.f2194a;
        if (hVar2.f2150a < hVar2.f2151b) {
            int m10 = hVar2.m(D);
            this.f2194a.f2150a++;
            e1Var.g(obj, this, oVar);
            this.f2194a.a(0);
            hVar.f2150a--;
            this.f2194a.l(m10);
            return;
        }
        throw z.i();
    }

    private Object R(q1.b bVar, Class cls, o oVar) {
        switch (a.f2198a[bVar.ordinal()]) {
            case 1:
                return Boolean.valueOf(h());
            case 2:
                return z();
            case 3:
                return Double.valueOf(readDouble());
            case 4:
                return Integer.valueOf(p());
            case 5:
                return Integer.valueOf(g());
            case 6:
                return Long.valueOf(c());
            case 7:
                return Float.valueOf(readFloat());
            case 8:
                return Integer.valueOf(B());
            case 9:
                return Long.valueOf(G());
            case 10:
                return U(cls, oVar);
            case 11:
                return Integer.valueOf(D());
            case 12:
                return Long.valueOf(i());
            case 13:
                return Integer.valueOf(s());
            case 14:
                return Long.valueOf(t());
            case 15:
                return H();
            case 16:
                return Integer.valueOf(k());
            case 17:
                return Long.valueOf(b());
            default:
                throw new IllegalArgumentException("unsupported field type.");
        }
    }

    private Object S(e1 e1Var, o oVar) {
        Object newInstance = e1Var.newInstance();
        P(newInstance, e1Var, oVar);
        e1Var.b(newInstance);
        return newInstance;
    }

    private Object T(e1 e1Var, o oVar) {
        Object newInstance = e1Var.newInstance();
        Q(newInstance, e1Var, oVar);
        e1Var.b(newInstance);
        return newInstance;
    }

    private void W(int i10) {
        if (this.f2194a.e() == i10) {
            return;
        }
        throw z.m();
    }

    private void X(int i10) {
        if (q1.b(this.f2195b) == i10) {
            return;
        }
        throw z.e();
    }

    private void Y(int i10) {
        if ((i10 & 3) == 0) {
            return;
        }
        throw z.h();
    }

    private void Z(int i10) {
        if ((i10 & 7) == 0) {
            return;
        }
        throw z.h();
    }

    @Override // androidx.datastore.preferences.protobuf.d1
    public void A(List list) {
        int C;
        if (list instanceof u) {
            u uVar = (u) list;
            int b10 = q1.b(this.f2195b);
            if (b10 != 2) {
                if (b10 != 5) {
                    throw z.e();
                }
                this.f2194a.t();
                throw null;
            }
            Y(this.f2194a.D());
            this.f2194a.e();
            this.f2194a.t();
            throw null;
        }
        int b11 = q1.b(this.f2195b);
        if (b11 != 2) {
            if (b11 == 5) {
                do {
                    list.add(Float.valueOf(this.f2194a.t()));
                    if (this.f2194a.f()) {
                        return;
                    }
                    C = this.f2194a.C();
                } while (C == this.f2195b);
                this.f2197d = C;
                return;
            }
            throw z.e();
        }
        int D = this.f2194a.D();
        Y(D);
        int e10 = this.f2194a.e() + D;
        do {
            list.add(Float.valueOf(this.f2194a.t()));
        } while (this.f2194a.e() < e10);
    }

    @Override // androidx.datastore.preferences.protobuf.d1
    public int B() {
        X(0);
        return this.f2194a.u();
    }

    @Override // androidx.datastore.preferences.protobuf.d1
    public boolean C() {
        int i10;
        if (!this.f2194a.f() && (i10 = this.f2195b) != this.f2196c) {
            return this.f2194a.F(i10);
        }
        return false;
    }

    @Override // androidx.datastore.preferences.protobuf.d1
    public int D() {
        X(5);
        return this.f2194a.w();
    }

    @Override // androidx.datastore.preferences.protobuf.d1
    public void E(List list) {
        int C;
        if (q1.b(this.f2195b) == 2) {
            do {
                list.add(z());
                if (this.f2194a.f()) {
                    return;
                }
                C = this.f2194a.C();
            } while (C == this.f2195b);
            this.f2197d = C;
            return;
        }
        throw z.e();
    }

    @Override // androidx.datastore.preferences.protobuf.d1
    public void F(List list) {
        int C;
        if (list instanceof l) {
            l lVar = (l) list;
            int b10 = q1.b(this.f2195b);
            if (b10 != 1) {
                if (b10 != 2) {
                    throw z.e();
                }
                Z(this.f2194a.D());
                this.f2194a.e();
                this.f2194a.p();
                throw null;
            }
            this.f2194a.p();
            throw null;
        }
        int b11 = q1.b(this.f2195b);
        if (b11 != 1) {
            if (b11 == 2) {
                int D = this.f2194a.D();
                Z(D);
                int e10 = this.f2194a.e() + D;
                do {
                    list.add(Double.valueOf(this.f2194a.p()));
                } while (this.f2194a.e() < e10);
                return;
            }
            throw z.e();
        }
        do {
            list.add(Double.valueOf(this.f2194a.p()));
            if (this.f2194a.f()) {
                return;
            }
            C = this.f2194a.C();
        } while (C == this.f2195b);
        this.f2197d = C;
    }

    @Override // androidx.datastore.preferences.protobuf.d1
    public long G() {
        X(0);
        return this.f2194a.v();
    }

    @Override // androidx.datastore.preferences.protobuf.d1
    public String H() {
        X(2);
        return this.f2194a.B();
    }

    @Override // androidx.datastore.preferences.protobuf.d1
    public void I(List list) {
        int C;
        if (list instanceof g0) {
            g0 g0Var = (g0) list;
            int b10 = q1.b(this.f2195b);
            if (b10 != 1) {
                if (b10 != 2) {
                    throw z.e();
                }
                Z(this.f2194a.D());
                this.f2194a.e();
                this.f2194a.s();
                throw null;
            }
            this.f2194a.s();
            throw null;
        }
        int b11 = q1.b(this.f2195b);
        if (b11 != 1) {
            if (b11 == 2) {
                int D = this.f2194a.D();
                Z(D);
                int e10 = this.f2194a.e() + D;
                do {
                    list.add(Long.valueOf(this.f2194a.s()));
                } while (this.f2194a.e() < e10);
                return;
            }
            throw z.e();
        }
        do {
            list.add(Long.valueOf(this.f2194a.s()));
            if (this.f2194a.f()) {
                return;
            }
            C = this.f2194a.C();
        } while (C == this.f2195b);
        this.f2197d = C;
    }

    @Override // androidx.datastore.preferences.protobuf.d1
    public void J(Object obj, e1 e1Var, o oVar) {
        X(2);
        Q(obj, e1Var, oVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x005c, code lost:
        r8.put(r2, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0064, code lost:
        return;
     */
    @Override // androidx.datastore.preferences.protobuf.d1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void K(java.util.Map r8, androidx.datastore.preferences.protobuf.i0.a r9, androidx.datastore.preferences.protobuf.o r10) {
        /*
            r7 = this;
            r0 = 2
            r7.X(r0)
            androidx.datastore.preferences.protobuf.h r1 = r7.f2194a
            int r1 = r1.D()
            androidx.datastore.preferences.protobuf.h r2 = r7.f2194a
            int r1 = r2.m(r1)
            java.lang.Object r2 = r9.f2203b
            java.lang.Object r3 = r9.f2205d
        L14:
            int r4 = r7.w()     // Catch: java.lang.Throwable -> L65
            r5 = 2147483647(0x7fffffff, float:NaN)
            if (r4 == r5) goto L5c
            androidx.datastore.preferences.protobuf.h r5 = r7.f2194a     // Catch: java.lang.Throwable -> L65
            boolean r5 = r5.f()     // Catch: java.lang.Throwable -> L65
            if (r5 == 0) goto L26
            goto L5c
        L26:
            r5 = 1
            java.lang.String r6 = "Unable to parse map entry."
            if (r4 == r5) goto L47
            if (r4 == r0) goto L3a
            boolean r4 = r7.C()     // Catch: androidx.datastore.preferences.protobuf.z.a -> L4f java.lang.Throwable -> L65
            if (r4 == 0) goto L34
            goto L14
        L34:
            androidx.datastore.preferences.protobuf.z r4 = new androidx.datastore.preferences.protobuf.z     // Catch: androidx.datastore.preferences.protobuf.z.a -> L4f java.lang.Throwable -> L65
            r4.<init>(r6)     // Catch: androidx.datastore.preferences.protobuf.z.a -> L4f java.lang.Throwable -> L65
            throw r4     // Catch: androidx.datastore.preferences.protobuf.z.a -> L4f java.lang.Throwable -> L65
        L3a:
            androidx.datastore.preferences.protobuf.q1$b r4 = r9.f2204c     // Catch: androidx.datastore.preferences.protobuf.z.a -> L4f java.lang.Throwable -> L65
            java.lang.Object r5 = r9.f2205d     // Catch: androidx.datastore.preferences.protobuf.z.a -> L4f java.lang.Throwable -> L65
            java.lang.Class r5 = r5.getClass()     // Catch: androidx.datastore.preferences.protobuf.z.a -> L4f java.lang.Throwable -> L65
            java.lang.Object r3 = r7.R(r4, r5, r10)     // Catch: androidx.datastore.preferences.protobuf.z.a -> L4f java.lang.Throwable -> L65
            goto L14
        L47:
            androidx.datastore.preferences.protobuf.q1$b r4 = r9.f2202a     // Catch: androidx.datastore.preferences.protobuf.z.a -> L4f java.lang.Throwable -> L65
            r5 = 0
            java.lang.Object r2 = r7.R(r4, r5, r5)     // Catch: androidx.datastore.preferences.protobuf.z.a -> L4f java.lang.Throwable -> L65
            goto L14
        L4f:
            boolean r4 = r7.C()     // Catch: java.lang.Throwable -> L65
            if (r4 == 0) goto L56
            goto L14
        L56:
            androidx.datastore.preferences.protobuf.z r8 = new androidx.datastore.preferences.protobuf.z     // Catch: java.lang.Throwable -> L65
            r8.<init>(r6)     // Catch: java.lang.Throwable -> L65
            throw r8     // Catch: java.lang.Throwable -> L65
        L5c:
            r8.put(r2, r3)     // Catch: java.lang.Throwable -> L65
            androidx.datastore.preferences.protobuf.h r8 = r7.f2194a
            r8.l(r1)
            return
        L65:
            r8 = move-exception
            androidx.datastore.preferences.protobuf.h r9 = r7.f2194a
            r9.l(r1)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.i.K(java.util.Map, androidx.datastore.preferences.protobuf.i0$a, androidx.datastore.preferences.protobuf.o):void");
    }

    @Override // androidx.datastore.preferences.protobuf.d1
    public void L(Object obj, e1 e1Var, o oVar) {
        X(3);
        P(obj, e1Var, oVar);
    }

    @Override // androidx.datastore.preferences.protobuf.d1
    public void M(List list, e1 e1Var, o oVar) {
        int C;
        if (q1.b(this.f2195b) == 3) {
            int i10 = this.f2195b;
            do {
                list.add(S(e1Var, oVar));
                if (!this.f2194a.f() && this.f2197d == 0) {
                    C = this.f2194a.C();
                } else {
                    return;
                }
            } while (C == i10);
            this.f2197d = C;
            return;
        }
        throw z.e();
    }

    @Override // androidx.datastore.preferences.protobuf.d1
    public void N(List list, e1 e1Var, o oVar) {
        int C;
        if (q1.b(this.f2195b) == 2) {
            int i10 = this.f2195b;
            do {
                list.add(T(e1Var, oVar));
                if (!this.f2194a.f() && this.f2197d == 0) {
                    C = this.f2194a.C();
                } else {
                    return;
                }
            } while (C == i10);
            this.f2197d = C;
            return;
        }
        throw z.e();
    }

    public Object U(Class cls, o oVar) {
        X(2);
        return T(a1.a().c(cls), oVar);
    }

    public void V(List list, boolean z10) {
        String v10;
        int C;
        int C2;
        if (q1.b(this.f2195b) == 2) {
            if ((list instanceof c0) && !z10) {
                c0 c0Var = (c0) list;
                do {
                    c0Var.X(z());
                    if (this.f2194a.f()) {
                        return;
                    }
                    C2 = this.f2194a.C();
                } while (C2 == this.f2195b);
                this.f2197d = C2;
                return;
            }
            do {
                if (z10) {
                    v10 = H();
                } else {
                    v10 = v();
                }
                list.add(v10);
                if (this.f2194a.f()) {
                    return;
                }
                C = this.f2194a.C();
            } while (C == this.f2195b);
            this.f2197d = C;
            return;
        }
        throw z.e();
    }

    @Override // androidx.datastore.preferences.protobuf.d1
    public void a(List list) {
        int C;
        if (list instanceof x) {
            x xVar = (x) list;
            int b10 = q1.b(this.f2195b);
            if (b10 != 0) {
                if (b10 != 2) {
                    throw z.e();
                }
                this.f2194a.D();
                this.f2194a.e();
                this.f2194a.y();
                throw null;
            }
            this.f2194a.y();
            throw null;
        }
        int b11 = q1.b(this.f2195b);
        if (b11 != 0) {
            if (b11 == 2) {
                int e10 = this.f2194a.e() + this.f2194a.D();
                do {
                    list.add(Integer.valueOf(this.f2194a.y()));
                } while (this.f2194a.e() < e10);
                W(e10);
                return;
            }
            throw z.e();
        }
        do {
            list.add(Integer.valueOf(this.f2194a.y()));
            if (this.f2194a.f()) {
                return;
            }
            C = this.f2194a.C();
        } while (C == this.f2195b);
        this.f2197d = C;
    }

    @Override // androidx.datastore.preferences.protobuf.d1
    public long b() {
        X(0);
        return this.f2194a.E();
    }

    @Override // androidx.datastore.preferences.protobuf.d1
    public long c() {
        X(1);
        return this.f2194a.s();
    }

    @Override // androidx.datastore.preferences.protobuf.d1
    public void d(List list) {
        int C;
        if (list instanceof x) {
            x xVar = (x) list;
            int b10 = q1.b(this.f2195b);
            if (b10 != 2) {
                if (b10 != 5) {
                    throw z.e();
                }
                this.f2194a.w();
                throw null;
            }
            Y(this.f2194a.D());
            this.f2194a.e();
            this.f2194a.w();
            throw null;
        }
        int b11 = q1.b(this.f2195b);
        if (b11 != 2) {
            if (b11 == 5) {
                do {
                    list.add(Integer.valueOf(this.f2194a.w()));
                    if (this.f2194a.f()) {
                        return;
                    }
                    C = this.f2194a.C();
                } while (C == this.f2195b);
                this.f2197d = C;
                return;
            }
            throw z.e();
        }
        int D = this.f2194a.D();
        Y(D);
        int e10 = this.f2194a.e() + D;
        do {
            list.add(Integer.valueOf(this.f2194a.w()));
        } while (this.f2194a.e() < e10);
    }

    @Override // androidx.datastore.preferences.protobuf.d1
    public void e(List list) {
        int C;
        if (list instanceof g0) {
            g0 g0Var = (g0) list;
            int b10 = q1.b(this.f2195b);
            if (b10 != 0) {
                if (b10 != 2) {
                    throw z.e();
                }
                this.f2194a.D();
                this.f2194a.e();
                this.f2194a.z();
                throw null;
            }
            this.f2194a.z();
            throw null;
        }
        int b11 = q1.b(this.f2195b);
        if (b11 != 0) {
            if (b11 == 2) {
                int e10 = this.f2194a.e() + this.f2194a.D();
                do {
                    list.add(Long.valueOf(this.f2194a.z()));
                } while (this.f2194a.e() < e10);
                W(e10);
                return;
            }
            throw z.e();
        }
        do {
            list.add(Long.valueOf(this.f2194a.z()));
            if (this.f2194a.f()) {
                return;
            }
            C = this.f2194a.C();
        } while (C == this.f2195b);
        this.f2197d = C;
    }

    @Override // androidx.datastore.preferences.protobuf.d1
    public void f(List list) {
        int C;
        if (list instanceof x) {
            x xVar = (x) list;
            int b10 = q1.b(this.f2195b);
            if (b10 != 0) {
                if (b10 != 2) {
                    throw z.e();
                }
                this.f2194a.D();
                this.f2194a.e();
                this.f2194a.D();
                throw null;
            }
            this.f2194a.D();
            throw null;
        }
        int b11 = q1.b(this.f2195b);
        if (b11 != 0) {
            if (b11 == 2) {
                int e10 = this.f2194a.e() + this.f2194a.D();
                do {
                    list.add(Integer.valueOf(this.f2194a.D()));
                } while (this.f2194a.e() < e10);
                W(e10);
                return;
            }
            throw z.e();
        }
        do {
            list.add(Integer.valueOf(this.f2194a.D()));
            if (this.f2194a.f()) {
                return;
            }
            C = this.f2194a.C();
        } while (C == this.f2195b);
        this.f2197d = C;
    }

    @Override // androidx.datastore.preferences.protobuf.d1
    public int g() {
        X(5);
        return this.f2194a.r();
    }

    @Override // androidx.datastore.preferences.protobuf.d1
    public boolean h() {
        X(0);
        return this.f2194a.n();
    }

    @Override // androidx.datastore.preferences.protobuf.d1
    public long i() {
        X(1);
        return this.f2194a.x();
    }

    @Override // androidx.datastore.preferences.protobuf.d1
    public void j(List list) {
        int C;
        if (list instanceof g0) {
            g0 g0Var = (g0) list;
            int b10 = q1.b(this.f2195b);
            if (b10 != 0) {
                if (b10 != 2) {
                    throw z.e();
                }
                this.f2194a.D();
                this.f2194a.e();
                this.f2194a.E();
                throw null;
            }
            this.f2194a.E();
            throw null;
        }
        int b11 = q1.b(this.f2195b);
        if (b11 != 0) {
            if (b11 == 2) {
                int e10 = this.f2194a.e() + this.f2194a.D();
                do {
                    list.add(Long.valueOf(this.f2194a.E()));
                } while (this.f2194a.e() < e10);
                W(e10);
                return;
            }
            throw z.e();
        }
        do {
            list.add(Long.valueOf(this.f2194a.E()));
            if (this.f2194a.f()) {
                return;
            }
            C = this.f2194a.C();
        } while (C == this.f2195b);
        this.f2197d = C;
    }

    @Override // androidx.datastore.preferences.protobuf.d1
    public int k() {
        X(0);
        return this.f2194a.D();
    }

    @Override // androidx.datastore.preferences.protobuf.d1
    public void l(List list) {
        int C;
        if (list instanceof g0) {
            g0 g0Var = (g0) list;
            int b10 = q1.b(this.f2195b);
            if (b10 != 0) {
                if (b10 != 2) {
                    throw z.e();
                }
                this.f2194a.D();
                this.f2194a.e();
                this.f2194a.v();
                throw null;
            }
            this.f2194a.v();
            throw null;
        }
        int b11 = q1.b(this.f2195b);
        if (b11 != 0) {
            if (b11 == 2) {
                int e10 = this.f2194a.e() + this.f2194a.D();
                do {
                    list.add(Long.valueOf(this.f2194a.v()));
                } while (this.f2194a.e() < e10);
                W(e10);
                return;
            }
            throw z.e();
        }
        do {
            list.add(Long.valueOf(this.f2194a.v()));
            if (this.f2194a.f()) {
                return;
            }
            C = this.f2194a.C();
        } while (C == this.f2195b);
        this.f2197d = C;
    }

    @Override // androidx.datastore.preferences.protobuf.d1
    public void m(List list) {
        int C;
        if (list instanceof g0) {
            g0 g0Var = (g0) list;
            int b10 = q1.b(this.f2195b);
            if (b10 != 1) {
                if (b10 != 2) {
                    throw z.e();
                }
                Z(this.f2194a.D());
                this.f2194a.e();
                this.f2194a.x();
                throw null;
            }
            this.f2194a.x();
            throw null;
        }
        int b11 = q1.b(this.f2195b);
        if (b11 != 1) {
            if (b11 == 2) {
                int D = this.f2194a.D();
                Z(D);
                int e10 = this.f2194a.e() + D;
                do {
                    list.add(Long.valueOf(this.f2194a.x()));
                } while (this.f2194a.e() < e10);
                return;
            }
            throw z.e();
        }
        do {
            list.add(Long.valueOf(this.f2194a.x()));
            if (this.f2194a.f()) {
                return;
            }
            C = this.f2194a.C();
        } while (C == this.f2195b);
        this.f2197d = C;
    }

    @Override // androidx.datastore.preferences.protobuf.d1
    public void n(List list) {
        int C;
        if (list instanceof x) {
            x xVar = (x) list;
            int b10 = q1.b(this.f2195b);
            if (b10 != 0) {
                if (b10 != 2) {
                    throw z.e();
                }
                this.f2194a.D();
                this.f2194a.e();
                this.f2194a.u();
                throw null;
            }
            this.f2194a.u();
            throw null;
        }
        int b11 = q1.b(this.f2195b);
        if (b11 != 0) {
            if (b11 == 2) {
                int e10 = this.f2194a.e() + this.f2194a.D();
                do {
                    list.add(Integer.valueOf(this.f2194a.u()));
                } while (this.f2194a.e() < e10);
                W(e10);
                return;
            }
            throw z.e();
        }
        do {
            list.add(Integer.valueOf(this.f2194a.u()));
            if (this.f2194a.f()) {
                return;
            }
            C = this.f2194a.C();
        } while (C == this.f2195b);
        this.f2197d = C;
    }

    @Override // androidx.datastore.preferences.protobuf.d1
    public void o(List list) {
        int C;
        if (list instanceof x) {
            x xVar = (x) list;
            int b10 = q1.b(this.f2195b);
            if (b10 != 0) {
                if (b10 != 2) {
                    throw z.e();
                }
                this.f2194a.D();
                this.f2194a.e();
                this.f2194a.q();
                throw null;
            }
            this.f2194a.q();
            throw null;
        }
        int b11 = q1.b(this.f2195b);
        if (b11 != 0) {
            if (b11 == 2) {
                int e10 = this.f2194a.e() + this.f2194a.D();
                do {
                    list.add(Integer.valueOf(this.f2194a.q()));
                } while (this.f2194a.e() < e10);
                W(e10);
                return;
            }
            throw z.e();
        }
        do {
            list.add(Integer.valueOf(this.f2194a.q()));
            if (this.f2194a.f()) {
                return;
            }
            C = this.f2194a.C();
        } while (C == this.f2195b);
        this.f2197d = C;
    }

    @Override // androidx.datastore.preferences.protobuf.d1
    public int p() {
        X(0);
        return this.f2194a.q();
    }

    @Override // androidx.datastore.preferences.protobuf.d1
    public int q() {
        return this.f2195b;
    }

    @Override // androidx.datastore.preferences.protobuf.d1
    public void r(List list) {
        int C;
        if (list instanceof x) {
            x xVar = (x) list;
            int b10 = q1.b(this.f2195b);
            if (b10 != 2) {
                if (b10 != 5) {
                    throw z.e();
                }
                this.f2194a.r();
                throw null;
            }
            Y(this.f2194a.D());
            this.f2194a.e();
            this.f2194a.r();
            throw null;
        }
        int b11 = q1.b(this.f2195b);
        if (b11 != 2) {
            if (b11 == 5) {
                do {
                    list.add(Integer.valueOf(this.f2194a.r()));
                    if (this.f2194a.f()) {
                        return;
                    }
                    C = this.f2194a.C();
                } while (C == this.f2195b);
                this.f2197d = C;
                return;
            }
            throw z.e();
        }
        int D = this.f2194a.D();
        Y(D);
        int e10 = this.f2194a.e() + D;
        do {
            list.add(Integer.valueOf(this.f2194a.r()));
        } while (this.f2194a.e() < e10);
    }

    @Override // androidx.datastore.preferences.protobuf.d1
    public double readDouble() {
        X(1);
        return this.f2194a.p();
    }

    @Override // androidx.datastore.preferences.protobuf.d1
    public float readFloat() {
        X(5);
        return this.f2194a.t();
    }

    @Override // androidx.datastore.preferences.protobuf.d1
    public int s() {
        X(0);
        return this.f2194a.y();
    }

    @Override // androidx.datastore.preferences.protobuf.d1
    public long t() {
        X(0);
        return this.f2194a.z();
    }

    @Override // androidx.datastore.preferences.protobuf.d1
    public void u(List list) {
        int C;
        if (list instanceof e) {
            e eVar = (e) list;
            int b10 = q1.b(this.f2195b);
            if (b10 != 0) {
                if (b10 != 2) {
                    throw z.e();
                }
                this.f2194a.D();
                this.f2194a.e();
                this.f2194a.n();
                throw null;
            }
            this.f2194a.n();
            throw null;
        }
        int b11 = q1.b(this.f2195b);
        if (b11 != 0) {
            if (b11 == 2) {
                int e10 = this.f2194a.e() + this.f2194a.D();
                do {
                    list.add(Boolean.valueOf(this.f2194a.n()));
                } while (this.f2194a.e() < e10);
                W(e10);
                return;
            }
            throw z.e();
        }
        do {
            list.add(Boolean.valueOf(this.f2194a.n()));
            if (this.f2194a.f()) {
                return;
            }
            C = this.f2194a.C();
        } while (C == this.f2195b);
        this.f2197d = C;
    }

    @Override // androidx.datastore.preferences.protobuf.d1
    public String v() {
        X(2);
        return this.f2194a.A();
    }

    @Override // androidx.datastore.preferences.protobuf.d1
    public int w() {
        int i10 = this.f2197d;
        if (i10 != 0) {
            this.f2195b = i10;
            this.f2197d = 0;
        } else {
            this.f2195b = this.f2194a.C();
        }
        int i11 = this.f2195b;
        if (i11 != 0 && i11 != this.f2196c) {
            return q1.a(i11);
        }
        return Integer.MAX_VALUE;
    }

    @Override // androidx.datastore.preferences.protobuf.d1
    public void x(List list) {
        V(list, false);
    }

    @Override // androidx.datastore.preferences.protobuf.d1
    public void y(List list) {
        V(list, true);
    }

    @Override // androidx.datastore.preferences.protobuf.d1
    public g z() {
        X(2);
        return this.f2194a.o();
    }
}
