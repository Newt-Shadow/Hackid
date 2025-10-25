package c9;

import com.google.gson.internal.f0;
import com.google.gson.internal.w;
import com.google.gson.t;
import java.io.Closeable;
import java.io.EOFException;
import java.io.Reader;
import java.util.Arrays;
import java.util.Objects;
import kotlin.KotlinVersion;
/* loaded from: classes.dex */
public class a implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    private final Reader f5060a;

    /* renamed from: j  reason: collision with root package name */
    private long f5069j;

    /* renamed from: k  reason: collision with root package name */
    private int f5070k;

    /* renamed from: l  reason: collision with root package name */
    private String f5071l;

    /* renamed from: m  reason: collision with root package name */
    private int[] f5072m;

    /* renamed from: o  reason: collision with root package name */
    private String[] f5074o;

    /* renamed from: p  reason: collision with root package name */
    private int[] f5075p;

    /* renamed from: b  reason: collision with root package name */
    private t f5061b = t.LEGACY_STRICT;

    /* renamed from: c  reason: collision with root package name */
    private int f5062c = KotlinVersion.MAX_COMPONENT_VALUE;

    /* renamed from: d  reason: collision with root package name */
    private final char[] f5063d = new char[1024];

    /* renamed from: e  reason: collision with root package name */
    private int f5064e = 0;

    /* renamed from: f  reason: collision with root package name */
    private int f5065f = 0;

    /* renamed from: g  reason: collision with root package name */
    private int f5066g = 0;

    /* renamed from: h  reason: collision with root package name */
    private int f5067h = 0;

    /* renamed from: i  reason: collision with root package name */
    int f5068i = 0;

    /* renamed from: n  reason: collision with root package name */
    private int f5073n = 0 + 1;

    /* renamed from: c9.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class C0091a extends w {
        C0091a() {
        }

        @Override // com.google.gson.internal.w
        public void a(a aVar) {
            if (aVar instanceof com.google.gson.internal.bind.a) {
                ((com.google.gson.internal.bind.a) aVar).b1();
                return;
            }
            int i10 = aVar.f5068i;
            if (i10 == 0) {
                i10 = aVar.f();
            }
            if (i10 == 13) {
                aVar.f5068i = 9;
            } else if (i10 == 12) {
                aVar.f5068i = 8;
            } else if (i10 == 14) {
                aVar.f5068i = 10;
            } else {
                throw aVar.V0("a name");
            }
        }
    }

    static {
        w.f9321a = new C0091a();
    }

    public a(Reader reader) {
        int[] iArr = new int[32];
        this.f5072m = iArr;
        iArr[0] = 6;
        this.f5074o = new String[32];
        this.f5075p = new int[32];
        Objects.requireNonNull(reader, "in == null");
        this.f5060a = reader;
    }

    private void A0(char c10) {
        char[] cArr = this.f5063d;
        do {
            int i10 = this.f5064e;
            int i11 = this.f5065f;
            while (i10 < i11) {
                int i12 = i10 + 1;
                char c11 = cArr[i10];
                if (c11 == c10) {
                    this.f5064e = i12;
                    return;
                } else if (c11 == '\\') {
                    this.f5064e = i12;
                    q0();
                    i10 = this.f5064e;
                    i11 = this.f5065f;
                } else {
                    if (c11 == '\n') {
                        this.f5066g++;
                        this.f5067h = i12;
                    }
                    i10 = i12;
                }
            }
            this.f5064e = i10;
        } while (h(1));
        throw U0("Unterminated string");
    }

    private boolean D0(String str) {
        int length = str.length();
        while (true) {
            if (this.f5064e + length > this.f5065f && !h(length)) {
                return false;
            }
            char[] cArr = this.f5063d;
            int i10 = this.f5064e;
            if (cArr[i10] == '\n') {
                this.f5066g++;
                this.f5067h = i10 + 1;
            } else {
                for (int i11 = 0; i11 < length; i11++) {
                    if (this.f5063d[this.f5064e + i11] != str.charAt(i11)) {
                        break;
                    }
                }
                return true;
            }
            this.f5064e++;
        }
    }

    private int E(boolean z10) {
        char[] cArr = this.f5063d;
        int i10 = this.f5064e;
        int i11 = this.f5065f;
        while (true) {
            if (i10 == i11) {
                this.f5064e = i10;
                if (!h(1)) {
                    if (!z10) {
                        return -1;
                    }
                    throw new EOFException("End of input" + x());
                }
                i10 = this.f5064e;
                i11 = this.f5065f;
            }
            int i12 = i10 + 1;
            char c10 = cArr[i10];
            if (c10 == '\n') {
                this.f5066g++;
                this.f5067h = i12;
            } else if (c10 != ' ' && c10 != '\r' && c10 != '\t') {
                if (c10 == '/') {
                    this.f5064e = i12;
                    if (i12 == i11) {
                        this.f5064e = i12 - 1;
                        boolean h10 = h(2);
                        this.f5064e++;
                        if (!h10) {
                            return c10;
                        }
                    }
                    c();
                    int i13 = this.f5064e;
                    char c11 = cArr[i13];
                    if (c11 != '*') {
                        if (c11 != '/') {
                            return c10;
                        }
                        this.f5064e = i13 + 1;
                        J0();
                        i10 = this.f5064e;
                        i11 = this.f5065f;
                    } else {
                        this.f5064e = i13 + 1;
                        if (D0("*/")) {
                            i10 = this.f5064e + 2;
                            i11 = this.f5065f;
                        } else {
                            throw U0("Unterminated comment");
                        }
                    }
                } else if (c10 == '#') {
                    this.f5064e = i12;
                    c();
                    J0();
                    i10 = this.f5064e;
                    i11 = this.f5065f;
                } else {
                    this.f5064e = i12;
                    return c10;
                }
            }
            i10 = i12;
        }
    }

    private void J0() {
        char c10;
        do {
            if (this.f5064e < this.f5065f || h(1)) {
                char[] cArr = this.f5063d;
                int i10 = this.f5064e;
                int i11 = i10 + 1;
                this.f5064e = i11;
                c10 = cArr[i10];
                if (c10 == '\n') {
                    this.f5066g++;
                    this.f5067h = i11;
                    return;
                }
            } else {
                return;
            }
        } while (c10 != '\r');
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x006e, code lost:
        if (r1 != null) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0070, code lost:
        r1 = new java.lang.StringBuilder(java.lang.Math.max((r2 - r3) * 2, 16));
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x007e, code lost:
        r1.append(r0, r3, r2 - r3);
        r10.f5064e = r2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String P(char r11) {
        /*
            r10 = this;
            char[] r0 = r10.f5063d
            r1 = 0
        L3:
            int r2 = r10.f5064e
            int r3 = r10.f5065f
        L7:
            r4 = r3
            r3 = r2
        L9:
            r5 = 16
            r6 = 1
            if (r2 >= r4) goto L6e
            int r7 = r2 + 1
            char r2 = r0[r2]
            com.google.gson.t r8 = r10.f5061b
            com.google.gson.t r9 = com.google.gson.t.STRICT
            if (r8 != r9) goto L24
            r8 = 32
            if (r2 < r8) goto L1d
            goto L24
        L1d:
            java.lang.String r11 = "Unescaped control characters (\\u0000-\\u001F) are not allowed in strict mode"
            c9.d r11 = r10.U0(r11)
            throw r11
        L24:
            if (r2 != r11) goto L3a
            r10.f5064e = r7
            int r7 = r7 - r3
            int r7 = r7 - r6
            if (r1 != 0) goto L32
            java.lang.String r11 = new java.lang.String
            r11.<init>(r0, r3, r7)
            return r11
        L32:
            r1.append(r0, r3, r7)
            java.lang.String r11 = r1.toString()
            return r11
        L3a:
            r8 = 92
            if (r2 != r8) goto L61
            r10.f5064e = r7
            int r7 = r7 - r3
            int r7 = r7 - r6
            if (r1 != 0) goto L52
            int r1 = r7 + 1
            int r1 = r1 * 2
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            int r1 = java.lang.Math.max(r1, r5)
            r2.<init>(r1)
            r1 = r2
        L52:
            r1.append(r0, r3, r7)
            char r2 = r10.q0()
            r1.append(r2)
            int r2 = r10.f5064e
            int r3 = r10.f5065f
            goto L7
        L61:
            r5 = 10
            if (r2 != r5) goto L6c
            int r2 = r10.f5066g
            int r2 = r2 + r6
            r10.f5066g = r2
            r10.f5067h = r7
        L6c:
            r2 = r7
            goto L9
        L6e:
            if (r1 != 0) goto L7e
            int r1 = r2 - r3
            int r1 = r1 * 2
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            int r1 = java.lang.Math.max(r1, r5)
            r4.<init>(r1)
            r1 = r4
        L7e:
            int r4 = r2 - r3
            r1.append(r0, r3, r4)
            r10.f5064e = r2
            boolean r2 = r10.h(r6)
            if (r2 == 0) goto L8d
            goto L3
        L8d:
            java.lang.String r11 = "Unterminated string"
            c9.d r11 = r10.U0(r11)
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: c9.a.P(char):java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0048, code lost:
        c();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void T0() {
        /*
            r4 = this;
        L0:
            r0 = 0
        L1:
            int r1 = r4.f5064e
            int r2 = r1 + r0
            int r3 = r4.f5065f
            if (r2 >= r3) goto L51
            char[] r2 = r4.f5063d
            int r1 = r1 + r0
            char r1 = r2[r1]
            r2 = 9
            if (r1 == r2) goto L4b
            r2 = 10
            if (r1 == r2) goto L4b
            r2 = 12
            if (r1 == r2) goto L4b
            r2 = 13
            if (r1 == r2) goto L4b
            r2 = 32
            if (r1 == r2) goto L4b
            r2 = 35
            if (r1 == r2) goto L48
            r2 = 44
            if (r1 == r2) goto L4b
            r2 = 47
            if (r1 == r2) goto L48
            r2 = 61
            if (r1 == r2) goto L48
            r2 = 123(0x7b, float:1.72E-43)
            if (r1 == r2) goto L4b
            r2 = 125(0x7d, float:1.75E-43)
            if (r1 == r2) goto L4b
            r2 = 58
            if (r1 == r2) goto L4b
            r2 = 59
            if (r1 == r2) goto L48
            switch(r1) {
                case 91: goto L4b;
                case 92: goto L48;
                case 93: goto L4b;
                default: goto L45;
            }
        L45:
            int r0 = r0 + 1
            goto L1
        L48:
            r4.c()
        L4b:
            int r1 = r4.f5064e
            int r1 = r1 + r0
            r4.f5064e = r1
            return
        L51:
            int r1 = r1 + r0
            r4.f5064e = r1
            r0 = 1
            boolean r0 = r4.h(r0)
            if (r0 != 0) goto L0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c9.a.T0():void");
    }

    private d U0(String str) {
        throw new d(str + x() + "\nSee " + f0.a("malformed-json"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public IllegalStateException V0(String str) {
        String str2;
        if (X() == b.NULL) {
            str2 = "adapter-not-null-safe";
        } else {
            str2 = "unexpected-json-structure";
        }
        return new IllegalStateException("Expected " + str + " but was " + X() + x() + "\nSee " + f0.a(str2));
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x004a, code lost:
        c();
     */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x008a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String W() {
        /*
            r6 = this;
            r0 = 0
            r1 = 0
        L2:
            r2 = r1
        L3:
            int r3 = r6.f5064e
            int r4 = r3 + r2
            int r5 = r6.f5065f
            if (r4 >= r5) goto L4e
            char[] r4 = r6.f5063d
            int r3 = r3 + r2
            char r3 = r4[r3]
            r4 = 9
            if (r3 == r4) goto L5c
            r4 = 10
            if (r3 == r4) goto L5c
            r4 = 12
            if (r3 == r4) goto L5c
            r4 = 13
            if (r3 == r4) goto L5c
            r4 = 32
            if (r3 == r4) goto L5c
            r4 = 35
            if (r3 == r4) goto L4a
            r4 = 44
            if (r3 == r4) goto L5c
            r4 = 47
            if (r3 == r4) goto L4a
            r4 = 61
            if (r3 == r4) goto L4a
            r4 = 123(0x7b, float:1.72E-43)
            if (r3 == r4) goto L5c
            r4 = 125(0x7d, float:1.75E-43)
            if (r3 == r4) goto L5c
            r4 = 58
            if (r3 == r4) goto L5c
            r4 = 59
            if (r3 == r4) goto L4a
            switch(r3) {
                case 91: goto L5c;
                case 92: goto L4a;
                case 93: goto L5c;
                default: goto L47;
            }
        L47:
            int r2 = r2 + 1
            goto L3
        L4a:
            r6.c()
            goto L5c
        L4e:
            char[] r3 = r6.f5063d
            int r3 = r3.length
            if (r2 >= r3) goto L5e
            int r3 = r2 + 1
            boolean r3 = r6.h(r3)
            if (r3 == 0) goto L5c
            goto L3
        L5c:
            r1 = r2
            goto L7e
        L5e:
            if (r0 != 0) goto L6b
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r3 = 16
            int r3 = java.lang.Math.max(r2, r3)
            r0.<init>(r3)
        L6b:
            char[] r3 = r6.f5063d
            int r4 = r6.f5064e
            r0.append(r3, r4, r2)
            int r3 = r6.f5064e
            int r3 = r3 + r2
            r6.f5064e = r3
            r2 = 1
            boolean r2 = r6.h(r2)
            if (r2 != 0) goto L2
        L7e:
            if (r0 != 0) goto L8a
            java.lang.String r0 = new java.lang.String
            char[] r2 = r6.f5063d
            int r3 = r6.f5064e
            r0.<init>(r2, r3, r1)
            goto L95
        L8a:
            char[] r2 = r6.f5063d
            int r3 = r6.f5064e
            r0.append(r2, r3, r1)
            java.lang.String r0 = r0.toString()
        L95:
            int r2 = r6.f5064e
            int r2 = r2 + r1
            r6.f5064e = r2
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: c9.a.W():java.lang.String");
    }

    private void c() {
        if (this.f5061b == t.LENIENT) {
            return;
        }
        throw U0("Use JsonReader.setStrictness(Strictness.LENIENT) to accept malformed JSON");
    }

    private int d0() {
        String str;
        String str2;
        int i10;
        boolean z10;
        boolean z11;
        char c10 = this.f5063d[this.f5064e];
        if (c10 != 't' && c10 != 'T') {
            if (c10 != 'f' && c10 != 'F') {
                if (c10 != 'n' && c10 != 'N') {
                    return 0;
                }
                str = "null";
                str2 = "NULL";
                i10 = 7;
            } else {
                str = "false";
                str2 = "FALSE";
                i10 = 6;
            }
        } else {
            str = "true";
            str2 = "TRUE";
            i10 = 5;
        }
        if (this.f5061b != t.STRICT) {
            z10 = true;
        } else {
            z10 = false;
        }
        int length = str.length();
        for (int i11 = 0; i11 < length; i11++) {
            if (this.f5064e + i11 >= this.f5065f && !h(i11 + 1)) {
                return 0;
            }
            char c11 = this.f5063d[this.f5064e + i11];
            if (c11 != str.charAt(i11) && (!z10 || c11 != str2.charAt(i11))) {
                z11 = false;
            } else {
                z11 = true;
            }
            if (!z11) {
                return 0;
            }
        }
        if ((this.f5064e + length < this.f5065f || h(length + 1)) && w(this.f5063d[this.f5064e + length])) {
            return 0;
        }
        this.f5064e += length;
        this.f5068i = i10;
        return i10;
    }

    private void e() {
        E(true);
        int i10 = this.f5064e - 1;
        this.f5064e = i10;
        if (i10 + 5 > this.f5065f && !h(5)) {
            return;
        }
        int i11 = this.f5064e;
        char[] cArr = this.f5063d;
        if (cArr[i11] == ')' && cArr[i11 + 1] == ']' && cArr[i11 + 2] == '}' && cArr[i11 + 3] == '\'' && cArr[i11 + 4] == '\n') {
            this.f5064e = i11 + 5;
        }
    }

    private boolean h(int i10) {
        int i11;
        int i12;
        char[] cArr = this.f5063d;
        int i13 = this.f5067h;
        int i14 = this.f5064e;
        this.f5067h = i13 - i14;
        int i15 = this.f5065f;
        if (i15 != i14) {
            int i16 = i15 - i14;
            this.f5065f = i16;
            System.arraycopy(cArr, i14, cArr, 0, i16);
        } else {
            this.f5065f = 0;
        }
        this.f5064e = 0;
        do {
            Reader reader = this.f5060a;
            int i17 = this.f5065f;
            int read = reader.read(cArr, i17, cArr.length - i17);
            if (read == -1) {
                return false;
            }
            i11 = this.f5065f + read;
            this.f5065f = i11;
            if (this.f5066g == 0 && (i12 = this.f5067h) == 0 && i11 > 0 && cArr[0] == 65279) {
                this.f5064e++;
                this.f5067h = i12 + 1;
                i10++;
                continue;
            }
        } while (i11 < i10);
        return true;
    }

    private String k(boolean z10) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append('$');
        int i10 = 0;
        while (true) {
            int i11 = this.f5073n;
            if (i10 < i11) {
                int i12 = this.f5072m[i10];
                switch (i12) {
                    case 1:
                    case 2:
                        int i13 = this.f5075p[i10];
                        if (z10 && i13 > 0 && i10 == i11 - 1) {
                            i13--;
                        }
                        sb2.append('[');
                        sb2.append(i13);
                        sb2.append(']');
                        break;
                    case 3:
                    case 4:
                    case 5:
                        sb2.append('.');
                        String str = this.f5074o[i10];
                        if (str == null) {
                            break;
                        } else {
                            sb2.append(str);
                            break;
                        }
                    case 6:
                    case 7:
                    case 8:
                        break;
                    default:
                        throw new AssertionError("Unknown scope value: " + i12);
                }
                i10++;
            } else {
                return sb2.toString();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x0091, code lost:
        if (w(r14) != false) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0093, code lost:
        if (r9 != 2) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0095, code lost:
        if (r10 == false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x009b, code lost:
        if (r11 != Long.MIN_VALUE) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x009d, code lost:
        if (r13 == false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00a3, code lost:
        if (r11 != 0) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00a5, code lost:
        if (r13 != false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00a7, code lost:
        if (r13 == false) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00aa, code lost:
        r11 = -r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00ab, code lost:
        r18.f5069j = r11;
        r18.f5064e += r8;
        r18.f5068i = 15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00b6, code lost:
        return 15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00b7, code lost:
        if (r9 == 2) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00ba, code lost:
        if (r9 == 4) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x00bd, code lost:
        if (r9 != 7) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x00c0, code lost:
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x00c2, code lost:
        r18.f5070k = r8;
        r18.f5068i = 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x00c8, code lost:
        return 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x00c9, code lost:
        return 0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int k0() {
        /*
            Method dump skipped, instructions count: 247
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: c9.a.k0():int");
    }

    private void o0(int i10) {
        int i11 = this.f5073n;
        if (i11 - 1 < this.f5062c) {
            int[] iArr = this.f5072m;
            if (i11 == iArr.length) {
                int i12 = i11 * 2;
                this.f5072m = Arrays.copyOf(iArr, i12);
                this.f5075p = Arrays.copyOf(this.f5075p, i12);
                this.f5074o = (String[]) Arrays.copyOf(this.f5074o, i12);
            }
            int[] iArr2 = this.f5072m;
            int i13 = this.f5073n;
            this.f5073n = i13 + 1;
            iArr2[i13] = i10;
            return;
        }
        throw new d("Nesting limit " + this.f5062c + " reached" + x());
    }

    private char q0() {
        int i10;
        int i11;
        if (this.f5064e == this.f5065f && !h(1)) {
            throw U0("Unterminated escape sequence");
        }
        char[] cArr = this.f5063d;
        int i12 = this.f5064e;
        int i13 = i12 + 1;
        this.f5064e = i13;
        char c10 = cArr[i12];
        if (c10 != '\n') {
            if (c10 != '\"') {
                if (c10 != '\'') {
                    if (c10 != '/' && c10 != '\\') {
                        if (c10 != 'b') {
                            if (c10 != 'f') {
                                if (c10 == 'n') {
                                    return '\n';
                                }
                                if (c10 != 'r') {
                                    if (c10 != 't') {
                                        if (c10 == 'u') {
                                            if (i13 + 4 > this.f5065f && !h(4)) {
                                                throw U0("Unterminated escape sequence");
                                            }
                                            int i14 = this.f5064e;
                                            int i15 = i14 + 4;
                                            int i16 = 0;
                                            while (i14 < i15) {
                                                char c11 = this.f5063d[i14];
                                                int i17 = i16 << 4;
                                                if (c11 >= '0' && c11 <= '9') {
                                                    i11 = c11 - '0';
                                                } else {
                                                    if (c11 >= 'a' && c11 <= 'f') {
                                                        i10 = c11 - 'a';
                                                    } else if (c11 >= 'A' && c11 <= 'F') {
                                                        i10 = c11 - 'A';
                                                    } else {
                                                        throw U0("Malformed Unicode escape \\u" + new String(this.f5063d, this.f5064e, 4));
                                                    }
                                                    i11 = i10 + 10;
                                                }
                                                i16 = i17 + i11;
                                                i14++;
                                            }
                                            this.f5064e += 4;
                                            return (char) i16;
                                        }
                                        throw U0("Invalid escape sequence");
                                    }
                                    return '\t';
                                }
                                return '\r';
                            }
                            return '\f';
                        }
                        return '\b';
                    }
                }
            }
            return c10;
        } else if (this.f5061b != t.STRICT) {
            this.f5066g++;
            this.f5067h = i13;
        } else {
            throw U0("Cannot escape a newline character in strict mode");
        }
        if (this.f5061b == t.STRICT) {
            throw U0("Invalid escaped character \"'\" in strict mode");
        }
        return c10;
    }

    private boolean w(char c10) {
        if (c10 != '\t' && c10 != '\n' && c10 != '\f' && c10 != '\r' && c10 != ' ') {
            if (c10 != '#') {
                if (c10 != ',') {
                    if (c10 != '/' && c10 != '=') {
                        if (c10 != '{' && c10 != '}' && c10 != ':') {
                            if (c10 != ';') {
                                switch (c10) {
                                    case '[':
                                    case ']':
                                        return false;
                                    case '\\':
                                        break;
                                    default:
                                        return true;
                                }
                            }
                        } else {
                            return false;
                        }
                    }
                } else {
                    return false;
                }
            }
            c();
            return false;
        }
        return false;
    }

    public String C() {
        String str;
        int i10 = this.f5068i;
        if (i10 == 0) {
            i10 = f();
        }
        if (i10 == 10) {
            str = W();
        } else if (i10 == 8) {
            str = P('\'');
        } else if (i10 == 9) {
            str = P('\"');
        } else if (i10 == 11) {
            str = this.f5071l;
            this.f5071l = null;
        } else if (i10 == 15) {
            str = Long.toString(this.f5069j);
        } else if (i10 == 16) {
            str = new String(this.f5063d, this.f5064e, this.f5070k);
            this.f5064e += this.f5070k;
        } else {
            throw V0("a string");
        }
        this.f5068i = 0;
        int[] iArr = this.f5075p;
        int i11 = this.f5073n - 1;
        iArr[i11] = iArr[i11] + 1;
        return str;
    }

    public long E0() {
        char c10;
        int i10 = this.f5068i;
        if (i10 == 0) {
            i10 = f();
        }
        if (i10 == 15) {
            this.f5068i = 0;
            int[] iArr = this.f5075p;
            int i11 = this.f5073n - 1;
            iArr[i11] = iArr[i11] + 1;
            return this.f5069j;
        }
        if (i10 == 16) {
            this.f5071l = new String(this.f5063d, this.f5064e, this.f5070k);
            this.f5064e += this.f5070k;
        } else if (i10 != 8 && i10 != 9 && i10 != 10) {
            throw V0("a long");
        } else {
            if (i10 == 10) {
                this.f5071l = W();
            } else {
                if (i10 == 8) {
                    c10 = '\'';
                } else {
                    c10 = '\"';
                }
                this.f5071l = P(c10);
            }
            try {
                long parseLong = Long.parseLong(this.f5071l);
                this.f5068i = 0;
                int[] iArr2 = this.f5075p;
                int i12 = this.f5073n - 1;
                iArr2[i12] = iArr2[i12] + 1;
                return parseLong;
            } catch (NumberFormatException unused) {
            }
        }
        this.f5068i = 11;
        double parseDouble = Double.parseDouble(this.f5071l);
        long j10 = (long) parseDouble;
        if (j10 == parseDouble) {
            this.f5071l = null;
            this.f5068i = 0;
            int[] iArr3 = this.f5075p;
            int i13 = this.f5073n - 1;
            iArr3[i13] = iArr3[i13] + 1;
            return j10;
        }
        throw new NumberFormatException("Expected a long but was " + this.f5071l + x());
    }

    public void G() {
        int i10 = 0;
        do {
            int i11 = this.f5068i;
            if (i11 == 0) {
                i11 = f();
            }
            switch (i11) {
                case 1:
                    o0(3);
                    i10++;
                    break;
                case 2:
                    if (i10 == 0) {
                        this.f5074o[this.f5073n - 1] = null;
                    }
                    this.f5073n--;
                    i10--;
                    break;
                case 3:
                    o0(1);
                    i10++;
                    break;
                case 4:
                    this.f5073n--;
                    i10--;
                    break;
                case 8:
                    A0('\'');
                    break;
                case 9:
                    A0('\"');
                    break;
                case 10:
                    T0();
                    break;
                case 12:
                    A0('\'');
                    if (i10 == 0) {
                        this.f5074o[this.f5073n - 1] = "<skipped>";
                        break;
                    }
                    break;
                case 13:
                    A0('\"');
                    if (i10 == 0) {
                        this.f5074o[this.f5073n - 1] = "<skipped>";
                        break;
                    }
                    break;
                case 14:
                    T0();
                    if (i10 == 0) {
                        this.f5074o[this.f5073n - 1] = "<skipped>";
                        break;
                    }
                    break;
                case 16:
                    this.f5064e += this.f5070k;
                    break;
                case 17:
                    return;
            }
            this.f5068i = 0;
        } while (i10 > 0);
        int[] iArr = this.f5075p;
        int i12 = this.f5073n - 1;
        iArr[i12] = iArr[i12] + 1;
    }

    public void H() {
        int i10 = this.f5068i;
        if (i10 == 0) {
            i10 = f();
        }
        if (i10 == 7) {
            this.f5068i = 0;
            int[] iArr = this.f5075p;
            int i11 = this.f5073n - 1;
            iArr[i11] = iArr[i11] + 1;
            return;
        }
        throw V0("null");
    }

    public double S() {
        char c10;
        int i10 = this.f5068i;
        if (i10 == 0) {
            i10 = f();
        }
        if (i10 == 15) {
            this.f5068i = 0;
            int[] iArr = this.f5075p;
            int i11 = this.f5073n - 1;
            iArr[i11] = iArr[i11] + 1;
            return this.f5069j;
        }
        if (i10 == 16) {
            this.f5071l = new String(this.f5063d, this.f5064e, this.f5070k);
            this.f5064e += this.f5070k;
        } else if (i10 != 8 && i10 != 9) {
            if (i10 == 10) {
                this.f5071l = W();
            } else if (i10 != 11) {
                throw V0("a double");
            }
        } else {
            if (i10 == 8) {
                c10 = '\'';
            } else {
                c10 = '\"';
            }
            this.f5071l = P(c10);
        }
        this.f5068i = 11;
        double parseDouble = Double.parseDouble(this.f5071l);
        if (this.f5061b != t.LENIENT && (Double.isNaN(parseDouble) || Double.isInfinite(parseDouble))) {
            throw U0("JSON forbids NaN and infinities: " + parseDouble);
        }
        this.f5071l = null;
        this.f5068i = 0;
        int[] iArr2 = this.f5075p;
        int i12 = this.f5073n - 1;
        iArr2[i12] = iArr2[i12] + 1;
        return parseDouble;
    }

    public b X() {
        int i10 = this.f5068i;
        if (i10 == 0) {
            i10 = f();
        }
        switch (i10) {
            case 1:
                return b.BEGIN_OBJECT;
            case 2:
                return b.END_OBJECT;
            case 3:
                return b.BEGIN_ARRAY;
            case 4:
                return b.END_ARRAY;
            case 5:
            case 6:
                return b.BOOLEAN;
            case 7:
                return b.NULL;
            case 8:
            case 9:
            case 10:
            case 11:
                return b.STRING;
            case 12:
            case 13:
            case 14:
                return b.NAME;
            case 15:
            case 16:
                return b.NUMBER;
            case 17:
                return b.END_DOCUMENT;
            default:
                throw new AssertionError();
        }
    }

    public void b() {
        int i10 = this.f5068i;
        if (i10 == 0) {
            i10 = f();
        }
        if (i10 == 3) {
            o0(1);
            this.f5075p[this.f5073n - 1] = 0;
            this.f5068i = 0;
            return;
        }
        throw V0("BEGIN_ARRAY");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f5068i = 0;
        this.f5072m[0] = 8;
        this.f5073n = 1;
        this.f5060a.close();
    }

    int f() {
        int E;
        int[] iArr = this.f5072m;
        int i10 = this.f5073n;
        int i11 = iArr[i10 - 1];
        if (i11 == 1) {
            iArr[i10 - 1] = 2;
        } else if (i11 == 2) {
            int E2 = E(true);
            if (E2 != 44) {
                if (E2 != 59) {
                    if (E2 == 93) {
                        this.f5068i = 4;
                        return 4;
                    }
                    throw U0("Unterminated array");
                }
                c();
            }
        } else if (i11 != 3 && i11 != 5) {
            if (i11 == 4) {
                iArr[i10 - 1] = 5;
                int E3 = E(true);
                if (E3 != 58) {
                    if (E3 == 61) {
                        c();
                        if (this.f5064e < this.f5065f || h(1)) {
                            char[] cArr = this.f5063d;
                            int i12 = this.f5064e;
                            if (cArr[i12] == '>') {
                                this.f5064e = i12 + 1;
                            }
                        }
                    } else {
                        throw U0("Expected ':'");
                    }
                }
            } else if (i11 == 6) {
                if (this.f5061b == t.LENIENT) {
                    e();
                }
                this.f5072m[this.f5073n - 1] = 7;
            } else if (i11 == 7) {
                if (E(false) == -1) {
                    this.f5068i = 17;
                    return 17;
                }
                c();
                this.f5064e--;
            } else if (i11 == 8) {
                throw new IllegalStateException("JsonReader is closed");
            }
        } else {
            iArr[i10 - 1] = 4;
            if (i11 == 5 && (E = E(true)) != 44) {
                if (E != 59) {
                    if (E == 125) {
                        this.f5068i = 2;
                        return 2;
                    }
                    throw U0("Unterminated object");
                }
                c();
            }
            int E4 = E(true);
            if (E4 != 34) {
                if (E4 != 39) {
                    if (E4 != 125) {
                        c();
                        this.f5064e--;
                        if (w((char) E4)) {
                            this.f5068i = 14;
                            return 14;
                        }
                        throw U0("Expected name");
                    } else if (i11 != 5) {
                        this.f5068i = 2;
                        return 2;
                    } else {
                        throw U0("Expected name");
                    }
                }
                c();
                this.f5068i = 12;
                return 12;
            }
            this.f5068i = 13;
            return 13;
        }
        int E5 = E(true);
        if (E5 != 34) {
            if (E5 != 39) {
                if (E5 != 44 && E5 != 59) {
                    if (E5 != 91) {
                        if (E5 != 93) {
                            if (E5 != 123) {
                                this.f5064e--;
                                int d02 = d0();
                                if (d02 != 0) {
                                    return d02;
                                }
                                int k02 = k0();
                                if (k02 != 0) {
                                    return k02;
                                }
                                if (w(this.f5063d[this.f5064e])) {
                                    c();
                                    this.f5068i = 10;
                                    return 10;
                                }
                                throw U0("Expected value");
                            }
                            this.f5068i = 1;
                            return 1;
                        } else if (i11 == 1) {
                            this.f5068i = 4;
                            return 4;
                        }
                    } else {
                        this.f5068i = 3;
                        return 3;
                    }
                }
                if (i11 != 1 && i11 != 2) {
                    throw U0("Unexpected value");
                }
                c();
                this.f5064e--;
                this.f5068i = 7;
                return 7;
            }
            c();
            this.f5068i = 8;
            return 8;
        }
        this.f5068i = 9;
        return 9;
    }

    public String f0() {
        String P;
        int i10 = this.f5068i;
        if (i10 == 0) {
            i10 = f();
        }
        if (i10 == 14) {
            P = W();
        } else if (i10 == 12) {
            P = P('\'');
        } else if (i10 == 13) {
            P = P('\"');
        } else {
            throw V0("a name");
        }
        this.f5068i = 0;
        this.f5074o[this.f5073n - 1] = P;
        return P;
    }

    public void g() {
        int i10 = this.f5068i;
        if (i10 == 0) {
            i10 = f();
        }
        if (i10 == 4) {
            int i11 = this.f5073n - 1;
            this.f5073n = i11;
            int[] iArr = this.f5075p;
            int i12 = i11 - 1;
            iArr[i12] = iArr[i12] + 1;
            this.f5068i = 0;
            return;
        }
        throw V0("END_ARRAY");
    }

    public String j() {
        return k(false);
    }

    public int j0() {
        char c10;
        int i10 = this.f5068i;
        if (i10 == 0) {
            i10 = f();
        }
        if (i10 == 15) {
            long j10 = this.f5069j;
            int i11 = (int) j10;
            if (j10 == i11) {
                this.f5068i = 0;
                int[] iArr = this.f5075p;
                int i12 = this.f5073n - 1;
                iArr[i12] = iArr[i12] + 1;
                return i11;
            }
            throw new NumberFormatException("Expected an int but was " + this.f5069j + x());
        }
        if (i10 == 16) {
            this.f5071l = new String(this.f5063d, this.f5064e, this.f5070k);
            this.f5064e += this.f5070k;
        } else if (i10 != 8 && i10 != 9 && i10 != 10) {
            throw V0("an int");
        } else {
            if (i10 == 10) {
                this.f5071l = W();
            } else {
                if (i10 == 8) {
                    c10 = '\'';
                } else {
                    c10 = '\"';
                }
                this.f5071l = P(c10);
            }
            try {
                int parseInt = Integer.parseInt(this.f5071l);
                this.f5068i = 0;
                int[] iArr2 = this.f5075p;
                int i13 = this.f5073n - 1;
                iArr2[i13] = iArr2[i13] + 1;
                return parseInt;
            } catch (NumberFormatException unused) {
            }
        }
        this.f5068i = 11;
        double parseDouble = Double.parseDouble(this.f5071l);
        int i14 = (int) parseDouble;
        if (i14 == parseDouble) {
            this.f5071l = null;
            this.f5068i = 0;
            int[] iArr3 = this.f5075p;
            int i15 = this.f5073n - 1;
            iArr3[i15] = iArr3[i15] + 1;
            return i14;
        }
        throw new NumberFormatException("Expected an int but was " + this.f5071l + x());
    }

    public String q() {
        return k(true);
    }

    public void r() {
        int i10 = this.f5068i;
        if (i10 == 0) {
            i10 = f();
        }
        if (i10 == 2) {
            int i11 = this.f5073n - 1;
            this.f5073n = i11;
            this.f5074o[i11] = null;
            int[] iArr = this.f5075p;
            int i12 = i11 - 1;
            iArr[i12] = iArr[i12] + 1;
            this.f5068i = 0;
            return;
        }
        throw V0("END_OBJECT");
    }

    public final t s() {
        return this.f5061b;
    }

    public void t() {
        int i10 = this.f5068i;
        if (i10 == 0) {
            i10 = f();
        }
        if (i10 == 1) {
            o0(3);
            this.f5068i = 0;
            return;
        }
        throw V0("BEGIN_OBJECT");
    }

    public final void t0(t tVar) {
        Objects.requireNonNull(tVar);
        this.f5061b = tVar;
    }

    public String toString() {
        return getClass().getSimpleName() + x();
    }

    public boolean u() {
        int i10 = this.f5068i;
        if (i10 == 0) {
            i10 = f();
        }
        if (i10 != 2 && i10 != 4 && i10 != 17) {
            return true;
        }
        return false;
    }

    public final boolean v() {
        if (this.f5061b == t.LENIENT) {
            return true;
        }
        return false;
    }

    String x() {
        return " at line " + (this.f5066g + 1) + " column " + ((this.f5064e - this.f5067h) + 1) + " path " + j();
    }

    public boolean z() {
        int i10 = this.f5068i;
        if (i10 == 0) {
            i10 = f();
        }
        if (i10 == 5) {
            this.f5068i = 0;
            int[] iArr = this.f5075p;
            int i11 = this.f5073n - 1;
            iArr[i11] = iArr[i11] + 1;
            return true;
        } else if (i10 == 6) {
            this.f5068i = 0;
            int[] iArr2 = this.f5075p;
            int i12 = this.f5073n - 1;
            iArr2[i12] = iArr2[i12] + 1;
            return false;
        } else {
            throw V0("a boolean");
        }
    }
}
