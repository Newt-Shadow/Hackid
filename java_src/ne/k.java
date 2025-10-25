package ne;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.Objects;
import javax.net.ssl.SSLSocket;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public final class k {

    /* renamed from: e  reason: collision with root package name */
    public static final b f26725e = new b(null);

    /* renamed from: f  reason: collision with root package name */
    private static final h[] f26726f;

    /* renamed from: g  reason: collision with root package name */
    private static final h[] f26727g;

    /* renamed from: h  reason: collision with root package name */
    public static final k f26728h;

    /* renamed from: i  reason: collision with root package name */
    public static final k f26729i;

    /* renamed from: j  reason: collision with root package name */
    public static final k f26730j;

    /* renamed from: k  reason: collision with root package name */
    public static final k f26731k;

    /* renamed from: a  reason: collision with root package name */
    private final boolean f26732a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f26733b;

    /* renamed from: c  reason: collision with root package name */
    private final String[] f26734c;

    /* renamed from: d  reason: collision with root package name */
    private final String[] f26735d;

    /* loaded from: classes2.dex */
    public static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        h hVar = h.f26696o1;
        h hVar2 = h.f26699p1;
        h hVar3 = h.f26702q1;
        h hVar4 = h.f26654a1;
        h hVar5 = h.f26666e1;
        h hVar6 = h.f26657b1;
        h hVar7 = h.f26669f1;
        h hVar8 = h.f26687l1;
        h hVar9 = h.f26684k1;
        h[] hVarArr = {hVar, hVar2, hVar3, hVar4, hVar5, hVar6, hVar7, hVar8, hVar9};
        f26726f = hVarArr;
        h[] hVarArr2 = {hVar, hVar2, hVar3, hVar4, hVar5, hVar6, hVar7, hVar8, hVar9, h.L0, h.M0, h.f26680j0, h.f26683k0, h.H, h.L, h.f26685l};
        f26727g = hVarArr2;
        a c10 = new a(true).c((h[]) Arrays.copyOf(hVarArr, hVarArr.length));
        d0 d0Var = d0.TLS_1_3;
        d0 d0Var2 = d0.TLS_1_2;
        f26728h = c10.j(d0Var, d0Var2).h(true).a();
        f26729i = new a(true).c((h[]) Arrays.copyOf(hVarArr2, hVarArr2.length)).j(d0Var, d0Var2).h(true).a();
        f26730j = new a(true).c((h[]) Arrays.copyOf(hVarArr2, hVarArr2.length)).j(d0Var, d0Var2, d0.TLS_1_1, d0.TLS_1_0).h(true).a();
        f26731k = new a(false).a();
    }

    public k(boolean z10, boolean z11, String[] strArr, String[] strArr2) {
        this.f26732a = z10;
        this.f26733b = z11;
        this.f26734c = strArr;
        this.f26735d = strArr2;
    }

    private final k g(SSLSocket sSLSocket, boolean z10) {
        String[] cipherSuitesIntersection;
        String[] tlsVersionsIntersection;
        Comparator b10;
        if (this.f26734c != null) {
            String[] enabledCipherSuites = sSLSocket.getEnabledCipherSuites();
            kotlin.jvm.internal.m.d(enabledCipherSuites, "sslSocket.enabledCipherSuites");
            cipherSuitesIntersection = oe.d.D(enabledCipherSuites, this.f26734c, h.f26655b.c());
        } else {
            cipherSuitesIntersection = sSLSocket.getEnabledCipherSuites();
        }
        if (this.f26735d != null) {
            String[] enabledProtocols = sSLSocket.getEnabledProtocols();
            kotlin.jvm.internal.m.d(enabledProtocols, "sslSocket.enabledProtocols");
            String[] strArr = this.f26735d;
            b10 = zc.b.b();
            tlsVersionsIntersection = oe.d.D(enabledProtocols, strArr, b10);
        } else {
            tlsVersionsIntersection = sSLSocket.getEnabledProtocols();
        }
        String[] supportedCipherSuites = sSLSocket.getSupportedCipherSuites();
        kotlin.jvm.internal.m.d(supportedCipherSuites, "supportedCipherSuites");
        int w10 = oe.d.w(supportedCipherSuites, "TLS_FALLBACK_SCSV", h.f26655b.c());
        if (z10 && w10 != -1) {
            kotlin.jvm.internal.m.d(cipherSuitesIntersection, "cipherSuitesIntersection");
            String str = supportedCipherSuites[w10];
            kotlin.jvm.internal.m.d(str, "supportedCipherSuites[indexOfFallbackScsv]");
            cipherSuitesIntersection = oe.d.n(cipherSuitesIntersection, str);
        }
        a aVar = new a(this);
        kotlin.jvm.internal.m.d(cipherSuitesIntersection, "cipherSuitesIntersection");
        a b11 = aVar.b((String[]) Arrays.copyOf(cipherSuitesIntersection, cipherSuitesIntersection.length));
        kotlin.jvm.internal.m.d(tlsVersionsIntersection, "tlsVersionsIntersection");
        return b11.i((String[]) Arrays.copyOf(tlsVersionsIntersection, tlsVersionsIntersection.length)).a();
    }

    public final void c(SSLSocket sslSocket, boolean z10) {
        kotlin.jvm.internal.m.e(sslSocket, "sslSocket");
        k g10 = g(sslSocket, z10);
        if (g10.i() != null) {
            sslSocket.setEnabledProtocols(g10.f26735d);
        }
        if (g10.d() != null) {
            sslSocket.setEnabledCipherSuites(g10.f26734c);
        }
    }

    public final List d() {
        List k02;
        String[] strArr = this.f26734c;
        if (strArr == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            arrayList.add(h.f26655b.b(str));
        }
        k02 = yc.w.k0(arrayList);
        return k02;
    }

    public final boolean e(SSLSocket socket) {
        Comparator b10;
        kotlin.jvm.internal.m.e(socket, "socket");
        if (!this.f26732a) {
            return false;
        }
        String[] strArr = this.f26735d;
        if (strArr != null) {
            String[] enabledProtocols = socket.getEnabledProtocols();
            b10 = zc.b.b();
            if (!oe.d.t(strArr, enabledProtocols, b10)) {
                return false;
            }
        }
        String[] strArr2 = this.f26734c;
        if (strArr2 != null && !oe.d.t(strArr2, socket.getEnabledCipherSuites(), h.f26655b.c())) {
            return false;
        }
        return true;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof k)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        boolean z10 = this.f26732a;
        k kVar = (k) obj;
        if (z10 != kVar.f26732a) {
            return false;
        }
        if (z10 && (!Arrays.equals(this.f26734c, kVar.f26734c) || !Arrays.equals(this.f26735d, kVar.f26735d) || this.f26733b != kVar.f26733b)) {
            return false;
        }
        return true;
    }

    public final boolean f() {
        return this.f26732a;
    }

    public final boolean h() {
        return this.f26733b;
    }

    public int hashCode() {
        int hashCode;
        if (this.f26732a) {
            String[] strArr = this.f26734c;
            int i10 = 0;
            if (strArr == null) {
                hashCode = 0;
            } else {
                hashCode = Arrays.hashCode(strArr);
            }
            int i11 = (527 + hashCode) * 31;
            String[] strArr2 = this.f26735d;
            if (strArr2 != null) {
                i10 = Arrays.hashCode(strArr2);
            }
            return ((i11 + i10) * 31) + (!this.f26733b ? 1 : 0);
        }
        return 17;
    }

    public final List i() {
        List k02;
        String[] strArr = this.f26735d;
        if (strArr == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            arrayList.add(d0.f26635b.a(str));
        }
        k02 = yc.w.k0(arrayList);
        return k02;
    }

    public String toString() {
        if (!this.f26732a) {
            return "ConnectionSpec()";
        }
        return "ConnectionSpec(cipherSuites=" + ((Object) Objects.toString(d(), "[all enabled]")) + ", tlsVersions=" + ((Object) Objects.toString(i(), "[all enabled]")) + ", supportsTlsExtensions=" + this.f26733b + ')';
    }

    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private boolean f26736a;

        /* renamed from: b  reason: collision with root package name */
        private String[] f26737b;

        /* renamed from: c  reason: collision with root package name */
        private String[] f26738c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f26739d;

        public a(boolean z10) {
            this.f26736a = z10;
        }

        public final k a() {
            return new k(this.f26736a, this.f26739d, this.f26737b, this.f26738c);
        }

        public final a b(String... cipherSuites) {
            boolean z10;
            kotlin.jvm.internal.m.e(cipherSuites, "cipherSuites");
            if (d()) {
                if (cipherSuites.length == 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (!z10) {
                    e((String[]) cipherSuites.clone());
                    return this;
                }
                throw new IllegalArgumentException("At least one cipher suite is required".toString());
            }
            throw new IllegalArgumentException("no cipher suites for cleartext connections".toString());
        }

        public final a c(h... cipherSuites) {
            kotlin.jvm.internal.m.e(cipherSuites, "cipherSuites");
            if (d()) {
                ArrayList arrayList = new ArrayList(cipherSuites.length);
                for (h hVar : cipherSuites) {
                    arrayList.add(hVar.c());
                }
                Object[] array = arrayList.toArray(new String[0]);
                if (array != null) {
                    String[] strArr = (String[]) array;
                    return b((String[]) Arrays.copyOf(strArr, strArr.length));
                }
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            }
            throw new IllegalArgumentException("no cipher suites for cleartext connections".toString());
        }

        public final boolean d() {
            return this.f26736a;
        }

        public final void e(String[] strArr) {
            this.f26737b = strArr;
        }

        public final void f(boolean z10) {
            this.f26739d = z10;
        }

        public final void g(String[] strArr) {
            this.f26738c = strArr;
        }

        public final a h(boolean z10) {
            if (d()) {
                f(z10);
                return this;
            }
            throw new IllegalArgumentException("no TLS extensions for cleartext connections".toString());
        }

        public final a i(String... tlsVersions) {
            boolean z10;
            kotlin.jvm.internal.m.e(tlsVersions, "tlsVersions");
            if (d()) {
                if (tlsVersions.length == 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (!z10) {
                    g((String[]) tlsVersions.clone());
                    return this;
                }
                throw new IllegalArgumentException("At least one TLS version is required".toString());
            }
            throw new IllegalArgumentException("no TLS versions for cleartext connections".toString());
        }

        public final a j(d0... tlsVersions) {
            kotlin.jvm.internal.m.e(tlsVersions, "tlsVersions");
            if (d()) {
                ArrayList arrayList = new ArrayList(tlsVersions.length);
                for (d0 d0Var : tlsVersions) {
                    arrayList.add(d0Var.b());
                }
                Object[] array = arrayList.toArray(new String[0]);
                if (array != null) {
                    String[] strArr = (String[]) array;
                    return i((String[]) Arrays.copyOf(strArr, strArr.length));
                }
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            }
            throw new IllegalArgumentException("no TLS versions for cleartext connections".toString());
        }

        public a(k connectionSpec) {
            kotlin.jvm.internal.m.e(connectionSpec, "connectionSpec");
            this.f26736a = connectionSpec.f();
            this.f26737b = connectionSpec.f26734c;
            this.f26738c = connectionSpec.f26735d;
            this.f26739d = connectionSpec.h();
        }
    }
}
