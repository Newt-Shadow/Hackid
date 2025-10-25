package oe;

import af.a1;
import af.e;
import af.f;
import af.g;
import af.p0;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import kotlin.KotlinVersion;
import kotlin.jvm.internal.f0;
import kotlin.jvm.internal.m;
import ne.a0;
import ne.b0;
import ne.q;
import ne.s;
import ne.t;
import ne.w;
import ne.z;
import od.i;
import org.apache.tika.metadata.HttpHeaders;
import rd.l;
import rd.y;
import yc.h0;
import yc.k;
import yc.o;
import yc.p;
/* loaded from: classes2.dex */
public abstract class d {

    /* renamed from: a */
    public static final byte[] f27582a;

    /* renamed from: b */
    public static final s f27583b = s.f26777b.g(new String[0]);

    /* renamed from: c */
    public static final b0 f27584c;

    /* renamed from: d */
    public static final z f27585d;

    /* renamed from: e */
    private static final p0 f27586e;

    /* renamed from: f */
    public static final TimeZone f27587f;

    /* renamed from: g */
    private static final l f27588g;

    /* renamed from: h */
    public static final boolean f27589h;

    /* renamed from: i */
    public static final String f27590i;

    static {
        String s02;
        String t02;
        byte[] bArr = new byte[0];
        f27582a = bArr;
        f27584c = b0.b.c(b0.f26599b, bArr, null, 1, null);
        f27585d = z.a.b(z.f26880a, bArr, null, 0, 0, 7, null);
        p0.a aVar = p0.f431d;
        g.a aVar2 = g.f387d;
        f27586e = aVar.d(aVar2.a("efbbbf"), aVar2.a("feff"), aVar2.a("fffe"), aVar2.a("0000ffff"), aVar2.a("ffff0000"));
        TimeZone timeZone = TimeZone.getTimeZone("GMT");
        m.b(timeZone);
        f27587f = timeZone;
        f27588g = new l("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");
        f27589h = false;
        String name = w.class.getName();
        m.d(name, "OkHttpClient::class.java.name");
        s02 = rd.b0.s0(name, "okhttp3.");
        t02 = rd.b0.t0(s02, "Client");
        f27590i = t02;
    }

    public static final int A(String str, int i10, int i11) {
        boolean z10;
        boolean z11;
        boolean z12;
        m.e(str, "<this>");
        int i12 = i11 - 1;
        if (i10 <= i12) {
            while (true) {
                int i13 = i12 - 1;
                char charAt = str.charAt(i12);
                boolean z13 = false;
                if (charAt == '\t' || charAt == '\n') {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (z10 || charAt == '\f') {
                    z11 = true;
                } else {
                    z11 = false;
                }
                if (z11 || charAt == '\r') {
                    z12 = true;
                } else {
                    z12 = false;
                }
                if (z12 || charAt == ' ') {
                    z13 = true;
                }
                if (z13) {
                    if (i12 == i10) {
                        break;
                    }
                    i12 = i13;
                } else {
                    return i12 + 1;
                }
            }
        }
        return i10;
    }

    public static /* synthetic */ int B(String str, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = str.length();
        }
        return A(str, i10, i11);
    }

    public static final int C(String str, int i10) {
        m.e(str, "<this>");
        int length = str.length();
        while (i10 < length) {
            int i11 = i10 + 1;
            char charAt = str.charAt(i10);
            if (charAt != ' ' && charAt != '\t') {
                return i10;
            }
            i10 = i11;
        }
        return str.length();
    }

    public static final String[] D(String[] strArr, String[] other, Comparator comparator) {
        m.e(strArr, "<this>");
        m.e(other, "other");
        m.e(comparator, "comparator");
        ArrayList arrayList = new ArrayList();
        int length = strArr.length;
        int i10 = 0;
        while (i10 < length) {
            String str = strArr[i10];
            i10++;
            int length2 = other.length;
            int i11 = 0;
            while (true) {
                if (i11 < length2) {
                    String str2 = other[i11];
                    i11++;
                    if (comparator.compare(str, str2) == 0) {
                        arrayList.add(str);
                        break;
                    }
                }
            }
        }
        Object[] array = arrayList.toArray(new String[0]);
        if (array != null) {
            return (String[]) array;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
    }

    public static final boolean E(Socket socket, f source) {
        m.e(socket, "<this>");
        m.e(source, "source");
        try {
            int soTimeout = socket.getSoTimeout();
            try {
                socket.setSoTimeout(1);
                boolean z10 = !source.N();
                socket.setSoTimeout(soTimeout);
                return z10;
            } catch (Throwable th) {
                socket.setSoTimeout(soTimeout);
                throw th;
            }
        } catch (SocketTimeoutException unused) {
            return true;
        } catch (IOException unused2) {
            return false;
        }
    }

    public static final boolean F(String name) {
        boolean x10;
        boolean x11;
        boolean x12;
        boolean x13;
        m.e(name, "name");
        x10 = y.x(name, "Authorization", true);
        if (!x10) {
            x11 = y.x(name, "Cookie", true);
            if (!x11) {
                x12 = y.x(name, "Proxy-Authorization", true);
                if (!x12) {
                    x13 = y.x(name, "Set-Cookie", true);
                    if (x13) {
                        return true;
                    }
                    return false;
                }
                return true;
            }
            return true;
        }
        return true;
    }

    public static final int G(char c10) {
        boolean z10 = true;
        if ('0' <= c10 && c10 < ':') {
            return c10 - '0';
        }
        char c11 = 'a';
        if (!('a' <= c10 && c10 < 'g')) {
            c11 = 'A';
            if ('A' > c10 || c10 >= 'G') {
                z10 = false;
            }
            if (!z10) {
                return -1;
            }
        }
        return (c10 - c11) + 10;
    }

    public static final Charset H(f fVar, Charset charset) {
        m.e(fVar, "<this>");
        m.e(charset, "default");
        int R0 = fVar.R0(f27586e);
        if (R0 != -1) {
            if (R0 != 0) {
                if (R0 != 1) {
                    if (R0 != 2) {
                        if (R0 != 3) {
                            if (R0 == 4) {
                                return rd.d.f29088a.b();
                            }
                            throw new AssertionError();
                        }
                        return rd.d.f29088a.a();
                    }
                    Charset UTF_16LE = StandardCharsets.UTF_16LE;
                    m.d(UTF_16LE, "UTF_16LE");
                    return UTF_16LE;
                }
                Charset UTF_16BE = StandardCharsets.UTF_16BE;
                m.d(UTF_16BE, "UTF_16BE");
                return UTF_16BE;
            }
            Charset UTF_8 = StandardCharsets.UTF_8;
            m.d(UTF_8, "UTF_8");
            return UTF_8;
        }
        return charset;
    }

    public static final int I(f fVar) {
        m.e(fVar, "<this>");
        return d(fVar.readByte(), KotlinVersion.MAX_COMPONENT_VALUE) | (d(fVar.readByte(), KotlinVersion.MAX_COMPONENT_VALUE) << 16) | (d(fVar.readByte(), KotlinVersion.MAX_COMPONENT_VALUE) << 8);
    }

    public static final int J(af.d dVar, byte b10) {
        m.e(dVar, "<this>");
        int i10 = 0;
        while (!dVar.N() && dVar.k(0L) == b10) {
            i10++;
            dVar.readByte();
        }
        return i10;
    }

    public static final boolean K(a1 a1Var, int i10, TimeUnit timeUnit) {
        long j10;
        m.e(a1Var, "<this>");
        m.e(timeUnit, "timeUnit");
        long nanoTime = System.nanoTime();
        if (a1Var.n().e()) {
            j10 = a1Var.n().c() - nanoTime;
        } else {
            j10 = Long.MAX_VALUE;
        }
        a1Var.n().d(Math.min(j10, timeUnit.toNanos(i10)) + nanoTime);
        try {
            af.d dVar = new af.d();
            while (a1Var.L0(dVar, 8192L) != -1) {
                dVar.a();
            }
            if (j10 == Long.MAX_VALUE) {
                a1Var.n().a();
            } else {
                a1Var.n().d(nanoTime + j10);
            }
            return true;
        } catch (InterruptedIOException unused) {
            if (j10 == Long.MAX_VALUE) {
                a1Var.n().a();
            } else {
                a1Var.n().d(nanoTime + j10);
            }
            return false;
        } catch (Throwable th) {
            if (j10 == Long.MAX_VALUE) {
                a1Var.n().a();
            } else {
                a1Var.n().d(nanoTime + j10);
            }
            throw th;
        }
    }

    public static final ThreadFactory L(final String name, final boolean z10) {
        m.e(name, "name");
        return new ThreadFactory() { // from class: oe.b
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                Thread M;
                M = d.M(name, z10, runnable);
                return M;
            }
        };
    }

    public static final Thread M(String name, boolean z10, Runnable runnable) {
        m.e(name, "$name");
        Thread thread = new Thread(runnable, name);
        thread.setDaemon(z10);
        return thread;
    }

    public static final List N(s sVar) {
        od.c k10;
        int r10;
        m.e(sVar, "<this>");
        k10 = i.k(0, sVar.size());
        r10 = p.r(k10, 10);
        ArrayList arrayList = new ArrayList(r10);
        Iterator it = k10.iterator();
        while (it.hasNext()) {
            int b10 = ((yc.b0) it).b();
            arrayList.add(new ve.c(sVar.i(b10), sVar.m(b10)));
        }
        return arrayList;
    }

    public static final s O(List list) {
        m.e(list, "<this>");
        s.a aVar = new s.a();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ve.c cVar = (ve.c) it.next();
            aVar.c(cVar.a().H(), cVar.b().H());
        }
        return aVar.d();
    }

    public static final String P(t tVar, boolean z10) {
        boolean N;
        String h10;
        m.e(tVar, "<this>");
        N = rd.b0.N(tVar.h(), ":", false, 2, null);
        if (N) {
            h10 = '[' + tVar.h() + ']';
        } else {
            h10 = tVar.h();
        }
        if (z10 || tVar.l() != t.f26780k.c(tVar.p())) {
            return h10 + ':' + tVar.l();
        }
        return h10;
    }

    public static /* synthetic */ String Q(t tVar, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        return P(tVar, z10);
    }

    public static final List R(List list) {
        List m02;
        m.e(list, "<this>");
        m02 = yc.w.m0(list);
        List unmodifiableList = Collections.unmodifiableList(m02);
        m.d(unmodifiableList, "unmodifiableList(toMutableList())");
        return unmodifiableList;
    }

    public static final Map S(Map map) {
        Map e10;
        m.e(map, "<this>");
        if (map.isEmpty()) {
            e10 = h0.e();
            return e10;
        }
        Map unmodifiableMap = Collections.unmodifiableMap(new LinkedHashMap(map));
        m.d(unmodifiableMap, "{\n    Collections.unmodi…(LinkedHashMap(this))\n  }");
        return unmodifiableMap;
    }

    public static final long T(String str, long j10) {
        m.e(str, "<this>");
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException unused) {
            return j10;
        }
    }

    public static final int U(String str, int i10) {
        Long valueOf;
        if (str == null) {
            valueOf = null;
        } else {
            try {
                valueOf = Long.valueOf(Long.parseLong(str));
            } catch (NumberFormatException unused) {
                return i10;
            }
        }
        if (valueOf == null) {
            return i10;
        }
        long longValue = valueOf.longValue();
        if (longValue > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        if (longValue < 0) {
            return 0;
        }
        return (int) longValue;
    }

    public static final String V(String str, int i10, int i11) {
        m.e(str, "<this>");
        int y10 = y(str, i10, i11);
        String substring = str.substring(y10, A(str, y10, i11));
        m.d(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        return substring;
    }

    public static /* synthetic */ String W(String str, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = str.length();
        }
        return V(str, i10, i11);
    }

    public static final Throwable X(Exception exc, List suppressed) {
        m.e(exc, "<this>");
        m.e(suppressed, "suppressed");
        if (suppressed.size() > 1) {
            System.out.println(suppressed);
        }
        Iterator it = suppressed.iterator();
        while (it.hasNext()) {
            xc.b.a(exc, (Exception) it.next());
        }
        return exc;
    }

    public static final void Y(e eVar, int i10) {
        m.e(eVar, "<this>");
        eVar.O((i10 >>> 16) & KotlinVersion.MAX_COMPONENT_VALUE);
        eVar.O((i10 >>> 8) & KotlinVersion.MAX_COMPONENT_VALUE);
        eVar.O(i10 & KotlinVersion.MAX_COMPONENT_VALUE);
    }

    public static final void c(List list, Object obj) {
        m.e(list, "<this>");
        if (!list.contains(obj)) {
            list.add(obj);
        }
    }

    public static final int d(byte b10, int i10) {
        return b10 & i10;
    }

    public static final int e(short s10, int i10) {
        return s10 & i10;
    }

    public static final long f(int i10, long j10) {
        return i10 & j10;
    }

    public static final q.c g(final q qVar) {
        m.e(qVar, "<this>");
        return new q.c() { // from class: oe.c
            @Override // ne.q.c
            public final q a(ne.e eVar) {
                q h10;
                h10 = d.h(q.this, eVar);
                return h10;
            }
        };
    }

    public static final q h(q this_asFactory, ne.e it) {
        m.e(this_asFactory, "$this_asFactory");
        m.e(it, "it");
        return this_asFactory;
    }

    public static final boolean i(String str) {
        m.e(str, "<this>");
        return f27588g.d(str);
    }

    public static final boolean j(t tVar, t other) {
        m.e(tVar, "<this>");
        m.e(other, "other");
        if (m.a(tVar.h(), other.h()) && tVar.l() == other.l() && m.a(tVar.p(), other.p())) {
            return true;
        }
        return false;
    }

    public static final void k(long j10, long j11, long j12) {
        if ((j11 | j12) >= 0 && j11 <= j10 && j10 - j11 >= j12) {
            return;
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public static final void l(Closeable closeable) {
        m.e(closeable, "<this>");
        try {
            closeable.close();
        } catch (RuntimeException e10) {
            throw e10;
        } catch (Exception unused) {
        }
    }

    public static final void m(Socket socket) {
        m.e(socket, "<this>");
        try {
            socket.close();
        } catch (AssertionError e10) {
            throw e10;
        } catch (RuntimeException e11) {
            if (m.a(e11.getMessage(), "bio == null")) {
                return;
            }
            throw e11;
        } catch (Exception unused) {
        }
    }

    public static final String[] n(String[] strArr, String value) {
        int z10;
        m.e(strArr, "<this>");
        m.e(value, "value");
        Object[] copyOf = Arrays.copyOf(strArr, strArr.length + 1);
        m.d(copyOf, "copyOf(this, newSize)");
        String[] strArr2 = (String[]) copyOf;
        z10 = k.z(strArr2);
        strArr2[z10] = value;
        return strArr2;
    }

    public static final int o(String str, char c10, int i10, int i11) {
        m.e(str, "<this>");
        while (i10 < i11) {
            int i12 = i10 + 1;
            if (str.charAt(i10) == c10) {
                return i10;
            }
            i10 = i12;
        }
        return i11;
    }

    public static final int p(String str, String delimiters, int i10, int i11) {
        boolean M;
        m.e(str, "<this>");
        m.e(delimiters, "delimiters");
        while (i10 < i11) {
            int i12 = i10 + 1;
            M = rd.b0.M(delimiters, str.charAt(i10), false, 2, null);
            if (M) {
                return i10;
            }
            i10 = i12;
        }
        return i11;
    }

    public static /* synthetic */ int q(String str, char c10, int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = str.length();
        }
        return o(str, c10, i10, i11);
    }

    public static final boolean r(a1 a1Var, int i10, TimeUnit timeUnit) {
        m.e(a1Var, "<this>");
        m.e(timeUnit, "timeUnit");
        try {
            return K(a1Var, i10, timeUnit);
        } catch (IOException unused) {
            return false;
        }
    }

    public static final String s(String format, Object... args) {
        m.e(format, "format");
        m.e(args, "args");
        f0 f0Var = f0.f24982a;
        Locale locale = Locale.US;
        Object[] copyOf = Arrays.copyOf(args, args.length);
        String format2 = String.format(locale, format, Arrays.copyOf(copyOf, copyOf.length));
        m.d(format2, "format(locale, format, *args)");
        return format2;
    }

    public static final boolean t(String[] strArr, String[] strArr2, Comparator comparator) {
        boolean z10;
        boolean z11;
        m.e(strArr, "<this>");
        m.e(comparator, "comparator");
        if (strArr.length == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10 && strArr2 != null) {
            if (strArr2.length == 0) {
                z11 = true;
            } else {
                z11 = false;
            }
            if (!z11) {
                int length = strArr.length;
                int i10 = 0;
                while (i10 < length) {
                    String str = strArr[i10];
                    i10++;
                    Iterator a10 = kotlin.jvm.internal.c.a(strArr2);
                    while (a10.hasNext()) {
                        if (comparator.compare(str, (String) a10.next()) == 0) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    public static final long u(a0 a0Var) {
        m.e(a0Var, "<this>");
        String g10 = a0Var.q().g(HttpHeaders.CONTENT_LENGTH);
        if (g10 == null) {
            return -1L;
        }
        return T(g10, -1L);
    }

    public static final List v(Object... elements) {
        List k10;
        m.e(elements, "elements");
        Object[] objArr = (Object[]) elements.clone();
        k10 = o.k(Arrays.copyOf(objArr, objArr.length));
        List unmodifiableList = Collections.unmodifiableList(k10);
        m.d(unmodifiableList, "unmodifiableList(listOf(*elements.clone()))");
        return unmodifiableList;
    }

    public static final int w(String[] strArr, String value, Comparator comparator) {
        boolean z10;
        m.e(strArr, "<this>");
        m.e(value, "value");
        m.e(comparator, "comparator");
        int length = strArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (comparator.compare(strArr[i10], value) == 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (z10) {
                return i10;
            }
        }
        return -1;
    }

    public static final int x(String str) {
        m.e(str, "<this>");
        int length = str.length();
        int i10 = 0;
        while (i10 < length) {
            int i11 = i10 + 1;
            char charAt = str.charAt(i10);
            if (m.f(charAt, 31) > 0 && m.f(charAt, 127) < 0) {
                i10 = i11;
            } else {
                return i10;
            }
        }
        return -1;
    }

    public static final int y(String str, int i10, int i11) {
        boolean z10;
        boolean z11;
        boolean z12;
        m.e(str, "<this>");
        while (i10 < i11) {
            int i12 = i10 + 1;
            char charAt = str.charAt(i10);
            boolean z13 = false;
            if (charAt == '\t' || charAt == '\n') {
                z10 = true;
            } else {
                z10 = false;
            }
            if (z10 || charAt == '\f') {
                z11 = true;
            } else {
                z11 = false;
            }
            if (z11 || charAt == '\r') {
                z12 = true;
            } else {
                z12 = false;
            }
            if (z12 || charAt == ' ') {
                z13 = true;
            }
            if (z13) {
                i10 = i12;
            } else {
                return i10;
            }
        }
        return i11;
    }

    public static /* synthetic */ int z(String str, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = str.length();
        }
        return y(str, i10, i11);
    }
}
