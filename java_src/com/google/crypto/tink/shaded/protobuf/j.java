package com.google.crypto.tink.shaded.protobuf;

import com.google.crypto.tink.shaded.protobuf.h0;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class j implements c1 {

    /* renamed from: a  reason: collision with root package name */
    private final i f8483a;

    /* renamed from: b  reason: collision with root package name */
    private int f8484b;

    /* renamed from: c  reason: collision with root package name */
    private int f8485c;

    /* renamed from: d  reason: collision with root package name */
    private int f8486d = 0;

    private j(i iVar) {
        i iVar2 = (i) z.b(iVar, "input");
        this.f8483a = iVar2;
        iVar2.f8461d = this;
    }

    public static j O(i iVar) {
        j jVar = iVar.f8461d;
        if (jVar != null) {
            return jVar;
        }
        return new j(iVar);
    }

    private void P(Object obj, d1 d1Var, p pVar) {
        int i10 = this.f8485c;
        this.f8485c = p1.c(p1.a(this.f8484b), 4);
        try {
            d1Var.i(obj, this, pVar);
            if (this.f8484b == this.f8485c) {
                return;
            }
            throw a0.h();
        } finally {
            this.f8485c = i10;
        }
    }

    private void Q(Object obj, d1 d1Var, p pVar) {
        i iVar;
        int C = this.f8483a.C();
        i iVar2 = this.f8483a;
        if (iVar2.f8458a < iVar2.f8459b) {
            int l10 = iVar2.l(C);
            this.f8483a.f8458a++;
            d1Var.i(obj, this, pVar);
            this.f8483a.a(0);
            iVar.f8458a--;
            this.f8483a.k(l10);
            return;
        }
        throw a0.i();
    }

    private Object R(d1 d1Var, p pVar) {
        Object newInstance = d1Var.newInstance();
        P(newInstance, d1Var, pVar);
        d1Var.b(newInstance);
        return newInstance;
    }

    private Object S(d1 d1Var, p pVar) {
        Object newInstance = d1Var.newInstance();
        Q(newInstance, d1Var, pVar);
        d1Var.b(newInstance);
        return newInstance;
    }

    private void U(int i10) {
        if (this.f8483a.d() == i10) {
            return;
        }
        throw a0.m();
    }

    private void V(int i10) {
        if (p1.b(this.f8484b) == i10) {
            return;
        }
        throw a0.e();
    }

    private void W(int i10) {
        if ((i10 & 3) == 0) {
            return;
        }
        throw a0.h();
    }

    private void X(int i10) {
        if ((i10 & 7) == 0) {
            return;
        }
        throw a0.h();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c1
    public void A(List list) {
        int B;
        int B2;
        if (list instanceof v) {
            v vVar = (v) list;
            int b10 = p1.b(this.f8484b);
            if (b10 != 2) {
                if (b10 == 5) {
                    do {
                        vVar.g(this.f8483a.s());
                        if (this.f8483a.e()) {
                            return;
                        }
                        B2 = this.f8483a.B();
                    } while (B2 == this.f8484b);
                    this.f8486d = B2;
                    return;
                }
                throw a0.e();
            }
            int C = this.f8483a.C();
            W(C);
            int d10 = this.f8483a.d() + C;
            do {
                vVar.g(this.f8483a.s());
            } while (this.f8483a.d() < d10);
            return;
        }
        int b11 = p1.b(this.f8484b);
        if (b11 != 2) {
            if (b11 == 5) {
                do {
                    list.add(Float.valueOf(this.f8483a.s()));
                    if (this.f8483a.e()) {
                        return;
                    }
                    B = this.f8483a.B();
                } while (B == this.f8484b);
                this.f8486d = B;
                return;
            }
            throw a0.e();
        }
        int C2 = this.f8483a.C();
        W(C2);
        int d11 = this.f8483a.d() + C2;
        do {
            list.add(Float.valueOf(this.f8483a.s()));
        } while (this.f8483a.d() < d11);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c1
    public int B() {
        V(0);
        return this.f8483a.t();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c1
    public boolean C() {
        int i10;
        if (!this.f8483a.e() && (i10 = this.f8484b) != this.f8485c) {
            return this.f8483a.E(i10);
        }
        return false;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c1
    public int D() {
        V(5);
        return this.f8483a.v();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c1
    public void E(List list) {
        int B;
        if (p1.b(this.f8484b) == 2) {
            do {
                list.add(z());
                if (this.f8483a.e()) {
                    return;
                }
                B = this.f8483a.B();
            } while (B == this.f8484b);
            this.f8486d = B;
            return;
        }
        throw a0.e();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c1
    public void F(List list) {
        int B;
        int B2;
        if (list instanceof m) {
            m mVar = (m) list;
            int b10 = p1.b(this.f8484b);
            if (b10 != 1) {
                if (b10 == 2) {
                    int C = this.f8483a.C();
                    X(C);
                    int d10 = this.f8483a.d() + C;
                    do {
                        mVar.g(this.f8483a.o());
                    } while (this.f8483a.d() < d10);
                    return;
                }
                throw a0.e();
            }
            do {
                mVar.g(this.f8483a.o());
                if (this.f8483a.e()) {
                    return;
                }
                B2 = this.f8483a.B();
            } while (B2 == this.f8484b);
            this.f8486d = B2;
            return;
        }
        int b11 = p1.b(this.f8484b);
        if (b11 != 1) {
            if (b11 == 2) {
                int C2 = this.f8483a.C();
                X(C2);
                int d11 = this.f8483a.d() + C2;
                do {
                    list.add(Double.valueOf(this.f8483a.o()));
                } while (this.f8483a.d() < d11);
                return;
            }
            throw a0.e();
        }
        do {
            list.add(Double.valueOf(this.f8483a.o()));
            if (this.f8483a.e()) {
                return;
            }
            B = this.f8483a.B();
        } while (B == this.f8484b);
        this.f8486d = B;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c1
    public long G() {
        V(0);
        return this.f8483a.u();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c1
    public String H() {
        V(2);
        return this.f8483a.A();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c1
    public void I(List list) {
        int B;
        int B2;
        if (list instanceof f0) {
            f0 f0Var = (f0) list;
            int b10 = p1.b(this.f8484b);
            if (b10 != 1) {
                if (b10 == 2) {
                    int C = this.f8483a.C();
                    X(C);
                    int d10 = this.f8483a.d() + C;
                    do {
                        f0Var.g(this.f8483a.r());
                    } while (this.f8483a.d() < d10);
                    return;
                }
                throw a0.e();
            }
            do {
                f0Var.g(this.f8483a.r());
                if (this.f8483a.e()) {
                    return;
                }
                B2 = this.f8483a.B();
            } while (B2 == this.f8484b);
            this.f8486d = B2;
            return;
        }
        int b11 = p1.b(this.f8484b);
        if (b11 != 1) {
            if (b11 == 2) {
                int C2 = this.f8483a.C();
                X(C2);
                int d11 = this.f8483a.d() + C2;
                do {
                    list.add(Long.valueOf(this.f8483a.r()));
                } while (this.f8483a.d() < d11);
                return;
            }
            throw a0.e();
        }
        do {
            list.add(Long.valueOf(this.f8483a.r()));
            if (this.f8483a.e()) {
                return;
            }
            B = this.f8483a.B();
        } while (B == this.f8484b);
        this.f8486d = B;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c1
    public void J(Object obj, d1 d1Var, p pVar) {
        V(2);
        Q(obj, d1Var, pVar);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c1
    public void K(List list, d1 d1Var, p pVar) {
        int B;
        if (p1.b(this.f8484b) == 2) {
            int i10 = this.f8484b;
            do {
                list.add(S(d1Var, pVar));
                if (!this.f8483a.e() && this.f8486d == 0) {
                    B = this.f8483a.B();
                } else {
                    return;
                }
            } while (B == i10);
            this.f8486d = B;
            return;
        }
        throw a0.e();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c1
    public void L(Object obj, d1 d1Var, p pVar) {
        V(3);
        P(obj, d1Var, pVar);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c1
    public void M(Map map, h0.a aVar, p pVar) {
        V(2);
        this.f8483a.l(this.f8483a.C());
        throw null;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c1
    public void N(List list, d1 d1Var, p pVar) {
        int B;
        if (p1.b(this.f8484b) == 3) {
            int i10 = this.f8484b;
            do {
                list.add(R(d1Var, pVar));
                if (!this.f8483a.e() && this.f8486d == 0) {
                    B = this.f8483a.B();
                } else {
                    return;
                }
            } while (B == i10);
            this.f8486d = B;
            return;
        }
        throw a0.e();
    }

    public void T(List list, boolean z10) {
        String v10;
        int B;
        int B2;
        if (p1.b(this.f8484b) == 2) {
            if ((list instanceof d0) && !z10) {
                d0 d0Var = (d0) list;
                do {
                    d0Var.A0(z());
                    if (this.f8483a.e()) {
                        return;
                    }
                    B2 = this.f8483a.B();
                } while (B2 == this.f8484b);
                this.f8486d = B2;
                return;
            }
            do {
                if (z10) {
                    v10 = H();
                } else {
                    v10 = v();
                }
                list.add(v10);
                if (this.f8483a.e()) {
                    return;
                }
                B = this.f8483a.B();
            } while (B == this.f8484b);
            this.f8486d = B;
            return;
        }
        throw a0.e();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c1
    public void a(List list) {
        int B;
        int B2;
        if (list instanceof y) {
            y yVar = (y) list;
            int b10 = p1.b(this.f8484b);
            if (b10 != 0) {
                if (b10 == 2) {
                    int d10 = this.f8483a.d() + this.f8483a.C();
                    do {
                        yVar.g(this.f8483a.x());
                    } while (this.f8483a.d() < d10);
                    U(d10);
                    return;
                }
                throw a0.e();
            }
            do {
                yVar.g(this.f8483a.x());
                if (this.f8483a.e()) {
                    return;
                }
                B2 = this.f8483a.B();
            } while (B2 == this.f8484b);
            this.f8486d = B2;
            return;
        }
        int b11 = p1.b(this.f8484b);
        if (b11 != 0) {
            if (b11 == 2) {
                int d11 = this.f8483a.d() + this.f8483a.C();
                do {
                    list.add(Integer.valueOf(this.f8483a.x()));
                } while (this.f8483a.d() < d11);
                U(d11);
                return;
            }
            throw a0.e();
        }
        do {
            list.add(Integer.valueOf(this.f8483a.x()));
            if (this.f8483a.e()) {
                return;
            }
            B = this.f8483a.B();
        } while (B == this.f8484b);
        this.f8486d = B;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c1
    public long b() {
        V(0);
        return this.f8483a.D();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c1
    public long c() {
        V(1);
        return this.f8483a.r();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c1
    public void d(List list) {
        int B;
        int B2;
        if (list instanceof y) {
            y yVar = (y) list;
            int b10 = p1.b(this.f8484b);
            if (b10 != 2) {
                if (b10 == 5) {
                    do {
                        yVar.g(this.f8483a.v());
                        if (this.f8483a.e()) {
                            return;
                        }
                        B2 = this.f8483a.B();
                    } while (B2 == this.f8484b);
                    this.f8486d = B2;
                    return;
                }
                throw a0.e();
            }
            int C = this.f8483a.C();
            W(C);
            int d10 = this.f8483a.d() + C;
            do {
                yVar.g(this.f8483a.v());
            } while (this.f8483a.d() < d10);
            return;
        }
        int b11 = p1.b(this.f8484b);
        if (b11 != 2) {
            if (b11 == 5) {
                do {
                    list.add(Integer.valueOf(this.f8483a.v()));
                    if (this.f8483a.e()) {
                        return;
                    }
                    B = this.f8483a.B();
                } while (B == this.f8484b);
                this.f8486d = B;
                return;
            }
            throw a0.e();
        }
        int C2 = this.f8483a.C();
        W(C2);
        int d11 = this.f8483a.d() + C2;
        do {
            list.add(Integer.valueOf(this.f8483a.v()));
        } while (this.f8483a.d() < d11);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c1
    public void e(List list) {
        int B;
        int B2;
        if (list instanceof f0) {
            f0 f0Var = (f0) list;
            int b10 = p1.b(this.f8484b);
            if (b10 != 0) {
                if (b10 == 2) {
                    int d10 = this.f8483a.d() + this.f8483a.C();
                    do {
                        f0Var.g(this.f8483a.y());
                    } while (this.f8483a.d() < d10);
                    U(d10);
                    return;
                }
                throw a0.e();
            }
            do {
                f0Var.g(this.f8483a.y());
                if (this.f8483a.e()) {
                    return;
                }
                B2 = this.f8483a.B();
            } while (B2 == this.f8484b);
            this.f8486d = B2;
            return;
        }
        int b11 = p1.b(this.f8484b);
        if (b11 != 0) {
            if (b11 == 2) {
                int d11 = this.f8483a.d() + this.f8483a.C();
                do {
                    list.add(Long.valueOf(this.f8483a.y()));
                } while (this.f8483a.d() < d11);
                U(d11);
                return;
            }
            throw a0.e();
        }
        do {
            list.add(Long.valueOf(this.f8483a.y()));
            if (this.f8483a.e()) {
                return;
            }
            B = this.f8483a.B();
        } while (B == this.f8484b);
        this.f8486d = B;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c1
    public void f(List list) {
        int B;
        int B2;
        if (list instanceof y) {
            y yVar = (y) list;
            int b10 = p1.b(this.f8484b);
            if (b10 != 0) {
                if (b10 == 2) {
                    int d10 = this.f8483a.d() + this.f8483a.C();
                    do {
                        yVar.g(this.f8483a.C());
                    } while (this.f8483a.d() < d10);
                    U(d10);
                    return;
                }
                throw a0.e();
            }
            do {
                yVar.g(this.f8483a.C());
                if (this.f8483a.e()) {
                    return;
                }
                B2 = this.f8483a.B();
            } while (B2 == this.f8484b);
            this.f8486d = B2;
            return;
        }
        int b11 = p1.b(this.f8484b);
        if (b11 != 0) {
            if (b11 == 2) {
                int d11 = this.f8483a.d() + this.f8483a.C();
                do {
                    list.add(Integer.valueOf(this.f8483a.C()));
                } while (this.f8483a.d() < d11);
                U(d11);
                return;
            }
            throw a0.e();
        }
        do {
            list.add(Integer.valueOf(this.f8483a.C()));
            if (this.f8483a.e()) {
                return;
            }
            B = this.f8483a.B();
        } while (B == this.f8484b);
        this.f8486d = B;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c1
    public int g() {
        V(5);
        return this.f8483a.q();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c1
    public boolean h() {
        V(0);
        return this.f8483a.m();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c1
    public long i() {
        V(1);
        return this.f8483a.w();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c1
    public void j(List list) {
        int B;
        int B2;
        if (list instanceof f0) {
            f0 f0Var = (f0) list;
            int b10 = p1.b(this.f8484b);
            if (b10 != 0) {
                if (b10 == 2) {
                    int d10 = this.f8483a.d() + this.f8483a.C();
                    do {
                        f0Var.g(this.f8483a.D());
                    } while (this.f8483a.d() < d10);
                    U(d10);
                    return;
                }
                throw a0.e();
            }
            do {
                f0Var.g(this.f8483a.D());
                if (this.f8483a.e()) {
                    return;
                }
                B2 = this.f8483a.B();
            } while (B2 == this.f8484b);
            this.f8486d = B2;
            return;
        }
        int b11 = p1.b(this.f8484b);
        if (b11 != 0) {
            if (b11 == 2) {
                int d11 = this.f8483a.d() + this.f8483a.C();
                do {
                    list.add(Long.valueOf(this.f8483a.D()));
                } while (this.f8483a.d() < d11);
                U(d11);
                return;
            }
            throw a0.e();
        }
        do {
            list.add(Long.valueOf(this.f8483a.D()));
            if (this.f8483a.e()) {
                return;
            }
            B = this.f8483a.B();
        } while (B == this.f8484b);
        this.f8486d = B;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c1
    public int k() {
        V(0);
        return this.f8483a.C();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c1
    public void l(List list) {
        int B;
        int B2;
        if (list instanceof f0) {
            f0 f0Var = (f0) list;
            int b10 = p1.b(this.f8484b);
            if (b10 != 0) {
                if (b10 == 2) {
                    int d10 = this.f8483a.d() + this.f8483a.C();
                    do {
                        f0Var.g(this.f8483a.u());
                    } while (this.f8483a.d() < d10);
                    U(d10);
                    return;
                }
                throw a0.e();
            }
            do {
                f0Var.g(this.f8483a.u());
                if (this.f8483a.e()) {
                    return;
                }
                B2 = this.f8483a.B();
            } while (B2 == this.f8484b);
            this.f8486d = B2;
            return;
        }
        int b11 = p1.b(this.f8484b);
        if (b11 != 0) {
            if (b11 == 2) {
                int d11 = this.f8483a.d() + this.f8483a.C();
                do {
                    list.add(Long.valueOf(this.f8483a.u()));
                } while (this.f8483a.d() < d11);
                U(d11);
                return;
            }
            throw a0.e();
        }
        do {
            list.add(Long.valueOf(this.f8483a.u()));
            if (this.f8483a.e()) {
                return;
            }
            B = this.f8483a.B();
        } while (B == this.f8484b);
        this.f8486d = B;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c1
    public void m(List list) {
        int B;
        int B2;
        if (list instanceof f0) {
            f0 f0Var = (f0) list;
            int b10 = p1.b(this.f8484b);
            if (b10 != 1) {
                if (b10 == 2) {
                    int C = this.f8483a.C();
                    X(C);
                    int d10 = this.f8483a.d() + C;
                    do {
                        f0Var.g(this.f8483a.w());
                    } while (this.f8483a.d() < d10);
                    return;
                }
                throw a0.e();
            }
            do {
                f0Var.g(this.f8483a.w());
                if (this.f8483a.e()) {
                    return;
                }
                B2 = this.f8483a.B();
            } while (B2 == this.f8484b);
            this.f8486d = B2;
            return;
        }
        int b11 = p1.b(this.f8484b);
        if (b11 != 1) {
            if (b11 == 2) {
                int C2 = this.f8483a.C();
                X(C2);
                int d11 = this.f8483a.d() + C2;
                do {
                    list.add(Long.valueOf(this.f8483a.w()));
                } while (this.f8483a.d() < d11);
                return;
            }
            throw a0.e();
        }
        do {
            list.add(Long.valueOf(this.f8483a.w()));
            if (this.f8483a.e()) {
                return;
            }
            B = this.f8483a.B();
        } while (B == this.f8484b);
        this.f8486d = B;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c1
    public void n(List list) {
        int B;
        int B2;
        if (list instanceof y) {
            y yVar = (y) list;
            int b10 = p1.b(this.f8484b);
            if (b10 != 0) {
                if (b10 == 2) {
                    int d10 = this.f8483a.d() + this.f8483a.C();
                    do {
                        yVar.g(this.f8483a.t());
                    } while (this.f8483a.d() < d10);
                    U(d10);
                    return;
                }
                throw a0.e();
            }
            do {
                yVar.g(this.f8483a.t());
                if (this.f8483a.e()) {
                    return;
                }
                B2 = this.f8483a.B();
            } while (B2 == this.f8484b);
            this.f8486d = B2;
            return;
        }
        int b11 = p1.b(this.f8484b);
        if (b11 != 0) {
            if (b11 == 2) {
                int d11 = this.f8483a.d() + this.f8483a.C();
                do {
                    list.add(Integer.valueOf(this.f8483a.t()));
                } while (this.f8483a.d() < d11);
                U(d11);
                return;
            }
            throw a0.e();
        }
        do {
            list.add(Integer.valueOf(this.f8483a.t()));
            if (this.f8483a.e()) {
                return;
            }
            B = this.f8483a.B();
        } while (B == this.f8484b);
        this.f8486d = B;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c1
    public void o(List list) {
        int B;
        int B2;
        if (list instanceof y) {
            y yVar = (y) list;
            int b10 = p1.b(this.f8484b);
            if (b10 != 0) {
                if (b10 == 2) {
                    int d10 = this.f8483a.d() + this.f8483a.C();
                    do {
                        yVar.g(this.f8483a.p());
                    } while (this.f8483a.d() < d10);
                    U(d10);
                    return;
                }
                throw a0.e();
            }
            do {
                yVar.g(this.f8483a.p());
                if (this.f8483a.e()) {
                    return;
                }
                B2 = this.f8483a.B();
            } while (B2 == this.f8484b);
            this.f8486d = B2;
            return;
        }
        int b11 = p1.b(this.f8484b);
        if (b11 != 0) {
            if (b11 == 2) {
                int d11 = this.f8483a.d() + this.f8483a.C();
                do {
                    list.add(Integer.valueOf(this.f8483a.p()));
                } while (this.f8483a.d() < d11);
                U(d11);
                return;
            }
            throw a0.e();
        }
        do {
            list.add(Integer.valueOf(this.f8483a.p()));
            if (this.f8483a.e()) {
                return;
            }
            B = this.f8483a.B();
        } while (B == this.f8484b);
        this.f8486d = B;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c1
    public int p() {
        V(0);
        return this.f8483a.p();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c1
    public int q() {
        return this.f8484b;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c1
    public void r(List list) {
        int B;
        int B2;
        if (list instanceof y) {
            y yVar = (y) list;
            int b10 = p1.b(this.f8484b);
            if (b10 != 2) {
                if (b10 == 5) {
                    do {
                        yVar.g(this.f8483a.q());
                        if (this.f8483a.e()) {
                            return;
                        }
                        B2 = this.f8483a.B();
                    } while (B2 == this.f8484b);
                    this.f8486d = B2;
                    return;
                }
                throw a0.e();
            }
            int C = this.f8483a.C();
            W(C);
            int d10 = this.f8483a.d() + C;
            do {
                yVar.g(this.f8483a.q());
            } while (this.f8483a.d() < d10);
            return;
        }
        int b11 = p1.b(this.f8484b);
        if (b11 != 2) {
            if (b11 == 5) {
                do {
                    list.add(Integer.valueOf(this.f8483a.q()));
                    if (this.f8483a.e()) {
                        return;
                    }
                    B = this.f8483a.B();
                } while (B == this.f8484b);
                this.f8486d = B;
                return;
            }
            throw a0.e();
        }
        int C2 = this.f8483a.C();
        W(C2);
        int d11 = this.f8483a.d() + C2;
        do {
            list.add(Integer.valueOf(this.f8483a.q()));
        } while (this.f8483a.d() < d11);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c1
    public double readDouble() {
        V(1);
        return this.f8483a.o();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c1
    public float readFloat() {
        V(5);
        return this.f8483a.s();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c1
    public int s() {
        V(0);
        return this.f8483a.x();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c1
    public long t() {
        V(0);
        return this.f8483a.y();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c1
    public void u(List list) {
        int B;
        int B2;
        if (list instanceof f) {
            f fVar = (f) list;
            int b10 = p1.b(this.f8484b);
            if (b10 != 0) {
                if (b10 == 2) {
                    int d10 = this.f8483a.d() + this.f8483a.C();
                    do {
                        fVar.g(this.f8483a.m());
                    } while (this.f8483a.d() < d10);
                    U(d10);
                    return;
                }
                throw a0.e();
            }
            do {
                fVar.g(this.f8483a.m());
                if (this.f8483a.e()) {
                    return;
                }
                B2 = this.f8483a.B();
            } while (B2 == this.f8484b);
            this.f8486d = B2;
            return;
        }
        int b11 = p1.b(this.f8484b);
        if (b11 != 0) {
            if (b11 == 2) {
                int d11 = this.f8483a.d() + this.f8483a.C();
                do {
                    list.add(Boolean.valueOf(this.f8483a.m()));
                } while (this.f8483a.d() < d11);
                U(d11);
                return;
            }
            throw a0.e();
        }
        do {
            list.add(Boolean.valueOf(this.f8483a.m()));
            if (this.f8483a.e()) {
                return;
            }
            B = this.f8483a.B();
        } while (B == this.f8484b);
        this.f8486d = B;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c1
    public String v() {
        V(2);
        return this.f8483a.z();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c1
    public int w() {
        int i10 = this.f8486d;
        if (i10 != 0) {
            this.f8484b = i10;
            this.f8486d = 0;
        } else {
            this.f8484b = this.f8483a.B();
        }
        int i11 = this.f8484b;
        if (i11 != 0 && i11 != this.f8485c) {
            return p1.a(i11);
        }
        return Integer.MAX_VALUE;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c1
    public void x(List list) {
        T(list, false);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c1
    public void y(List list) {
        T(list, true);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c1
    public h z() {
        V(2);
        return this.f8483a.n();
    }
}
