package okhttp3.internal.publicsuffix;

import af.f;
import af.m0;
import af.p;
import gd.b;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.IDN;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.KotlinVersion;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import oe.d;
import qd.e;
import qd.l;
import rd.b0;
import we.j;
import xc.t;
import yc.n;
import yc.o;
import yc.w;
/* loaded from: classes2.dex */
public final class PublicSuffixDatabase {

    /* renamed from: e  reason: collision with root package name */
    public static final a f27628e = new a(null);

    /* renamed from: f  reason: collision with root package name */
    private static final byte[] f27629f = {42};

    /* renamed from: g  reason: collision with root package name */
    private static final List f27630g;

    /* renamed from: h  reason: collision with root package name */
    private static final PublicSuffixDatabase f27631h;

    /* renamed from: a  reason: collision with root package name */
    private final AtomicBoolean f27632a = new AtomicBoolean(false);

    /* renamed from: b  reason: collision with root package name */
    private final CountDownLatch f27633b = new CountDownLatch(1);

    /* renamed from: c  reason: collision with root package name */
    private byte[] f27634c;

    /* renamed from: d  reason: collision with root package name */
    private byte[] f27635d;

    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String b(byte[] bArr, byte[][] bArr2, int i10) {
            int i11;
            boolean z10;
            int d10;
            int d11;
            int length = bArr.length;
            int i12 = 0;
            while (i12 < length) {
                int i13 = (i12 + length) / 2;
                while (i13 > -1 && bArr[i13] != 10) {
                    i13--;
                }
                int i14 = i13 + 1;
                int i15 = 1;
                while (true) {
                    i11 = i14 + i15;
                    if (bArr[i11] == 10) {
                        break;
                    }
                    i15++;
                }
                int i16 = i11 - i14;
                int i17 = i10;
                boolean z11 = false;
                int i18 = 0;
                int i19 = 0;
                while (true) {
                    if (z11) {
                        d10 = 46;
                        z10 = false;
                    } else {
                        z10 = z11;
                        d10 = d.d(bArr2[i17][i18], KotlinVersion.MAX_COMPONENT_VALUE);
                    }
                    d11 = d10 - d.d(bArr[i14 + i19], KotlinVersion.MAX_COMPONENT_VALUE);
                    if (d11 != 0) {
                        break;
                    }
                    i19++;
                    i18++;
                    if (i19 == i16) {
                        break;
                    } else if (bArr2[i17].length == i18) {
                        if (i17 == bArr2.length - 1) {
                            break;
                        }
                        i17++;
                        i18 = -1;
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                }
                if (d11 >= 0) {
                    if (d11 <= 0) {
                        int i20 = i16 - i19;
                        int length2 = bArr2[i17].length - i18;
                        int length3 = bArr2.length;
                        for (int i21 = i17 + 1; i21 < length3; i21++) {
                            length2 += bArr2[i21].length;
                        }
                        if (length2 >= i20) {
                            if (length2 <= i20) {
                                Charset UTF_8 = StandardCharsets.UTF_8;
                                m.d(UTF_8, "UTF_8");
                                return new String(bArr, i14, i16, UTF_8);
                            }
                        }
                    }
                    i12 = i11 + 1;
                }
                length = i14 - 1;
            }
            return null;
        }

        public final PublicSuffixDatabase c() {
            return PublicSuffixDatabase.f27631h;
        }
    }

    static {
        List b10;
        b10 = n.b("*");
        f27630g = b10;
        f27631h = new PublicSuffixDatabase();
    }

    private final List b(List list) {
        boolean z10;
        List list2;
        String str;
        String str2;
        String str3;
        List y02;
        List y03;
        if (!this.f27632a.get() && this.f27632a.compareAndSet(false, true)) {
            e();
        } else {
            try {
                this.f27633b.await();
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        }
        if (this.f27634c != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            int size = list.size();
            byte[][] bArr = new byte[size];
            for (int i10 = 0; i10 < size; i10++) {
                Charset UTF_8 = StandardCharsets.UTF_8;
                m.d(UTF_8, "UTF_8");
                byte[] bytes = ((String) list.get(i10)).getBytes(UTF_8);
                m.d(bytes, "this as java.lang.String).getBytes(charset)");
                bArr[i10] = bytes;
            }
            int i11 = 0;
            while (true) {
                list2 = null;
                if (i11 < size) {
                    int i12 = i11 + 1;
                    a aVar = f27628e;
                    byte[] bArr2 = this.f27634c;
                    if (bArr2 == null) {
                        m.s("publicSuffixListBytes");
                        bArr2 = null;
                    }
                    String b10 = aVar.b(bArr2, bArr, i11);
                    if (b10 != null) {
                        str = b10;
                        break;
                    }
                    i11 = i12;
                } else {
                    str = null;
                    break;
                }
            }
            if (size > 1) {
                byte[][] bArr3 = (byte[][]) bArr.clone();
                int length = bArr3.length - 1;
                int i13 = 0;
                while (i13 < length) {
                    int i14 = i13 + 1;
                    bArr3[i13] = f27629f;
                    a aVar2 = f27628e;
                    byte[] bArr4 = this.f27634c;
                    if (bArr4 == null) {
                        m.s("publicSuffixListBytes");
                        bArr4 = null;
                    }
                    String b11 = aVar2.b(bArr4, bArr3, i13);
                    if (b11 != null) {
                        str2 = b11;
                        break;
                    }
                    i13 = i14;
                }
            }
            str2 = null;
            if (str2 != null) {
                int i15 = size - 1;
                int i16 = 0;
                while (i16 < i15) {
                    int i17 = i16 + 1;
                    a aVar3 = f27628e;
                    byte[] bArr5 = this.f27635d;
                    if (bArr5 == null) {
                        m.s("publicSuffixExceptionListBytes");
                        bArr5 = null;
                    }
                    str3 = aVar3.b(bArr5, bArr, i16);
                    if (str3 != null) {
                        break;
                    }
                    i16 = i17;
                }
            }
            str3 = null;
            if (str3 != null) {
                y03 = b0.y0(m.l("!", str3), new char[]{'.'}, false, 0, 6, null);
                return y03;
            } else if (str == null && str2 == null) {
                return f27630g;
            } else {
                if (str != null) {
                    y02 = b0.y0(str, new char[]{'.'}, false, 0, 6, null);
                } else {
                    y02 = null;
                }
                if (y02 == null) {
                    y02 = o.h();
                }
                if (str2 != null) {
                    list2 = b0.y0(str2, new char[]{'.'}, false, 0, 6, null);
                }
                if (list2 == null) {
                    list2 = o.h();
                }
                if (y02.size() <= list2.size()) {
                    return list2;
                }
                return y02;
            }
        }
        throw new IllegalStateException("Unable to load publicsuffixes.gz resource from the classpath.".toString());
    }

    private final void d() {
        InputStream resourceAsStream = PublicSuffixDatabase.class.getResourceAsStream("publicsuffixes.gz");
        if (resourceAsStream == null) {
            return;
        }
        f b10 = m0.b(new p(m0.f(resourceAsStream)));
        try {
            byte[] x02 = b10.x0(b10.readInt());
            byte[] x03 = b10.x0(b10.readInt());
            t tVar = t.f32733a;
            b.a(b10, null);
            synchronized (this) {
                m.b(x02);
                this.f27634c = x02;
                m.b(x03);
                this.f27635d = x03;
            }
            this.f27633b.countDown();
        } finally {
        }
    }

    private final void e() {
        boolean z10 = false;
        while (true) {
            try {
                try {
                    d();
                    break;
                } catch (InterruptedIOException unused) {
                    Thread.interrupted();
                    z10 = true;
                } catch (IOException e10) {
                    j.f32161a.g().j("Failed to read public suffix list", 5, e10);
                    if (z10) {
                        Thread.currentThread().interrupt();
                        return;
                    }
                    return;
                }
            } catch (Throwable th) {
                if (z10) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z10) {
            Thread.currentThread().interrupt();
        }
    }

    private final List f(String str) {
        List y02;
        Object Z;
        List K;
        y02 = b0.y0(str, new char[]{'.'}, false, 0, 6, null);
        Z = w.Z(y02);
        if (m.a(Z, "")) {
            K = w.K(y02, 1);
            return K;
        }
        return y02;
    }

    public final String c(String domain) {
        int size;
        int size2;
        e H;
        e g10;
        String j10;
        m.e(domain, "domain");
        String unicodeDomain = IDN.toUnicode(domain);
        m.d(unicodeDomain, "unicodeDomain");
        List f10 = f(unicodeDomain);
        List b10 = b(f10);
        if (f10.size() == b10.size() && ((String) b10.get(0)).charAt(0) != '!') {
            return null;
        }
        if (((String) b10.get(0)).charAt(0) == '!') {
            size = f10.size();
            size2 = b10.size();
        } else {
            size = f10.size();
            size2 = b10.size() + 1;
        }
        H = w.H(f(domain));
        g10 = l.g(H, size - size2);
        j10 = l.j(g10, ".", null, null, 0, null, null, 62, null);
        return j10;
    }
}
