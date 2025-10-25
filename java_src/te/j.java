package te;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.SocketTimeoutException;
import java.security.cert.CertificateException;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import ne.a0;
import ne.c0;
import ne.t;
import ne.u;
import ne.w;
import ne.y;
import ne.z;
import org.apache.tika.metadata.HttpHeaders;
import rd.l;
/* loaded from: classes2.dex */
public final class j implements u {

    /* renamed from: b  reason: collision with root package name */
    public static final a f30743b = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final w f30744a;

    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public j(w client) {
        m.e(client, "client");
        this.f30744a = client;
    }

    private final y b(a0 a0Var, String str) {
        String k10;
        t o10;
        boolean z10;
        z zVar = null;
        if (!this.f30744a.p() || (k10 = a0.k(a0Var, HttpHeaders.LOCATION, null, 2, null)) == null || (o10 = a0Var.H().i().o(k10)) == null) {
            return null;
        }
        if (!m.a(o10.p(), a0Var.H().i().p()) && !this.f30744a.q()) {
            return null;
        }
        y.a h10 = a0Var.H().h();
        if (f.a(str)) {
            int f10 = a0Var.f();
            f fVar = f.f30729a;
            if (!fVar.c(str) && f10 != 308 && f10 != 307) {
                z10 = false;
            } else {
                z10 = true;
            }
            if (fVar.b(str) && f10 != 308 && f10 != 307) {
                h10.f("GET", null);
            } else {
                if (z10) {
                    zVar = a0Var.H().a();
                }
                h10.f(str, zVar);
            }
            if (!z10) {
                h10.h("Transfer-Encoding");
                h10.h(HttpHeaders.CONTENT_LENGTH);
                h10.h(HttpHeaders.CONTENT_TYPE);
            }
        }
        if (!oe.d.j(a0Var.H().i(), o10)) {
            h10.h("Authorization");
        }
        return h10.n(o10).a();
    }

    private final y c(a0 a0Var, se.c cVar) {
        se.f h10;
        c0 z10;
        if (cVar == null || (h10 = cVar.h()) == null) {
            z10 = null;
        } else {
            z10 = h10.z();
        }
        int f10 = a0Var.f();
        String g10 = a0Var.H().g();
        if (f10 != 307 && f10 != 308) {
            if (f10 != 401) {
                if (f10 != 421) {
                    if (f10 != 503) {
                        if (f10 != 407) {
                            if (f10 != 408) {
                                switch (f10) {
                                    case 300:
                                    case 301:
                                    case 302:
                                    case 303:
                                        break;
                                    default:
                                        return null;
                                }
                            } else if (!this.f30744a.D()) {
                                return null;
                            } else {
                                z a10 = a0Var.H().a();
                                if (a10 != null && a10.d()) {
                                    return null;
                                }
                                a0 x10 = a0Var.x();
                                if ((x10 != null && x10.f() == 408) || g(a0Var, 0) > 0) {
                                    return null;
                                }
                                return a0Var.H();
                            }
                        } else {
                            m.b(z10);
                            if (z10.b().type() == Proxy.Type.HTTP) {
                                return this.f30744a.A().a(z10, a0Var);
                            }
                            throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
                        }
                    } else {
                        a0 x11 = a0Var.x();
                        if ((x11 != null && x11.f() == 503) || g(a0Var, Integer.MAX_VALUE) != 0) {
                            return null;
                        }
                        return a0Var.H();
                    }
                } else {
                    z a11 = a0Var.H().a();
                    if ((a11 != null && a11.d()) || cVar == null || !cVar.l()) {
                        return null;
                    }
                    cVar.h().x();
                    return a0Var.H();
                }
            } else {
                return this.f30744a.c().a(z10, a0Var);
            }
        }
        return b(a0Var, g10);
    }

    private final boolean d(IOException iOException, boolean z10) {
        if (iOException instanceof ProtocolException) {
            return false;
        }
        if (iOException instanceof InterruptedIOException) {
            if (!(iOException instanceof SocketTimeoutException) || z10) {
                return false;
            }
            return true;
        } else if (((iOException instanceof SSLHandshakeException) && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException)) {
            return false;
        } else {
            return true;
        }
    }

    private final boolean e(IOException iOException, se.e eVar, y yVar, boolean z10) {
        if (!this.f30744a.D()) {
            return false;
        }
        if ((z10 && f(iOException, yVar)) || !d(iOException, z10) || !eVar.v()) {
            return false;
        }
        return true;
    }

    private final boolean f(IOException iOException, y yVar) {
        z a10 = yVar.a();
        if ((a10 != null && a10.d()) || (iOException instanceof FileNotFoundException)) {
            return true;
        }
        return false;
    }

    private final int g(a0 a0Var, int i10) {
        String k10 = a0.k(a0Var, "Retry-After", null, 2, null);
        if (k10 == null) {
            return i10;
        }
        if (new l("\\d+").d(k10)) {
            Integer valueOf = Integer.valueOf(k10);
            m.d(valueOf, "valueOf(header)");
            return valueOf.intValue();
        }
        return Integer.MAX_VALUE;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0040, code lost:
        r7 = r0;
        r0 = r1.n();
        r6 = c(r7, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0049, code lost:
        if (r6 != null) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x004b, code lost:
        if (r0 == null) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0051, code lost:
        if (r0.m() == false) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0053, code lost:
        r1.x();
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0056, code lost:
        r1.j(false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0059, code lost:
        return r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x005a, code lost:
        r0 = r6.a();
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x005e, code lost:
        if (r0 == null) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0064, code lost:
        if (r0.d() == false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0066, code lost:
        r1.j(false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0069, code lost:
        return r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x006a, code lost:
        r0 = r7.a();
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x006e, code lost:
        if (r0 != null) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0071, code lost:
        oe.d.l(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0074, code lost:
        r8 = r8 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0078, code lost:
        if (r8 > 20) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x008e, code lost:
        throw new java.net.ProtocolException(kotlin.jvm.internal.m.l("Too many follow-up requests: ", java.lang.Integer.valueOf(r8)));
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0026, code lost:
        if (r7 == null) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0028, code lost:
        r0 = r0.w().p(r7.w().b(null).c()).c();
     */
    @Override // ne.u
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ne.a0 a(ne.u.a r11) {
        /*
            r10 = this;
            java.lang.String r0 = "chain"
            kotlin.jvm.internal.m.e(r11, r0)
            te.g r11 = (te.g) r11
            ne.y r0 = r11.i()
            se.e r1 = r11.e()
            java.util.List r2 = yc.m.h()
            r3 = 0
            r4 = 0
            r5 = 1
            r8 = r3
            r7 = r4
        L18:
            r6 = r5
        L19:
            r1.i(r0, r6)
            boolean r6 = r1.q()     // Catch: java.lang.Throwable -> Ld5
            if (r6 != 0) goto Lcd
            ne.a0 r0 = r11.a(r0)     // Catch: java.io.IOException -> L8f se.i -> La9 java.lang.Throwable -> Ld5
            if (r7 == 0) goto L40
            ne.a0$a r0 = r0.w()     // Catch: java.lang.Throwable -> Ld5
            ne.a0$a r6 = r7.w()     // Catch: java.lang.Throwable -> Ld5
            ne.a0$a r6 = r6.b(r4)     // Catch: java.lang.Throwable -> Ld5
            ne.a0 r6 = r6.c()     // Catch: java.lang.Throwable -> Ld5
            ne.a0$a r0 = r0.p(r6)     // Catch: java.lang.Throwable -> Ld5
            ne.a0 r0 = r0.c()     // Catch: java.lang.Throwable -> Ld5
        L40:
            r7 = r0
            se.c r0 = r1.n()     // Catch: java.lang.Throwable -> Ld5
            ne.y r6 = r10.c(r7, r0)     // Catch: java.lang.Throwable -> Ld5
            if (r6 != 0) goto L5a
            if (r0 == 0) goto L56
            boolean r11 = r0.m()     // Catch: java.lang.Throwable -> Ld5
            if (r11 == 0) goto L56
            r1.x()     // Catch: java.lang.Throwable -> Ld5
        L56:
            r1.j(r3)
            return r7
        L5a:
            ne.z r0 = r6.a()     // Catch: java.lang.Throwable -> Ld5
            if (r0 == 0) goto L6a
            boolean r0 = r0.d()     // Catch: java.lang.Throwable -> Ld5
            if (r0 == 0) goto L6a
            r1.j(r3)
            return r7
        L6a:
            ne.b0 r0 = r7.a()     // Catch: java.lang.Throwable -> Ld5
            if (r0 != 0) goto L71
            goto L74
        L71:
            oe.d.l(r0)     // Catch: java.lang.Throwable -> Ld5
        L74:
            int r8 = r8 + 1
            r0 = 20
            if (r8 > r0) goto L7f
            r1.j(r5)
            r0 = r6
            goto L18
        L7f:
            java.net.ProtocolException r11 = new java.net.ProtocolException     // Catch: java.lang.Throwable -> Ld5
            java.lang.String r0 = "Too many follow-up requests: "
            java.lang.Integer r2 = java.lang.Integer.valueOf(r8)     // Catch: java.lang.Throwable -> Ld5
            java.lang.String r0 = kotlin.jvm.internal.m.l(r0, r2)     // Catch: java.lang.Throwable -> Ld5
            r11.<init>(r0)     // Catch: java.lang.Throwable -> Ld5
            throw r11     // Catch: java.lang.Throwable -> Ld5
        L8f:
            r6 = move-exception
            boolean r9 = r6 instanceof ve.a     // Catch: java.lang.Throwable -> Ld5
            if (r9 != 0) goto L96
            r9 = r5
            goto L97
        L96:
            r9 = r3
        L97:
            boolean r9 = r10.e(r6, r1, r0, r9)     // Catch: java.lang.Throwable -> Ld5
            if (r9 == 0) goto La4
            java.util.Collection r2 = (java.util.Collection) r2     // Catch: java.lang.Throwable -> Ld5
            java.util.List r2 = yc.m.d0(r2, r6)     // Catch: java.lang.Throwable -> Ld5
            goto Lbe
        La4:
            java.lang.Throwable r11 = oe.d.X(r6, r2)     // Catch: java.lang.Throwable -> Ld5
            throw r11     // Catch: java.lang.Throwable -> Ld5
        La9:
            r6 = move-exception
            java.io.IOException r9 = r6.c()     // Catch: java.lang.Throwable -> Ld5
            boolean r9 = r10.e(r9, r1, r0, r3)     // Catch: java.lang.Throwable -> Ld5
            if (r9 == 0) goto Lc4
            java.util.Collection r2 = (java.util.Collection) r2     // Catch: java.lang.Throwable -> Ld5
            java.io.IOException r6 = r6.b()     // Catch: java.lang.Throwable -> Ld5
            java.util.List r2 = yc.m.d0(r2, r6)     // Catch: java.lang.Throwable -> Ld5
        Lbe:
            r1.j(r5)
            r6 = r3
            goto L19
        Lc4:
            java.io.IOException r11 = r6.b()     // Catch: java.lang.Throwable -> Ld5
            java.lang.Throwable r11 = oe.d.X(r11, r2)     // Catch: java.lang.Throwable -> Ld5
            throw r11     // Catch: java.lang.Throwable -> Ld5
        Lcd:
            java.io.IOException r11 = new java.io.IOException     // Catch: java.lang.Throwable -> Ld5
            java.lang.String r0 = "Canceled"
            r11.<init>(r0)     // Catch: java.lang.Throwable -> Ld5
            throw r11     // Catch: java.lang.Throwable -> Ld5
        Ld5:
            r11 = move-exception
            r1.j(r5)
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: te.j.a(ne.u$a):ne.a0");
    }
}
