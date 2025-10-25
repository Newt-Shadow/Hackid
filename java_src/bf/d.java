package bf;

import af.g;
import af.s0;
import java.util.ArrayList;
import kotlin.jvm.internal.m;
import yc.t;
import yc.w;
/* loaded from: classes2.dex */
public abstract class d {

    /* renamed from: a  reason: collision with root package name */
    private static final af.g f4746a;

    /* renamed from: b  reason: collision with root package name */
    private static final af.g f4747b;

    /* renamed from: c  reason: collision with root package name */
    private static final af.g f4748c;

    /* renamed from: d  reason: collision with root package name */
    private static final af.g f4749d;

    /* renamed from: e  reason: collision with root package name */
    private static final af.g f4750e;

    static {
        g.a aVar = af.g.f387d;
        f4746a = aVar.c("/");
        f4747b = aVar.c("\\");
        f4748c = aVar.c("/\\");
        f4749d = aVar.c(".");
        f4750e = aVar.c("..");
    }

    public static final s0 j(s0 s0Var, s0 child, boolean z10) {
        m.e(s0Var, "<this>");
        m.e(child, "child");
        if (!child.j() && child.u() == null) {
            af.g m10 = m(s0Var);
            if (m10 == null && (m10 = m(child)) == null) {
                m10 = s(s0.f444c);
            }
            af.d dVar = new af.d();
            dVar.s0(s0Var.b());
            if (dVar.k0() > 0) {
                dVar.s0(m10);
            }
            dVar.s0(child.b());
            return q(dVar, z10);
        }
        return child;
    }

    public static final s0 k(String str, boolean z10) {
        m.e(str, "<this>");
        return q(new af.d().g0(str), z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int l(s0 s0Var) {
        int x10 = af.g.x(s0Var.b(), f4746a, 0, 2, null);
        if (x10 != -1) {
            return x10;
        }
        return af.g.x(s0Var.b(), f4747b, 0, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final af.g m(s0 s0Var) {
        af.g b10 = s0Var.b();
        af.g gVar = f4746a;
        if (af.g.s(b10, gVar, 0, 2, null) == -1) {
            af.g b11 = s0Var.b();
            af.g gVar2 = f4747b;
            if (af.g.s(b11, gVar2, 0, 2, null) == -1) {
                return null;
            }
            return gVar2;
        }
        return gVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean n(s0 s0Var) {
        if (!s0Var.b().i(f4750e) || (s0Var.b().size() != 2 && !s0Var.b().y(s0Var.b().size() - 3, f4746a, 0, 1) && !s0Var.b().y(s0Var.b().size() - 3, f4747b, 0, 1))) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int o(s0 s0Var) {
        boolean z10;
        if (s0Var.b().size() == 0) {
            return -1;
        }
        boolean z11 = false;
        if (s0Var.b().j(0) == 47) {
            return 1;
        }
        if (s0Var.b().j(0) == 92) {
            if (s0Var.b().size() <= 2 || s0Var.b().j(1) != 92) {
                return 1;
            }
            int q10 = s0Var.b().q(f4747b, 2);
            if (q10 == -1) {
                return s0Var.b().size();
            }
            return q10;
        } else if (s0Var.b().size() <= 2 || s0Var.b().j(1) != 58 || s0Var.b().j(2) != 92) {
            return -1;
        } else {
            char j10 = (char) s0Var.b().j(0);
            if ('a' <= j10 && j10 < '{') {
                z10 = true;
            } else {
                z10 = false;
            }
            if (!z10) {
                if ('A' <= j10 && j10 < '[') {
                    z11 = true;
                }
                if (!z11) {
                    return -1;
                }
                return 3;
            }
            return 3;
        }
    }

    private static final boolean p(af.d dVar, af.g gVar) {
        boolean z10;
        boolean z11;
        if (!m.a(gVar, f4747b) || dVar.k0() < 2 || dVar.k(1L) != 58) {
            return false;
        }
        char k10 = (char) dVar.k(0L);
        if ('a' <= k10 && k10 < '{') {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            if ('A' <= k10 && k10 < '[') {
                z11 = true;
            } else {
                z11 = false;
            }
            if (!z11) {
                return false;
            }
        }
        return true;
    }

    public static final s0 q(af.d dVar, boolean z10) {
        af.g gVar;
        boolean z11;
        boolean z12;
        af.g D;
        Object Z;
        m.e(dVar, "<this>");
        af.d dVar2 = new af.d();
        af.g gVar2 = null;
        int i10 = 0;
        while (true) {
            if (!dVar.w(0L, f4746a)) {
                gVar = f4747b;
                if (!dVar.w(0L, gVar)) {
                    break;
                }
            }
            byte readByte = dVar.readByte();
            if (gVar2 == null) {
                gVar2 = r(readByte);
            }
            i10++;
        }
        if (i10 >= 2 && m.a(gVar2, gVar)) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (z11) {
            m.b(gVar2);
            dVar2.s0(gVar2);
            dVar2.s0(gVar2);
        } else if (i10 > 0) {
            m.b(gVar2);
            dVar2.s0(gVar2);
        } else {
            long u10 = dVar.u(f4748c);
            if (gVar2 == null) {
                if (u10 == -1) {
                    gVar2 = s(s0.f444c);
                } else {
                    gVar2 = r(dVar.k(u10));
                }
            }
            if (p(dVar, gVar2)) {
                if (u10 == 2) {
                    dVar2.c0(dVar, 3L);
                } else {
                    dVar2.c0(dVar, 2L);
                }
            }
        }
        if (dVar2.k0() > 0) {
            z12 = true;
        } else {
            z12 = false;
        }
        ArrayList arrayList = new ArrayList();
        while (!dVar.N()) {
            long u11 = dVar.u(f4748c);
            if (u11 == -1) {
                D = dVar.E();
            } else {
                D = dVar.D(u11);
                dVar.readByte();
            }
            af.g gVar3 = f4750e;
            if (m.a(D, gVar3)) {
                if (!z12 || !arrayList.isEmpty()) {
                    if (z10) {
                        if (!z12) {
                            if (!arrayList.isEmpty()) {
                                Z = w.Z(arrayList);
                                if (m.a(Z, gVar3)) {
                                }
                            }
                        }
                        if (!z11 || arrayList.size() != 1) {
                            t.E(arrayList);
                        }
                    }
                    arrayList.add(D);
                }
            } else if (!m.a(D, f4749d) && !m.a(D, af.g.f388e)) {
                arrayList.add(D);
            }
        }
        int size = arrayList.size();
        for (int i11 = 0; i11 < size; i11++) {
            if (i11 > 0) {
                dVar2.s0(gVar2);
            }
            dVar2.s0((af.g) arrayList.get(i11));
        }
        if (dVar2.k0() == 0) {
            dVar2.s0(f4749d);
        }
        return new s0(dVar2.E());
    }

    private static final af.g r(byte b10) {
        if (b10 != 47) {
            if (b10 == 92) {
                return f4747b;
            }
            throw new IllegalArgumentException("not a directory separator: " + ((int) b10));
        }
        return f4746a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final af.g s(String str) {
        if (m.a(str, "/")) {
            return f4746a;
        }
        if (m.a(str, "\\")) {
            return f4747b;
        }
        throw new IllegalArgumentException("not a directory separator: " + str);
    }
}
