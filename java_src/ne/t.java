package ne;

import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public final class t {

    /* renamed from: k  reason: collision with root package name */
    public static final b f26780k = new b(null);

    /* renamed from: l  reason: collision with root package name */
    private static final char[] f26781l = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: a  reason: collision with root package name */
    private final String f26782a;

    /* renamed from: b  reason: collision with root package name */
    private final String f26783b;

    /* renamed from: c  reason: collision with root package name */
    private final String f26784c;

    /* renamed from: d  reason: collision with root package name */
    private final String f26785d;

    /* renamed from: e  reason: collision with root package name */
    private final int f26786e;

    /* renamed from: f  reason: collision with root package name */
    private final List f26787f;

    /* renamed from: g  reason: collision with root package name */
    private final List f26788g;

    /* renamed from: h  reason: collision with root package name */
    private final String f26789h;

    /* renamed from: i  reason: collision with root package name */
    private final String f26790i;

    /* renamed from: j  reason: collision with root package name */
    private final boolean f26791j;

    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: i  reason: collision with root package name */
        public static final C0265a f26792i = new C0265a(null);

        /* renamed from: a  reason: collision with root package name */
        private String f26793a;

        /* renamed from: d  reason: collision with root package name */
        private String f26796d;

        /* renamed from: f  reason: collision with root package name */
        private final List f26798f;

        /* renamed from: g  reason: collision with root package name */
        private List f26799g;

        /* renamed from: h  reason: collision with root package name */
        private String f26800h;

        /* renamed from: b  reason: collision with root package name */
        private String f26794b = "";

        /* renamed from: c  reason: collision with root package name */
        private String f26795c = "";

        /* renamed from: e  reason: collision with root package name */
        private int f26797e = -1;

        /* renamed from: ne.t$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static final class C0265a {
            private C0265a() {
            }

            public /* synthetic */ C0265a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final int e(String str, int i10, int i11) {
                try {
                    int parseInt = Integer.parseInt(b.b(t.f26780k, str, i10, i11, "", false, false, false, false, null, 248, null));
                    boolean z10 = false;
                    if (1 <= parseInt && parseInt < 65536) {
                        z10 = true;
                    }
                    if (!z10) {
                        return -1;
                    }
                    return parseInt;
                } catch (NumberFormatException unused) {
                    return -1;
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final int f(String str, int i10, int i11) {
                while (i10 < i11) {
                    char charAt = str.charAt(i10);
                    if (charAt == '[') {
                        do {
                            i10++;
                            if (i10 < i11) {
                            }
                        } while (str.charAt(i10) != ']');
                    } else if (charAt == ':') {
                        return i10;
                    }
                    i10++;
                }
                return i11;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final int g(String str, int i10, int i11) {
                boolean z10;
                boolean z11;
                boolean z12;
                boolean z13;
                boolean z14;
                if (i11 - i10 < 2) {
                    return -1;
                }
                char charAt = str.charAt(i10);
                if ((kotlin.jvm.internal.m.f(charAt, 97) < 0 || kotlin.jvm.internal.m.f(charAt, 122) > 0) && (kotlin.jvm.internal.m.f(charAt, 65) < 0 || kotlin.jvm.internal.m.f(charAt, 90) > 0)) {
                    return -1;
                }
                int i12 = i10 + 1;
                while (i12 < i11) {
                    int i13 = i12 + 1;
                    char charAt2 = str.charAt(i12);
                    boolean z15 = false;
                    if ('a' <= charAt2 && charAt2 < '{') {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    if (z10 || ('A' <= charAt2 && charAt2 < '[')) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    if (z11 || ('0' <= charAt2 && charAt2 < ':')) {
                        z12 = true;
                    } else {
                        z12 = false;
                    }
                    if (z12 || charAt2 == '+') {
                        z13 = true;
                    } else {
                        z13 = false;
                    }
                    if (z13 || charAt2 == '-') {
                        z14 = true;
                    } else {
                        z14 = false;
                    }
                    if (z14 || charAt2 == '.') {
                        z15 = true;
                    }
                    if (z15) {
                        i12 = i13;
                    } else if (charAt2 != ':') {
                        return -1;
                    } else {
                        return i12;
                    }
                }
                return -1;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final int h(String str, int i10, int i11) {
                int i12 = 0;
                while (i10 < i11) {
                    int i13 = i10 + 1;
                    char charAt = str.charAt(i10);
                    if (charAt != '\\' && charAt != '/') {
                        break;
                    }
                    i12++;
                    i10 = i13;
                }
                return i12;
            }
        }

        public a() {
            ArrayList arrayList = new ArrayList();
            this.f26798f = arrayList;
            arrayList.add("");
        }

        private final int b() {
            int i10 = this.f26797e;
            if (i10 == -1) {
                b bVar = t.f26780k;
                String str = this.f26793a;
                kotlin.jvm.internal.m.b(str);
                return bVar.c(str);
            }
            return i10;
        }

        private final boolean m(String str) {
            boolean x10;
            if (!kotlin.jvm.internal.m.a(str, ".")) {
                x10 = rd.y.x(str, "%2e", true);
                if (x10) {
                    return true;
                }
                return false;
            }
            return true;
        }

        private final boolean n(String str) {
            boolean x10;
            boolean x11;
            boolean x12;
            if (!kotlin.jvm.internal.m.a(str, "..")) {
                x10 = rd.y.x(str, "%2e.", true);
                if (!x10) {
                    x11 = rd.y.x(str, ".%2e", true);
                    if (!x11) {
                        x12 = rd.y.x(str, "%2e%2e", true);
                        if (x12) {
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

        private final void q() {
            boolean z10;
            List list = this.f26798f;
            if (((String) list.remove(list.size() - 1)).length() == 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (z10 && (!this.f26798f.isEmpty())) {
                List list2 = this.f26798f;
                list2.set(list2.size() - 1, "");
                return;
            }
            this.f26798f.add("");
        }

        private final void s(String str, int i10, int i11, boolean z10, boolean z11) {
            boolean z12;
            String b10 = b.b(t.f26780k, str, i10, i11, " \"<>^`{}|/\\?#", z11, false, false, false, null, 240, null);
            if (m(b10)) {
                return;
            }
            if (n(b10)) {
                q();
                return;
            }
            List list = this.f26798f;
            if (((CharSequence) list.get(list.size() - 1)).length() == 0) {
                z12 = true;
            } else {
                z12 = false;
            }
            if (z12) {
                List list2 = this.f26798f;
                list2.set(list2.size() - 1, b10);
            } else {
                this.f26798f.add(b10);
            }
            if (z10) {
                this.f26798f.add("");
            }
        }

        private final void u(String str, int i10, int i11) {
            boolean z10;
            if (i10 == i11) {
                return;
            }
            char charAt = str.charAt(i10);
            if (charAt != '/' && charAt != '\\') {
                List list = this.f26798f;
                list.set(list.size() - 1, "");
            } else {
                this.f26798f.clear();
                this.f26798f.add("");
                i10++;
            }
            while (true) {
                int i12 = i10;
                while (i12 < i11) {
                    i10 = oe.d.p(str, "/\\", i12, i11);
                    if (i10 < i11) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    s(str, i12, i10, z10, true);
                    if (z10) {
                        i12 = i10 + 1;
                    }
                }
                return;
            }
        }

        public final void A(String str) {
            this.f26796d = str;
        }

        public final void B(int i10) {
            this.f26797e = i10;
        }

        public final void C(String str) {
            this.f26793a = str;
        }

        public final a D(String username) {
            kotlin.jvm.internal.m.e(username, "username");
            z(b.b(t.f26780k, username, 0, 0, " \"':;<=>@[]^`{}|/\\?#", false, false, false, false, null, 251, null));
            return this;
        }

        public final t a() {
            int r10;
            ArrayList arrayList;
            int r11;
            String g10;
            String g11;
            String str = this.f26793a;
            if (str != null) {
                b bVar = t.f26780k;
                String g12 = b.g(bVar, this.f26794b, 0, 0, false, 7, null);
                String g13 = b.g(bVar, this.f26795c, 0, 0, false, 7, null);
                String str2 = this.f26796d;
                if (str2 != null) {
                    int b10 = b();
                    List<String> list = this.f26798f;
                    r10 = yc.p.r(list, 10);
                    ArrayList arrayList2 = new ArrayList(r10);
                    for (String str3 : list) {
                        arrayList2.add(b.g(t.f26780k, str3, 0, 0, false, 7, null));
                    }
                    List list2 = this.f26799g;
                    if (list2 == null) {
                        arrayList = null;
                    } else {
                        List<String> list3 = list2;
                        r11 = yc.p.r(list3, 10);
                        arrayList = new ArrayList(r11);
                        for (String str4 : list3) {
                            if (str4 == null) {
                                g10 = null;
                            } else {
                                g10 = b.g(t.f26780k, str4, 0, 0, true, 3, null);
                            }
                            arrayList.add(g10);
                        }
                    }
                    String str5 = this.f26800h;
                    if (str5 == null) {
                        g11 = null;
                    } else {
                        g11 = b.g(t.f26780k, str5, 0, 0, false, 7, null);
                    }
                    return new t(str, g12, g13, str2, b10, arrayList2, arrayList, g11, toString());
                }
                throw new IllegalStateException("host == null");
            }
            throw new IllegalStateException("scheme == null");
        }

        public final a c(String str) {
            List list = null;
            if (str != null) {
                b bVar = t.f26780k;
                String b10 = b.b(bVar, str, 0, 0, " \"'<>#", true, false, true, false, null, 211, null);
                if (b10 != null) {
                    list = bVar.i(b10);
                }
            }
            y(list);
            return this;
        }

        public final String d() {
            return this.f26800h;
        }

        public final String e() {
            return this.f26795c;
        }

        public final List f() {
            return this.f26798f;
        }

        public final List g() {
            return this.f26799g;
        }

        public final String h() {
            return this.f26794b;
        }

        public final String i() {
            return this.f26796d;
        }

        public final int j() {
            return this.f26797e;
        }

        public final String k() {
            return this.f26793a;
        }

        public final a l(String host) {
            kotlin.jvm.internal.m.e(host, "host");
            String e10 = oe.a.e(b.g(t.f26780k, host, 0, 0, false, 7, null));
            if (e10 != null) {
                A(e10);
                return this;
            }
            throw new IllegalArgumentException(kotlin.jvm.internal.m.l("unexpected host: ", host));
        }

        public final a o(t tVar, String str) {
            String S0;
            int p10;
            char c10;
            int i10;
            int i11;
            String str2;
            boolean z10;
            boolean z11;
            boolean z12;
            int i12;
            String str3;
            int i13;
            boolean z13;
            boolean E;
            boolean E2;
            String input = str;
            kotlin.jvm.internal.m.e(input, "input");
            int z14 = oe.d.z(input, 0, 0, 3, null);
            int B = oe.d.B(input, z14, 0, 2, null);
            C0265a c0265a = f26792i;
            int g10 = c0265a.g(input, z14, B);
            String str4 = "this as java.lang.String…ing(startIndex, endIndex)";
            boolean z15 = true;
            char c11 = 65535;
            if (g10 != -1) {
                E = rd.y.E(input, "https:", z14, true);
                if (!E) {
                    E2 = rd.y.E(input, "http:", z14, true);
                    if (E2) {
                        this.f26793a = "http";
                        z14 += 5;
                    } else {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Expected URL scheme 'http' or 'https' but was '");
                        String substring = input.substring(0, g10);
                        kotlin.jvm.internal.m.d(substring, "this as java.lang.String…ing(startIndex, endIndex)");
                        sb2.append(substring);
                        sb2.append('\'');
                        throw new IllegalArgumentException(sb2.toString());
                    }
                } else {
                    this.f26793a = "https";
                    z14 += 6;
                }
            } else if (tVar != null) {
                this.f26793a = tVar.p();
            } else {
                if (str.length() > 6) {
                    S0 = rd.d0.S0(input, 6);
                    input = kotlin.jvm.internal.m.l(S0, "...");
                }
                throw new IllegalArgumentException(kotlin.jvm.internal.m.l("Expected URL scheme 'http' or 'https' but no scheme was found for ", input));
            }
            int h10 = c0265a.h(input, z14, B);
            char c12 = '?';
            char c13 = '#';
            if (h10 < 2 && tVar != null && kotlin.jvm.internal.m.a(tVar.p(), this.f26793a)) {
                this.f26794b = tVar.g();
                this.f26795c = tVar.c();
                this.f26796d = tVar.h();
                this.f26797e = tVar.l();
                this.f26798f.clear();
                this.f26798f.addAll(tVar.e());
                if (z14 == B || input.charAt(z14) == '#') {
                    c(tVar.f());
                }
                i10 = B;
            } else {
                int i14 = z14 + h10;
                boolean z16 = false;
                boolean z17 = false;
                while (true) {
                    p10 = oe.d.p(input, "@/\\?#", i14, B);
                    if (p10 != B) {
                        c10 = input.charAt(p10);
                    } else {
                        c10 = c11;
                    }
                    if (c10 == c11 || c10 == c13 || c10 == '/' || c10 == '\\' || c10 == c12) {
                        break;
                    } else if (c10 == '@') {
                        if (!z16) {
                            int o10 = oe.d.o(input, ':', i14, p10);
                            b bVar = t.f26780k;
                            z12 = z15;
                            i12 = B;
                            String str5 = str4;
                            String b10 = b.b(bVar, str, i14, o10, " \"':;<=>@[]^`{}|/\\?#", true, false, false, false, null, 240, null);
                            if (z17) {
                                b10 = this.f26794b + "%40" + b10;
                            }
                            this.f26794b = b10;
                            if (o10 != p10) {
                                this.f26795c = b.b(bVar, str, o10 + 1, p10, " \"':;<=>@[]^`{}|/\\?#", true, false, false, false, null, 240, null);
                                z13 = z12;
                            } else {
                                z13 = z16;
                            }
                            z16 = z13;
                            str3 = str5;
                            z17 = z12;
                            i13 = p10;
                        } else {
                            z12 = z15;
                            i12 = B;
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append(this.f26795c);
                            sb3.append("%40");
                            str3 = str4;
                            i13 = p10;
                            sb3.append(b.b(t.f26780k, str, i14, p10, " \"':;<=>@[]^`{}|/\\?#", true, false, false, false, null, 240, null));
                            this.f26795c = sb3.toString();
                        }
                        i14 = i13 + 1;
                        str4 = str3;
                        z15 = z12;
                        B = i12;
                        c13 = '#';
                        c12 = '?';
                        c11 = 65535;
                    }
                }
                boolean z18 = z15;
                String str6 = str4;
                i10 = B;
                C0265a c0265a2 = f26792i;
                int f10 = c0265a2.f(input, i14, p10);
                int i15 = f10 + 1;
                if (i15 < p10) {
                    i11 = i14;
                    this.f26796d = oe.a.e(b.g(t.f26780k, str, i14, f10, false, 4, null));
                    int e10 = c0265a2.e(input, i15, p10);
                    this.f26797e = e10;
                    if (e10 != -1) {
                        z11 = z18;
                    } else {
                        z11 = false;
                    }
                    if (z11) {
                        str2 = str6;
                    } else {
                        StringBuilder sb4 = new StringBuilder();
                        sb4.append("Invalid URL port: \"");
                        String substring2 = input.substring(i15, p10);
                        kotlin.jvm.internal.m.d(substring2, str6);
                        sb4.append(substring2);
                        sb4.append('\"');
                        throw new IllegalArgumentException(sb4.toString().toString());
                    }
                } else {
                    i11 = i14;
                    str2 = str6;
                    b bVar2 = t.f26780k;
                    this.f26796d = oe.a.e(b.g(bVar2, str, i11, f10, false, 4, null));
                    String str7 = this.f26793a;
                    kotlin.jvm.internal.m.b(str7);
                    this.f26797e = bVar2.c(str7);
                }
                if (this.f26796d != null) {
                    z10 = z18;
                } else {
                    z10 = false;
                }
                if (z10) {
                    z14 = p10;
                } else {
                    StringBuilder sb5 = new StringBuilder();
                    sb5.append("Invalid URL host: \"");
                    String substring3 = input.substring(i11, f10);
                    kotlin.jvm.internal.m.d(substring3, str2);
                    sb5.append(substring3);
                    sb5.append('\"');
                    throw new IllegalArgumentException(sb5.toString().toString());
                }
            }
            int i16 = i10;
            int p11 = oe.d.p(input, "?#", z14, i16);
            u(input, z14, p11);
            if (p11 < i16 && input.charAt(p11) == '?') {
                int o11 = oe.d.o(input, '#', p11, i16);
                b bVar3 = t.f26780k;
                this.f26799g = bVar3.i(b.b(bVar3, str, p11 + 1, o11, " \"'<>#", true, false, true, false, null, 208, null));
                p11 = o11;
            }
            if (p11 < i16 && input.charAt(p11) == '#') {
                this.f26800h = b.b(t.f26780k, str, p11 + 1, i16, "", true, false, false, true, null, 176, null);
            }
            return this;
        }

        public final a p(String password) {
            kotlin.jvm.internal.m.e(password, "password");
            x(b.b(t.f26780k, password, 0, 0, " \"':;<=>@[]^`{}|/\\?#", false, false, false, false, null, 251, null));
            return this;
        }

        public final a r(int i10) {
            boolean z10 = false;
            if (1 <= i10 && i10 < 65536) {
                z10 = true;
            }
            if (z10) {
                B(i10);
                return this;
            }
            throw new IllegalArgumentException(kotlin.jvm.internal.m.l("unexpected port: ", Integer.valueOf(i10)).toString());
        }

        public final a t() {
            String f10;
            String b10;
            String i10 = i();
            String str = null;
            if (i10 == null) {
                f10 = null;
            } else {
                f10 = new rd.l("[\"<>^`{|}]").f(i10, "");
            }
            A(f10);
            int size = f().size();
            int i11 = 0;
            for (int i12 = 0; i12 < size; i12++) {
                f().set(i12, b.b(t.f26780k, (String) f().get(i12), 0, 0, "[]", true, true, false, false, null, 227, null));
            }
            List g10 = g();
            if (g10 != null) {
                int size2 = g10.size();
                while (i11 < size2) {
                    int i13 = i11 + 1;
                    String str2 = (String) g10.get(i11);
                    if (str2 == null) {
                        b10 = null;
                    } else {
                        b10 = b.b(t.f26780k, str2, 0, 0, "\\^`{|}", true, true, true, false, null, 195, null);
                    }
                    g10.set(i11, b10);
                    i11 = i13;
                }
            }
            String d10 = d();
            if (d10 != null) {
                str = b.b(t.f26780k, d10, 0, 0, " \"#<>\\^`{|}", true, true, false, true, null, 163, null);
            }
            w(str);
            return this;
        }

        /* JADX WARN: Code restructure failed: missing block: B:16:0x003d, code lost:
            if (r1 != false) goto L38;
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x00b5, code lost:
            if (r1 != r2.c(r3)) goto L36;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.String toString() {
            /*
                r6 = this;
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r0.<init>()
                java.lang.String r1 = r6.k()
                if (r1 == 0) goto L18
                java.lang.String r1 = r6.k()
                r0.append(r1)
                java.lang.String r1 = "://"
                r0.append(r1)
                goto L1d
            L18:
                java.lang.String r1 = "//"
                r0.append(r1)
            L1d:
                java.lang.String r1 = r6.h()
                int r1 = r1.length()
                r2 = 1
                r3 = 0
                if (r1 <= 0) goto L2b
                r1 = r2
                goto L2c
            L2b:
                r1 = r3
            L2c:
                r4 = 58
                if (r1 != 0) goto L3f
                java.lang.String r1 = r6.e()
                int r1 = r1.length()
                if (r1 <= 0) goto L3c
                r1 = r2
                goto L3d
            L3c:
                r1 = r3
            L3d:
                if (r1 == 0) goto L63
            L3f:
                java.lang.String r1 = r6.h()
                r0.append(r1)
                java.lang.String r1 = r6.e()
                int r1 = r1.length()
                if (r1 <= 0) goto L51
                goto L52
            L51:
                r2 = r3
            L52:
                if (r2 == 0) goto L5e
                r0.append(r4)
                java.lang.String r1 = r6.e()
                r0.append(r1)
            L5e:
                r1 = 64
                r0.append(r1)
            L63:
                java.lang.String r1 = r6.i()
                if (r1 == 0) goto L91
                java.lang.String r1 = r6.i()
                kotlin.jvm.internal.m.b(r1)
                r2 = 2
                r5 = 0
                boolean r1 = rd.n.M(r1, r4, r3, r2, r5)
                if (r1 == 0) goto L8a
                r1 = 91
                r0.append(r1)
                java.lang.String r1 = r6.i()
                r0.append(r1)
                r1 = 93
                r0.append(r1)
                goto L91
            L8a:
                java.lang.String r1 = r6.i()
                r0.append(r1)
            L91:
                int r1 = r6.j()
                r2 = -1
                if (r1 != r2) goto L9e
                java.lang.String r1 = r6.k()
                if (r1 == 0) goto Lbd
            L9e:
                int r1 = r6.b()
                java.lang.String r2 = r6.k()
                if (r2 == 0) goto Lb7
                ne.t$b r2 = ne.t.f26780k
                java.lang.String r3 = r6.k()
                kotlin.jvm.internal.m.b(r3)
                int r2 = r2.c(r3)
                if (r1 == r2) goto Lbd
            Lb7:
                r0.append(r4)
                r0.append(r1)
            Lbd:
                ne.t$b r1 = ne.t.f26780k
                java.util.List r2 = r6.f()
                r1.h(r2, r0)
                java.util.List r2 = r6.g()
                if (r2 == 0) goto Ldb
                r2 = 63
                r0.append(r2)
                java.util.List r2 = r6.g()
                kotlin.jvm.internal.m.b(r2)
                r1.j(r2, r0)
            Ldb:
                java.lang.String r1 = r6.d()
                if (r1 == 0) goto Led
                r1 = 35
                r0.append(r1)
                java.lang.String r1 = r6.d()
                r0.append(r1)
            Led:
                java.lang.String r0 = r0.toString()
                java.lang.String r1 = "StringBuilder().apply(builderAction).toString()"
                kotlin.jvm.internal.m.d(r0, r1)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: ne.t.a.toString():java.lang.String");
        }

        public final a v(String scheme) {
            boolean x10;
            boolean x11;
            kotlin.jvm.internal.m.e(scheme, "scheme");
            x10 = rd.y.x(scheme, "http", true);
            if (!x10) {
                x11 = rd.y.x(scheme, "https", true);
                if (x11) {
                    C("https");
                } else {
                    throw new IllegalArgumentException(kotlin.jvm.internal.m.l("unexpected scheme: ", scheme));
                }
            } else {
                C("http");
            }
            return this;
        }

        public final void w(String str) {
            this.f26800h = str;
        }

        public final void x(String str) {
            kotlin.jvm.internal.m.e(str, "<set-?>");
            this.f26795c = str;
        }

        public final void y(List list) {
            this.f26799g = list;
        }

        public final void z(String str) {
            kotlin.jvm.internal.m.e(str, "<set-?>");
            this.f26794b = str;
        }
    }

    /* loaded from: classes2.dex */
    public static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ String b(b bVar, String str, int i10, int i11, String str2, boolean z10, boolean z11, boolean z12, boolean z13, Charset charset, int i12, Object obj) {
            int i13;
            int i14;
            boolean z14;
            boolean z15;
            boolean z16;
            boolean z17;
            Charset charset2;
            if ((i12 & 1) != 0) {
                i13 = 0;
            } else {
                i13 = i10;
            }
            if ((i12 & 2) != 0) {
                i14 = str.length();
            } else {
                i14 = i11;
            }
            if ((i12 & 8) != 0) {
                z14 = false;
            } else {
                z14 = z10;
            }
            if ((i12 & 16) != 0) {
                z15 = false;
            } else {
                z15 = z11;
            }
            if ((i12 & 32) != 0) {
                z16 = false;
            } else {
                z16 = z12;
            }
            if ((i12 & 64) != 0) {
                z17 = false;
            } else {
                z17 = z13;
            }
            if ((i12 & 128) != 0) {
                charset2 = null;
            } else {
                charset2 = charset;
            }
            return bVar.a(str, i13, i14, str2, z14, z15, z16, z17, charset2);
        }

        private final boolean e(String str, int i10, int i11) {
            int i12 = i10 + 2;
            if (i12 < i11 && str.charAt(i10) == '%' && oe.d.G(str.charAt(i10 + 1)) != -1 && oe.d.G(str.charAt(i12)) != -1) {
                return true;
            }
            return false;
        }

        public static /* synthetic */ String g(b bVar, String str, int i10, int i11, boolean z10, int i12, Object obj) {
            if ((i12 & 1) != 0) {
                i10 = 0;
            }
            if ((i12 & 2) != 0) {
                i11 = str.length();
            }
            if ((i12 & 4) != 0) {
                z10 = false;
            }
            return bVar.f(str, i10, i11, z10);
        }

        /* JADX WARN: Code restructure failed: missing block: B:35:0x005f, code lost:
            if (e(r16, r5, r18) == false) goto L39;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private final void k(af.d r15, java.lang.String r16, int r17, int r18, java.lang.String r19, boolean r20, boolean r21, boolean r22, boolean r23, java.nio.charset.Charset r24) {
            /*
                r14 = this;
                r0 = r15
                r1 = r16
                r2 = r18
                r3 = r24
                r4 = 0
                r5 = r17
                r6 = r4
            Lb:
                if (r5 >= r2) goto Lb9
                int r7 = r1.codePointAt(r5)
                if (r20 == 0) goto L28
                r8 = 9
                if (r7 == r8) goto L23
                r8 = 10
                if (r7 == r8) goto L23
                r8 = 12
                if (r7 == r8) goto L23
                r8 = 13
                if (r7 != r8) goto L28
            L23:
                r8 = r14
                r12 = r19
                goto Lb2
            L28:
                r8 = 43
                if (r7 != r8) goto L39
                if (r22 == 0) goto L39
                if (r20 == 0) goto L33
                java.lang.String r8 = "+"
                goto L35
            L33:
                java.lang.String r8 = "%2B"
            L35:
                r15.g0(r8)
                goto L23
            L39:
                r8 = 32
                r9 = 37
                if (r7 < r8) goto L69
                r8 = 127(0x7f, float:1.78E-43)
                if (r7 == r8) goto L69
                r8 = 128(0x80, float:1.794E-43)
                if (r7 < r8) goto L49
                if (r23 == 0) goto L69
            L49:
                char r8 = (char) r7
                r10 = 0
                r11 = 2
                r12 = r19
                boolean r8 = rd.n.M(r12, r8, r10, r11, r4)
                if (r8 != 0) goto L67
                if (r7 != r9) goto L62
                if (r20 == 0) goto L67
                if (r21 == 0) goto L62
                r8 = r14
                boolean r10 = r14.e(r1, r5, r2)
                if (r10 != 0) goto L63
                goto L6c
            L62:
                r8 = r14
            L63:
                r15.f1(r7)
                goto Lb2
            L67:
                r8 = r14
                goto L6c
            L69:
                r8 = r14
                r12 = r19
            L6c:
                if (r6 != 0) goto L73
                af.d r6 = new af.d
                r6.<init>()
            L73:
                if (r3 == 0) goto L87
                java.nio.charset.Charset r10 = java.nio.charset.StandardCharsets.UTF_8
                boolean r10 = kotlin.jvm.internal.m.a(r3, r10)
                if (r10 == 0) goto L7e
                goto L87
            L7e:
                int r10 = java.lang.Character.charCount(r7)
                int r10 = r10 + r5
                r6.c1(r1, r5, r10, r3)
                goto L8a
            L87:
                r6.f1(r7)
            L8a:
                boolean r10 = r6.N()
                if (r10 != 0) goto Lb2
                byte r10 = r6.readByte()
                r10 = r10 & 255(0xff, float:3.57E-43)
                r15.O(r9)
                char[] r11 = ne.t.a()
                int r13 = r10 >> 4
                r13 = r13 & 15
                char r11 = r11[r13]
                r15.O(r11)
                char[] r11 = ne.t.a()
                r10 = r10 & 15
                char r10 = r11[r10]
                r15.O(r10)
                goto L8a
            Lb2:
                int r7 = java.lang.Character.charCount(r7)
                int r5 = r5 + r7
                goto Lb
            Lb9:
                r8 = r14
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: ne.t.b.k(af.d, java.lang.String, int, int, java.lang.String, boolean, boolean, boolean, boolean, java.nio.charset.Charset):void");
        }

        private final void l(af.d dVar, String str, int i10, int i11, boolean z10) {
            int i12;
            while (i10 < i11) {
                int codePointAt = str.codePointAt(i10);
                if (codePointAt == 37 && (i12 = i10 + 2) < i11) {
                    int G = oe.d.G(str.charAt(i10 + 1));
                    int G2 = oe.d.G(str.charAt(i12));
                    if (G != -1 && G2 != -1) {
                        dVar.O((G << 4) + G2);
                        i10 = Character.charCount(codePointAt) + i12;
                    }
                    dVar.f1(codePointAt);
                    i10 += Character.charCount(codePointAt);
                } else {
                    if (codePointAt == 43 && z10) {
                        dVar.O(32);
                        i10++;
                    }
                    dVar.f1(codePointAt);
                    i10 += Character.charCount(codePointAt);
                }
            }
        }

        public final String a(String str, int i10, int i11, String encodeSet, boolean z10, boolean z11, boolean z12, boolean z13, Charset charset) {
            boolean M;
            kotlin.jvm.internal.m.e(str, "<this>");
            kotlin.jvm.internal.m.e(encodeSet, "encodeSet");
            int i12 = i10;
            while (i12 < i11) {
                int codePointAt = str.codePointAt(i12);
                if (codePointAt >= 32 && codePointAt != 127 && (codePointAt < 128 || z13)) {
                    M = rd.b0.M(encodeSet, (char) codePointAt, false, 2, null);
                    if (!M) {
                        if (codePointAt == 37) {
                            if (z10) {
                                if (z11) {
                                    if (!e(str, i12, i11)) {
                                        af.d dVar = new af.d();
                                        dVar.e1(str, i10, i12);
                                        k(dVar, str, i12, i11, encodeSet, z10, z11, z12, z13, charset);
                                        return dVar.X();
                                    }
                                    if (codePointAt == 43 || !z12) {
                                        i12 += Character.charCount(codePointAt);
                                    } else {
                                        af.d dVar2 = new af.d();
                                        dVar2.e1(str, i10, i12);
                                        k(dVar2, str, i12, i11, encodeSet, z10, z11, z12, z13, charset);
                                        return dVar2.X();
                                    }
                                }
                            }
                        }
                        if (codePointAt == 43) {
                        }
                        i12 += Character.charCount(codePointAt);
                    }
                }
                af.d dVar22 = new af.d();
                dVar22.e1(str, i10, i12);
                k(dVar22, str, i12, i11, encodeSet, z10, z11, z12, z13, charset);
                return dVar22.X();
            }
            String substring = str.substring(i10, i11);
            kotlin.jvm.internal.m.d(substring, "this as java.lang.String…ing(startIndex, endIndex)");
            return substring;
        }

        public final int c(String scheme) {
            kotlin.jvm.internal.m.e(scheme, "scheme");
            if (kotlin.jvm.internal.m.a(scheme, "http")) {
                return 80;
            }
            if (kotlin.jvm.internal.m.a(scheme, "https")) {
                return 443;
            }
            return -1;
        }

        public final t d(String str) {
            kotlin.jvm.internal.m.e(str, "<this>");
            return new a().o(null, str).a();
        }

        public final String f(String str, int i10, int i11, boolean z10) {
            kotlin.jvm.internal.m.e(str, "<this>");
            int i12 = i10;
            while (i12 < i11) {
                int i13 = i12 + 1;
                char charAt = str.charAt(i12);
                if (charAt != '%' && (charAt != '+' || !z10)) {
                    i12 = i13;
                } else {
                    af.d dVar = new af.d();
                    dVar.e1(str, i10, i12);
                    l(dVar, str, i12, i11, z10);
                    return dVar.X();
                }
            }
            String substring = str.substring(i10, i11);
            kotlin.jvm.internal.m.d(substring, "this as java.lang.String…ing(startIndex, endIndex)");
            return substring;
        }

        public final void h(List list, StringBuilder out) {
            kotlin.jvm.internal.m.e(list, "<this>");
            kotlin.jvm.internal.m.e(out, "out");
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                out.append('/');
                out.append((String) list.get(i10));
            }
        }

        public final List i(String str) {
            int Y;
            int Y2;
            kotlin.jvm.internal.m.e(str, "<this>");
            ArrayList arrayList = new ArrayList();
            int i10 = 0;
            while (i10 <= str.length()) {
                Y = rd.b0.Y(str, '&', i10, false, 4, null);
                if (Y == -1) {
                    Y = str.length();
                }
                int i11 = Y;
                Y2 = rd.b0.Y(str, '=', i10, false, 4, null);
                if (Y2 != -1 && Y2 <= i11) {
                    String substring = str.substring(i10, Y2);
                    kotlin.jvm.internal.m.d(substring, "this as java.lang.String…ing(startIndex, endIndex)");
                    arrayList.add(substring);
                    String substring2 = str.substring(Y2 + 1, i11);
                    kotlin.jvm.internal.m.d(substring2, "this as java.lang.String…ing(startIndex, endIndex)");
                    arrayList.add(substring2);
                } else {
                    String substring3 = str.substring(i10, i11);
                    kotlin.jvm.internal.m.d(substring3, "this as java.lang.String…ing(startIndex, endIndex)");
                    arrayList.add(substring3);
                    arrayList.add(null);
                }
                i10 = i11 + 1;
            }
            return arrayList;
        }

        public final void j(List list, StringBuilder out) {
            od.c k10;
            od.a i10;
            kotlin.jvm.internal.m.e(list, "<this>");
            kotlin.jvm.internal.m.e(out, "out");
            k10 = od.i.k(0, list.size());
            i10 = od.i.i(k10, 2);
            int g10 = i10.g();
            int i11 = i10.i();
            int l10 = i10.l();
            if ((l10 <= 0 || g10 > i11) && (l10 >= 0 || i11 > g10)) {
                return;
            }
            while (true) {
                int i12 = g10 + l10;
                String str = (String) list.get(g10);
                String str2 = (String) list.get(g10 + 1);
                if (g10 > 0) {
                    out.append('&');
                }
                out.append(str);
                if (str2 != null) {
                    out.append('=');
                    out.append(str2);
                }
                if (g10 != i11) {
                    g10 = i12;
                } else {
                    return;
                }
            }
        }
    }

    public t(String scheme, String username, String password, String host, int i10, List pathSegments, List list, String str, String url) {
        kotlin.jvm.internal.m.e(scheme, "scheme");
        kotlin.jvm.internal.m.e(username, "username");
        kotlin.jvm.internal.m.e(password, "password");
        kotlin.jvm.internal.m.e(host, "host");
        kotlin.jvm.internal.m.e(pathSegments, "pathSegments");
        kotlin.jvm.internal.m.e(url, "url");
        this.f26782a = scheme;
        this.f26783b = username;
        this.f26784c = password;
        this.f26785d = host;
        this.f26786e = i10;
        this.f26787f = pathSegments;
        this.f26788g = list;
        this.f26789h = str;
        this.f26790i = url;
        this.f26791j = kotlin.jvm.internal.m.a(scheme, "https");
    }

    public final String b() {
        int Y;
        if (this.f26789h != null) {
            Y = rd.b0.Y(this.f26790i, '#', 0, false, 6, null);
            String substring = this.f26790i.substring(Y + 1);
            kotlin.jvm.internal.m.d(substring, "this as java.lang.String).substring(startIndex)");
            return substring;
        }
        return null;
    }

    public final String c() {
        boolean z10;
        int Y;
        int Y2;
        if (this.f26784c.length() == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            Y = rd.b0.Y(this.f26790i, ':', this.f26782a.length() + 3, false, 4, null);
            Y2 = rd.b0.Y(this.f26790i, '@', 0, false, 6, null);
            String substring = this.f26790i.substring(Y + 1, Y2);
            kotlin.jvm.internal.m.d(substring, "this as java.lang.String…ing(startIndex, endIndex)");
            return substring;
        }
        return "";
    }

    public final String d() {
        int Y;
        Y = rd.b0.Y(this.f26790i, '/', this.f26782a.length() + 3, false, 4, null);
        String str = this.f26790i;
        String substring = this.f26790i.substring(Y, oe.d.p(str, "?#", Y, str.length()));
        kotlin.jvm.internal.m.d(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        return substring;
    }

    public final List e() {
        int Y;
        Y = rd.b0.Y(this.f26790i, '/', this.f26782a.length() + 3, false, 4, null);
        String str = this.f26790i;
        int p10 = oe.d.p(str, "?#", Y, str.length());
        ArrayList arrayList = new ArrayList();
        while (Y < p10) {
            int i10 = Y + 1;
            int o10 = oe.d.o(this.f26790i, '/', i10, p10);
            String substring = this.f26790i.substring(i10, o10);
            kotlin.jvm.internal.m.d(substring, "this as java.lang.String…ing(startIndex, endIndex)");
            arrayList.add(substring);
            Y = o10;
        }
        return arrayList;
    }

    public boolean equals(Object obj) {
        if ((obj instanceof t) && kotlin.jvm.internal.m.a(((t) obj).f26790i, this.f26790i)) {
            return true;
        }
        return false;
    }

    public final String f() {
        int Y;
        if (this.f26788g != null) {
            Y = rd.b0.Y(this.f26790i, '?', 0, false, 6, null);
            int i10 = Y + 1;
            String str = this.f26790i;
            String substring = this.f26790i.substring(i10, oe.d.o(str, '#', i10, str.length()));
            kotlin.jvm.internal.m.d(substring, "this as java.lang.String…ing(startIndex, endIndex)");
            return substring;
        }
        return null;
    }

    public final String g() {
        boolean z10;
        if (this.f26783b.length() == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            return "";
        }
        int length = this.f26782a.length() + 3;
        String str = this.f26790i;
        String substring = this.f26790i.substring(length, oe.d.p(str, ":@", length, str.length()));
        kotlin.jvm.internal.m.d(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        return substring;
    }

    public final String h() {
        return this.f26785d;
    }

    public int hashCode() {
        return this.f26790i.hashCode();
    }

    public final boolean i() {
        return this.f26791j;
    }

    public final a j() {
        int i10;
        a aVar = new a();
        aVar.C(this.f26782a);
        aVar.z(g());
        aVar.x(c());
        aVar.A(this.f26785d);
        if (this.f26786e != f26780k.c(this.f26782a)) {
            i10 = this.f26786e;
        } else {
            i10 = -1;
        }
        aVar.B(i10);
        aVar.f().clear();
        aVar.f().addAll(e());
        aVar.c(f());
        aVar.w(b());
        return aVar;
    }

    public final a k(String link) {
        kotlin.jvm.internal.m.e(link, "link");
        try {
            return new a().o(this, link);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    public final int l() {
        return this.f26786e;
    }

    public final String m() {
        if (this.f26788g == null) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        f26780k.j(this.f26788g, sb2);
        return sb2.toString();
    }

    public final String n() {
        a k10 = k("/...");
        kotlin.jvm.internal.m.b(k10);
        return k10.D("").p("").a().toString();
    }

    public final t o(String link) {
        kotlin.jvm.internal.m.e(link, "link");
        a k10 = k(link);
        if (k10 == null) {
            return null;
        }
        return k10.a();
    }

    public final String p() {
        return this.f26782a;
    }

    public final URI q() {
        String aVar = j().t().toString();
        try {
            return new URI(aVar);
        } catch (URISyntaxException e10) {
            try {
                URI create = URI.create(new rd.l("[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]").f(aVar, ""));
                kotlin.jvm.internal.m.d(create, "{\n      // Unlikely edge…Unexpected!\n      }\n    }");
                return create;
            } catch (Exception unused) {
                throw new RuntimeException(e10);
            }
        }
    }

    public final URL r() {
        try {
            return new URL(this.f26790i);
        } catch (MalformedURLException e10) {
            throw new RuntimeException(e10);
        }
    }

    public String toString() {
        return this.f26790i;
    }
}
