package qe;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import ne.a0;
import ne.b0;
import ne.c;
import ne.q;
import ne.s;
import ne.u;
import ne.x;
import oe.d;
import org.apache.tika.metadata.HttpHeaders;
import qe.b;
import rd.y;
import se.e;
/* loaded from: classes2.dex */
public final class a implements u {

    /* renamed from: a  reason: collision with root package name */
    public static final C0293a f28759a = new C0293a(null);

    /* renamed from: qe.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0293a {
        private C0293a() {
        }

        public /* synthetic */ C0293a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final s c(s sVar, s sVar2) {
            boolean x10;
            boolean H;
            s.a aVar = new s.a();
            int size = sVar.size();
            int i10 = 0;
            int i11 = 0;
            while (i11 < size) {
                int i12 = i11 + 1;
                String i13 = sVar.i(i11);
                String m10 = sVar.m(i11);
                x10 = y.x("Warning", i13, true);
                if (x10) {
                    H = y.H(m10, "1", false, 2, null);
                    if (H) {
                        i11 = i12;
                    }
                }
                if (d(i13) || !e(i13) || sVar2.g(i13) == null) {
                    aVar.c(i13, m10);
                }
                i11 = i12;
            }
            int size2 = sVar2.size();
            while (i10 < size2) {
                int i14 = i10 + 1;
                String i15 = sVar2.i(i10);
                if (!d(i15) && e(i15)) {
                    aVar.c(i15, sVar2.m(i10));
                }
                i10 = i14;
            }
            return aVar.d();
        }

        private final boolean d(String str) {
            boolean x10;
            boolean x11;
            boolean x12;
            x10 = y.x(HttpHeaders.CONTENT_LENGTH, str, true);
            if (!x10) {
                x11 = y.x(HttpHeaders.CONTENT_ENCODING, str, true);
                if (!x11) {
                    x12 = y.x(HttpHeaders.CONTENT_TYPE, str, true);
                    if (x12) {
                        return true;
                    }
                    return false;
                }
                return true;
            }
            return true;
        }

        private final boolean e(String str) {
            boolean x10;
            boolean x11;
            boolean x12;
            boolean x13;
            boolean x14;
            boolean x15;
            boolean x16;
            boolean x17;
            x10 = y.x("Connection", str, true);
            if (!x10) {
                x11 = y.x("Keep-Alive", str, true);
                if (!x11) {
                    x12 = y.x("Proxy-Authenticate", str, true);
                    if (!x12) {
                        x13 = y.x("Proxy-Authorization", str, true);
                        if (!x13) {
                            x14 = y.x("TE", str, true);
                            if (!x14) {
                                x15 = y.x("Trailers", str, true);
                                if (!x15) {
                                    x16 = y.x("Transfer-Encoding", str, true);
                                    if (!x16) {
                                        x17 = y.x("Upgrade", str, true);
                                        if (!x17) {
                                            return true;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final a0 f(a0 a0Var) {
            b0 a10;
            if (a0Var == null) {
                a10 = null;
            } else {
                a10 = a0Var.a();
            }
            if (a10 != null) {
                return a0Var.w().b(null).c();
            }
            return a0Var;
        }
    }

    public a(c cVar) {
    }

    @Override // ne.u
    public a0 a(u.a chain) {
        e eVar;
        q m10;
        m.e(chain, "chain");
        ne.e call = chain.call();
        b b10 = new b.C0294b(System.currentTimeMillis(), chain.b(), null).b();
        ne.y b11 = b10.b();
        a0 a10 = b10.a();
        if (call instanceof e) {
            eVar = (e) call;
        } else {
            eVar = null;
        }
        if (eVar == null) {
            m10 = null;
        } else {
            m10 = eVar.m();
        }
        if (m10 == null) {
            m10 = q.f26769b;
        }
        if (b11 == null && a10 == null) {
            a0 c10 = new a0.a().s(chain.b()).q(x.HTTP_1_1).g(504).n("Unsatisfiable Request (only-if-cached)").b(d.f27584c).t(-1L).r(System.currentTimeMillis()).c();
            m10.z(call, c10);
            return c10;
        } else if (b11 == null) {
            m.b(a10);
            a0 c11 = a10.w().d(f28759a.f(a10)).c();
            m10.b(call, c11);
            return c11;
        } else {
            if (a10 != null) {
                m10.a(call, a10);
            }
            a0 a11 = chain.a(b11);
            if (a10 != null) {
                boolean z10 = false;
                if (a11 != null && a11.f() == 304) {
                    z10 = true;
                }
                if (!z10) {
                    b0 a12 = a10.a();
                    if (a12 != null) {
                        d.l(a12);
                    }
                } else {
                    a0.a w10 = a10.w();
                    C0293a c0293a = f28759a;
                    w10.l(c0293a.c(a10.q(), a11.q())).t(a11.P()).r(a11.E()).d(c0293a.f(a10)).o(c0293a.f(a11)).c();
                    b0 a13 = a11.a();
                    m.b(a13);
                    a13.close();
                    m.b(null);
                    throw null;
                }
            }
            m.b(a11);
            a0.a w11 = a11.w();
            C0293a c0293a2 = f28759a;
            return w11.d(c0293a2.f(a10)).o(c0293a2.f(a11)).c();
        }
    }
}
