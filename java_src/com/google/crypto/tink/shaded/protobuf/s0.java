package com.google.crypto.tink.shaded.protobuf;

import com.google.crypto.tink.shaded.protobuf.e;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes.dex */
final class s0 implements d1 {

    /* renamed from: a  reason: collision with root package name */
    private final o0 f8604a;

    /* renamed from: b  reason: collision with root package name */
    private final j1 f8605b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f8606c;

    /* renamed from: d  reason: collision with root package name */
    private final q f8607d;

    private s0(j1 j1Var, q qVar, o0 o0Var) {
        this.f8605b = j1Var;
        this.f8606c = qVar.e(o0Var);
        this.f8607d = qVar;
        this.f8604a = o0Var;
    }

    private int j(j1 j1Var, Object obj) {
        return j1Var.i(j1Var.g(obj));
    }

    private void k(j1 j1Var, q qVar, Object obj, c1 c1Var, p pVar) {
        Object f10 = j1Var.f(obj);
        t d10 = qVar.d(obj);
        do {
            try {
                if (c1Var.w() == Integer.MAX_VALUE) {
                    return;
                }
            } finally {
                j1Var.o(obj, f10);
            }
        } while (m(c1Var, pVar, qVar, d10, j1Var, f10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static s0 l(j1 j1Var, q qVar, o0 o0Var) {
        return new s0(j1Var, qVar, o0Var);
    }

    private boolean m(c1 c1Var, p pVar, q qVar, t tVar, j1 j1Var, Object obj) {
        int q10 = c1Var.q();
        if (q10 != p1.f8543a) {
            if (p1.b(q10) == 2) {
                Object b10 = qVar.b(pVar, this.f8604a, p1.a(q10));
                if (b10 != null) {
                    qVar.h(c1Var, b10, pVar, tVar);
                    return true;
                }
                return j1Var.m(obj, c1Var);
            }
            return c1Var.C();
        }
        Object obj2 = null;
        int i10 = 0;
        h hVar = null;
        while (c1Var.w() != Integer.MAX_VALUE) {
            int q11 = c1Var.q();
            if (q11 == p1.f8545c) {
                i10 = c1Var.k();
                obj2 = qVar.b(pVar, this.f8604a, i10);
            } else if (q11 == p1.f8546d) {
                if (obj2 != null) {
                    qVar.h(c1Var, obj2, pVar, tVar);
                } else {
                    hVar = c1Var.z();
                }
            } else if (!c1Var.C()) {
                break;
            }
        }
        if (c1Var.q() == p1.f8544b) {
            if (hVar != null) {
                if (obj2 != null) {
                    qVar.i(hVar, obj2, pVar, tVar);
                } else {
                    j1Var.d(obj, i10, hVar);
                }
            }
            return true;
        }
        throw a0.b();
    }

    private void n(j1 j1Var, Object obj, q1 q1Var) {
        j1Var.s(j1Var.g(obj), q1Var);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d1
    public void a(Object obj, Object obj2) {
        f1.F(this.f8605b, obj, obj2);
        if (this.f8606c) {
            f1.D(this.f8607d, obj, obj2);
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d1
    public void b(Object obj) {
        this.f8605b.j(obj);
        this.f8607d.f(obj);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d1
    public final boolean c(Object obj) {
        return this.f8607d.c(obj).e();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d1
    public boolean d(Object obj, Object obj2) {
        if (!this.f8605b.g(obj).equals(this.f8605b.g(obj2))) {
            return false;
        }
        if (this.f8606c) {
            return this.f8607d.c(obj).equals(this.f8607d.c(obj2));
        }
        return true;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d1
    public int e(Object obj) {
        int j10 = j(this.f8605b, obj) + 0;
        if (this.f8606c) {
            return j10 + this.f8607d.c(obj).b();
        }
        return j10;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d1
    public int f(Object obj) {
        int hashCode = this.f8605b.g(obj).hashCode();
        if (this.f8606c) {
            return (hashCode * 53) + this.f8607d.c(obj).hashCode();
        }
        return hashCode;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d1
    public void g(Object obj, byte[] bArr, int i10, int i11, e.a aVar) {
        x xVar = (x) obj;
        if (xVar.unknownFields == k1.c()) {
            xVar.unknownFields = k1.k();
        }
        android.support.v4.media.session.b.a(obj);
        throw null;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d1
    public void h(Object obj, q1 q1Var) {
        Iterator f10 = this.f8607d.c(obj).f();
        if (!f10.hasNext()) {
            n(this.f8605b, obj, q1Var);
        } else {
            android.support.v4.media.session.b.a(((Map.Entry) f10.next()).getKey());
            throw null;
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d1
    public void i(Object obj, c1 c1Var, p pVar) {
        k(this.f8605b, this.f8607d, obj, c1Var, pVar);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d1
    public Object newInstance() {
        o0 o0Var = this.f8604a;
        if (o0Var instanceof x) {
            return ((x) o0Var).J();
        }
        return o0Var.c().s();
    }
}
