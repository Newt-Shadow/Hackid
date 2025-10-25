package ke;

import java.util.ArrayList;
/* loaded from: classes2.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    public int f24891a;

    /* renamed from: c  reason: collision with root package name */
    private String f24893c;

    /* renamed from: b  reason: collision with root package name */
    public final t f24892b = new t();

    /* renamed from: d  reason: collision with root package name */
    private StringBuilder f24894d = new StringBuilder();

    private final String I() {
        String str = this.f24893c;
        kotlin.jvm.internal.m.b(str);
        this.f24893c = null;
        return str;
    }

    public static /* synthetic */ boolean L(a aVar, boolean z10, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 1) != 0) {
                z10 = true;
            }
            return aVar.K(z10);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: tryConsumeNull");
    }

    private final boolean N() {
        if (A().charAt(this.f24891a - 1) != '\"') {
            return true;
        }
        return false;
    }

    private final int a(int i10) {
        int E = E(i10);
        if (E != -1) {
            int i11 = E + 1;
            char charAt = A().charAt(E);
            if (charAt == 'u') {
                return c(A(), i11);
            }
            char b10 = b.b(charAt);
            if (b10 != 0) {
                this.f24894d.append(b10);
                return i11;
            }
            v(this, "Invalid escaped char '" + charAt + '\'', 0, null, 6, null);
            throw new xc.c();
        }
        v(this, "Expected escape sequence to continue, got EOF", 0, null, 6, null);
        throw new xc.c();
    }

    private final int b(int i10, int i11) {
        d(i10, i11);
        return a(i11 + 1);
    }

    private final int c(CharSequence charSequence, int i10) {
        int i11 = i10 + 4;
        if (i11 >= charSequence.length()) {
            this.f24891a = i10;
            s();
            if (this.f24891a + 4 < charSequence.length()) {
                return c(charSequence, this.f24891a);
            }
            v(this, "Unexpected EOF during unicode escape", 0, null, 6, null);
            throw new xc.c();
        }
        this.f24894d.append((char) ((z(charSequence, i10) << 12) + (z(charSequence, i10 + 1) << 8) + (z(charSequence, i10 + 2) << 4) + z(charSequence, i10 + 3)));
        return i11;
    }

    private final boolean f(int i10) {
        int E = E(i10);
        if (E < A().length() && E != -1) {
            int i11 = E + 1;
            int charAt = A().charAt(E) | ' ';
            if (charAt != 102) {
                if (charAt == 116) {
                    h("rue", i11);
                    return true;
                }
                v(this, "Expected valid boolean literal prefix, but had '" + p() + '\'', 0, null, 6, null);
                throw new xc.c();
            }
            h("alse", i11);
            return false;
        }
        v(this, "EOF", 0, null, 6, null);
        throw new xc.c();
    }

    private final void h(String str, int i10) {
        if (A().length() - i10 >= str.length()) {
            int length = str.length();
            for (int i11 = 0; i11 < length; i11++) {
                if (str.charAt(i11) != (A().charAt(i10 + i11) | ' ')) {
                    v(this, "Expected valid boolean literal prefix, but had '" + p() + '\'', 0, null, 6, null);
                    throw new xc.c();
                }
            }
            this.f24891a = i10 + str.length();
            return;
        }
        v(this, "Unexpected end of boolean literal", 0, null, 6, null);
        throw new xc.c();
    }

    private static final double m(long j10, boolean z10) {
        if (!z10) {
            return Math.pow(10.0d, -j10);
        }
        if (z10) {
            return Math.pow(10.0d, j10);
        }
        throw new xc.i();
    }

    private final String r(int i10, int i11) {
        d(i10, i11);
        String sb2 = this.f24894d.toString();
        kotlin.jvm.internal.m.d(sb2, "toString(...)");
        this.f24894d.setLength(0);
        return sb2;
    }

    public static /* synthetic */ Void v(a aVar, String str, int i10, String str2, int i11, Object obj) {
        if (obj == null) {
            if ((i11 & 2) != 0) {
                i10 = aVar.f24891a;
            }
            if ((i11 & 4) != 0) {
                str2 = "";
            }
            return aVar.u(str, i10, str2);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fail");
    }

    public static /* synthetic */ Void x(a aVar, byte b10, boolean z10, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 2) != 0) {
                z10 = true;
            }
            return aVar.w(b10, z10);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fail");
    }

    private final int z(CharSequence charSequence, int i10) {
        boolean z10;
        boolean z11;
        char charAt = charSequence.charAt(i10);
        boolean z12 = true;
        if ('0' <= charAt && charAt < ':') {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            return charAt - '0';
        }
        char c10 = 'a';
        if ('a' <= charAt && charAt < 'g') {
            z11 = true;
        } else {
            z11 = false;
        }
        if (!z11) {
            c10 = 'A';
            if ('A' > charAt || charAt >= 'G') {
                z12 = false;
            }
            if (!z12) {
                v(this, "Invalid toHexChar char '" + charAt + "' in unicode escape", 0, null, 6, null);
                throw new xc.c();
            }
        }
        return (charAt - c10) + 10;
    }

    protected abstract CharSequence A();

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean B(char c10) {
        return (c10 == ',' || c10 == ':' || c10 == ']' || c10 == '}') ? false : true;
    }

    public byte C() {
        CharSequence A = A();
        int i10 = this.f24891a;
        while (true) {
            int E = E(i10);
            if (E != -1) {
                char charAt = A.charAt(E);
                if (charAt != '\t' && charAt != '\n' && charAt != '\r' && charAt != ' ') {
                    this.f24891a = E;
                    return b.a(charAt);
                }
                i10 = E + 1;
            } else {
                this.f24891a = E;
                return (byte) 10;
            }
        }
    }

    public final String D(boolean z10) {
        String n10;
        byte C = C();
        if (z10) {
            if (C != 1 && C != 0) {
                return null;
            }
            n10 = p();
        } else if (C != 1) {
            return null;
        } else {
            n10 = n();
        }
        this.f24893c = n10;
        return n10;
    }

    public abstract int E(int i10);

    public final void F(boolean z10) {
        Object Z;
        Object Z2;
        ArrayList arrayList = new ArrayList();
        byte C = C();
        if (C != 8 && C != 6) {
            p();
            return;
        }
        while (true) {
            byte C2 = C();
            if (C2 == 1) {
                if (z10) {
                    p();
                } else {
                    i();
                }
            } else {
                if (C2 != 8 && C2 != 6) {
                    if (C2 == 9) {
                        Z2 = yc.w.Z(arrayList);
                        if (((Number) Z2).byteValue() == 8) {
                            yc.t.D(arrayList);
                        } else {
                            int i10 = this.f24891a;
                            throw q.d(i10, "found ] instead of } at path: " + this.f24892b, A());
                        }
                    } else if (C2 == 7) {
                        Z = yc.w.Z(arrayList);
                        if (((Number) Z).byteValue() == 6) {
                            yc.t.D(arrayList);
                        } else {
                            int i11 = this.f24891a;
                            throw q.d(i11, "found } instead of ] at path: " + this.f24892b, A());
                        }
                    } else if (C2 == 10) {
                        v(this, "Unexpected end of input due to malformed JSON during ignoring unknown keys", 0, null, 6, null);
                        throw new xc.c();
                    }
                } else {
                    arrayList.add(Byte.valueOf(C2));
                }
                j();
                if (arrayList.size() == 0) {
                    return;
                }
            }
        }
    }

    public abstract int G();

    public String H(int i10, int i11) {
        return A().subSequence(i10, i11).toString();
    }

    public final boolean J() {
        int G = G();
        CharSequence A = A();
        if (G >= A.length() || G == -1 || A.charAt(G) != ',') {
            return false;
        }
        this.f24891a++;
        return true;
    }

    public final boolean K(boolean z10) {
        int E = E(G());
        int length = A().length() - E;
        if (length < 4 || E == -1) {
            return false;
        }
        for (int i10 = 0; i10 < 4; i10++) {
            if ("null".charAt(i10) != A().charAt(E + i10)) {
                return false;
            }
        }
        if (length > 4 && b.a(A().charAt(E + 4)) == 0) {
            return false;
        }
        if (z10) {
            this.f24891a = E + 4;
            return true;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void M(char c10) {
        int i10 = this.f24891a;
        if (i10 > 0 && c10 == '\"') {
            try {
                this.f24891a = i10 - 1;
                String p10 = p();
                this.f24891a = i10;
                if (kotlin.jvm.internal.m.a(p10, "null")) {
                    u("Expected string literal but 'null' literal was found", this.f24891a - 1, "Use 'coerceInputValues = true' in 'Json {}' builder to coerce nulls if property has a default value.");
                    throw new xc.c();
                }
            } catch (Throwable th) {
                this.f24891a = i10;
                throw th;
            }
        }
        x(this, b.a(c10), false, 2, null);
        throw new xc.c();
    }

    protected void d(int i10, int i11) {
        this.f24894d.append(A(), i10, i11);
    }

    public abstract boolean e();

    public final boolean g() {
        boolean z10;
        int G = G();
        if (G != A().length()) {
            if (A().charAt(G) == '\"') {
                G++;
                z10 = true;
            } else {
                z10 = false;
            }
            boolean f10 = f(G);
            if (z10) {
                if (this.f24891a != A().length()) {
                    if (A().charAt(this.f24891a) == '\"') {
                        this.f24891a++;
                    } else {
                        v(this, "Expected closing quotation mark", 0, null, 6, null);
                        throw new xc.c();
                    }
                } else {
                    v(this, "EOF", 0, null, 6, null);
                    throw new xc.c();
                }
            }
            return f10;
        }
        v(this, "EOF", 0, null, 6, null);
        throw new xc.c();
    }

    public abstract String i();

    public abstract byte j();

    public abstract void k(char c10);

    /* JADX WARN: Code restructure failed: missing block: B:101:0x01f0, code lost:
        return -r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x01f1, code lost:
        v(r18, "Numeric value overflow", 0, null, 6, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x0201, code lost:
        throw new xc.c();
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x0202, code lost:
        v(r18, "Expected numeric literal", 0, null, 6, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x0212, code lost:
        throw new xc.c();
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:?, code lost:
        return r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0149, code lost:
        if (r5 == r0) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x014b, code lost:
        r2 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x014d, code lost:
        r2 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x014e, code lost:
        if (r0 == r5) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0150, code lost:
        if (r10 == false) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0154, code lost:
        if (r0 == (r5 - 1)) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0156, code lost:
        if (r1 == false) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0158, code lost:
        if (r2 == false) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0164, code lost:
        if (A().charAt(r5) != '\"') goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0166, code lost:
        r5 = r5 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0169, code lost:
        v(r18, "Expected closing quotation mark", 0, null, 6, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0179, code lost:
        throw new xc.c();
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x017a, code lost:
        v(r18, "EOF", 0, null, 6, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x018a, code lost:
        throw new xc.c();
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x018b, code lost:
        r18.f24891a = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x018d, code lost:
        if (r9 == false) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x018f, code lost:
        r0 = r11 * m(r13, r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0199, code lost:
        if (r0 > 9.223372036854776E18d) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x019f, code lost:
        if (r0 < (-9.223372036854776E18d)) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x01a7, code lost:
        if (java.lang.Math.floor(r0) != r0) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x01a9, code lost:
        r3 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x01ab, code lost:
        r3 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x01ac, code lost:
        if (r3 == false) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x01ae, code lost:
        r11 = (long) r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x01b0, code lost:
        v(r18, "Can't convert " + r0 + " to Long", 0, null, 6, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x01d4, code lost:
        throw new xc.c();
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x01d5, code lost:
        v(r18, "Numeric value overflow", 0, null, 6, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x01e5, code lost:
        throw new xc.c();
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x01e6, code lost:
        if (r10 == false) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x01ed, code lost:
        if (r11 == Long.MIN_VALUE) goto L92;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long l() {
        /*
            Method dump skipped, instructions count: 548
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: ke.a.l():long");
    }

    public final String n() {
        if (this.f24893c != null) {
            return I();
        }
        return i();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final String o(CharSequence source, int i10, int i11) {
        String r10;
        int E;
        kotlin.jvm.internal.m.e(source, "source");
        char charAt = source.charAt(i11);
        boolean z10 = false;
        while (charAt != '\"') {
            if (charAt == '\\') {
                E = E(b(i10, i11));
                if (E == -1) {
                    v(this, "Unexpected EOF", E, null, 4, null);
                    throw new xc.c();
                }
            } else {
                i11++;
                if (i11 >= source.length()) {
                    d(i10, i11);
                    E = E(i11);
                    if (E == -1) {
                        v(this, "Unexpected EOF", E, null, 4, null);
                        throw new xc.c();
                    }
                } else {
                    continue;
                    charAt = source.charAt(i11);
                }
            }
            z10 = true;
            i10 = E;
            i11 = i10;
            charAt = source.charAt(i11);
        }
        if (!z10) {
            r10 = H(i10, i11);
        } else {
            r10 = r(i10, i11);
        }
        this.f24891a = i11 + 1;
        return r10;
    }

    public final String p() {
        String r10;
        if (this.f24893c != null) {
            return I();
        }
        int G = G();
        if (G < A().length() && G != -1) {
            byte a10 = b.a(A().charAt(G));
            if (a10 == 1) {
                return n();
            }
            if (a10 == 0) {
                boolean z10 = false;
                while (b.a(A().charAt(G)) == 0) {
                    G++;
                    if (G >= A().length()) {
                        d(this.f24891a, G);
                        int E = E(G);
                        if (E == -1) {
                            this.f24891a = G;
                            return r(0, 0);
                        }
                        G = E;
                        z10 = true;
                    }
                }
                if (!z10) {
                    r10 = H(this.f24891a, G);
                } else {
                    r10 = r(this.f24891a, G);
                }
                this.f24891a = G;
                return r10;
            }
            v(this, "Expected beginning of the string, but got " + A().charAt(G), 0, null, 6, null);
            throw new xc.c();
        }
        v(this, "EOF", G, null, 4, null);
        throw new xc.c();
    }

    public final String q() {
        String p10 = p();
        if (kotlin.jvm.internal.m.a(p10, "null") && N()) {
            v(this, "Unexpected 'null' value instead of string literal", 0, null, 6, null);
            throw new xc.c();
        }
        return p10;
    }

    public void s() {
    }

    public final void t() {
        if (j() == 10) {
            return;
        }
        v(this, "Expected EOF after parsing, but had " + A().charAt(this.f24891a - 1) + " instead", 0, null, 6, null);
        throw new xc.c();
    }

    public String toString() {
        return "JsonReader(source='" + ((Object) A()) + "', currentPosition=" + this.f24891a + ')';
    }

    public final Void u(String message, int i10, String hint) {
        boolean z10;
        String str;
        kotlin.jvm.internal.m.e(message, "message");
        kotlin.jvm.internal.m.e(hint, "hint");
        if (hint.length() == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            str = "";
        } else {
            str = '\n' + hint;
        }
        throw q.d(i10, message + " at path: " + this.f24892b.a() + str, A());
    }

    public final Void w(byte b10, boolean z10) {
        int i10;
        String str;
        String c10 = b.c(b10);
        if (z10) {
            i10 = this.f24891a - 1;
        } else {
            i10 = this.f24891a;
        }
        int i11 = i10;
        if (this.f24891a != A().length() && i11 >= 0) {
            str = String.valueOf(A().charAt(i11));
        } else {
            str = "EOF";
        }
        v(this, "Expected " + c10 + ", but had '" + str + "' instead", i11, null, 4, null);
        throw new xc.c();
    }

    public final void y(String key) {
        int f02;
        kotlin.jvm.internal.m.e(key, "key");
        f02 = rd.b0.f0(H(0, this.f24891a), key, 0, false, 6, null);
        u("Encountered an unknown key '" + key + '\'', f02, "Use 'ignoreUnknownKeys = true' in 'Json {}' builder to ignore unknown keys.");
        throw new xc.c();
    }
}
