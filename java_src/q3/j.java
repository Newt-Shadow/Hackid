package q3;

import android.util.SparseArray;
import b3.x1;
import java.util.ArrayList;
import java.util.List;
import q3.i0;
/* loaded from: classes.dex */
public final class j implements i0.c {

    /* renamed from: a  reason: collision with root package name */
    private final int f28160a;

    /* renamed from: b  reason: collision with root package name */
    private final List f28161b;

    public j(int i10) {
        this(i10, o6.q.D());
    }

    private d0 c(i0.b bVar) {
        return new d0(e(bVar));
    }

    private k0 d(i0.b bVar) {
        return new k0(e(bVar));
    }

    private List e(i0.b bVar) {
        boolean z10;
        String str;
        int i10;
        List list;
        if (f(32)) {
            return this.f28161b;
        }
        y4.e0 e0Var = new y4.e0(bVar.f28154d);
        List list2 = this.f28161b;
        while (e0Var.a() > 0) {
            int G = e0Var.G();
            int f10 = e0Var.f() + e0Var.G();
            if (G == 134) {
                list2 = new ArrayList();
                int G2 = e0Var.G() & 31;
                for (int i11 = 0; i11 < G2; i11++) {
                    String D = e0Var.D(3);
                    int G3 = e0Var.G();
                    boolean z11 = true;
                    if ((G3 & 128) != 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    if (z10) {
                        i10 = G3 & 63;
                        str = "application/cea-708";
                    } else {
                        str = "application/cea-608";
                        i10 = 1;
                    }
                    byte G4 = (byte) e0Var.G();
                    e0Var.U(1);
                    if (z10) {
                        if ((G4 & 64) == 0) {
                            z11 = false;
                        }
                        list = y4.e.b(z11);
                    } else {
                        list = null;
                    }
                    list2.add(new x1.b().g0(str).X(D).H(i10).V(list).G());
                }
            }
            e0Var.T(f10);
        }
        return list2;
    }

    private boolean f(int i10) {
        if ((i10 & this.f28160a) != 0) {
            return true;
        }
        return false;
    }

    @Override // q3.i0.c
    public i0 a(int i10, i0.b bVar) {
        if (i10 != 2) {
            if (i10 != 3 && i10 != 4) {
                if (i10 != 21) {
                    if (i10 != 27) {
                        if (i10 != 36) {
                            if (i10 != 89) {
                                if (i10 != 138) {
                                    if (i10 != 172) {
                                        if (i10 != 257) {
                                            if (i10 != 134) {
                                                if (i10 != 135) {
                                                    switch (i10) {
                                                        case 15:
                                                            if (f(2)) {
                                                                return null;
                                                            }
                                                            return new w(new i(false, bVar.f28152b));
                                                        case 16:
                                                            return new w(new o(d(bVar)));
                                                        case 17:
                                                            if (f(2)) {
                                                                return null;
                                                            }
                                                            return new w(new s(bVar.f28152b));
                                                        default:
                                                            switch (i10) {
                                                                case 128:
                                                                    break;
                                                                case 129:
                                                                    break;
                                                                case 130:
                                                                    if (!f(64)) {
                                                                        return null;
                                                                    }
                                                                    break;
                                                                default:
                                                                    return null;
                                                            }
                                                    }
                                                }
                                                return new w(new c(bVar.f28152b));
                                            } else if (f(16)) {
                                                return null;
                                            } else {
                                                return new c0(new v("application/x-scte35"));
                                            }
                                        }
                                        return new c0(new v("application/vnd.dvb.ait"));
                                    }
                                    return new w(new f(bVar.f28152b));
                                }
                                return new w(new k(bVar.f28152b));
                            }
                            return new w(new l(bVar.f28153c));
                        }
                        return new w(new q(c(bVar)));
                    } else if (f(4)) {
                        return null;
                    } else {
                        return new w(new p(c(bVar), f(1), f(8)));
                    }
                }
                return new w(new r());
            }
            return new w(new t(bVar.f28152b));
        }
        return new w(new n(d(bVar)));
    }

    @Override // q3.i0.c
    public SparseArray b() {
        return new SparseArray();
    }

    public j(int i10, List list) {
        this.f28160a = i10;
        this.f28161b = list;
    }
}
