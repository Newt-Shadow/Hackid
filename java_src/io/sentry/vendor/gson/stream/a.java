package io.sentry.vendor.gson.stream;

import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.util.Arrays;
/* loaded from: classes2.dex */
public class a implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    private final Reader f23863a;

    /* renamed from: i  reason: collision with root package name */
    private long f23871i;

    /* renamed from: j  reason: collision with root package name */
    private int f23872j;

    /* renamed from: k  reason: collision with root package name */
    private String f23873k;

    /* renamed from: l  reason: collision with root package name */
    private int[] f23874l;

    /* renamed from: n  reason: collision with root package name */
    private String[] f23876n;

    /* renamed from: o  reason: collision with root package name */
    private int[] f23877o;

    /* renamed from: b  reason: collision with root package name */
    private boolean f23864b = false;

    /* renamed from: c  reason: collision with root package name */
    private final char[] f23865c = new char[1024];

    /* renamed from: d  reason: collision with root package name */
    private int f23866d = 0;

    /* renamed from: e  reason: collision with root package name */
    private int f23867e = 0;

    /* renamed from: f  reason: collision with root package name */
    private int f23868f = 0;

    /* renamed from: g  reason: collision with root package name */
    private int f23869g = 0;

    /* renamed from: h  reason: collision with root package name */
    int f23870h = 0;

    /* renamed from: m  reason: collision with root package name */
    private int f23875m = 0 + 1;

    public a(Reader reader) {
        int[] iArr = new int[32];
        this.f23874l = iArr;
        iArr[0] = 6;
        this.f23876n = new String[32];
        this.f23877o = new int[32];
        if (reader != null) {
            this.f23863a = reader;
            return;
        }
        throw new NullPointerException("in == null");
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x0091, code lost:
        if (k(r14) != false) goto L76;
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
        r18.f23871i = r11;
        r18.f23866d += r8;
        r18.f23870h = 15;
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
        r18.f23872j = r8;
        r18.f23870h = 16;
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
    private int E() {
        /*
            Method dump skipped, instructions count: 247
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.vendor.gson.stream.a.E():int");
    }

    private void H(int i10) {
        int i11 = this.f23875m;
        int[] iArr = this.f23874l;
        if (i11 == iArr.length) {
            int i12 = i11 * 2;
            this.f23874l = Arrays.copyOf(iArr, i12);
            this.f23877o = Arrays.copyOf(this.f23877o, i12);
            this.f23876n = (String[]) Arrays.copyOf(this.f23876n, i12);
        }
        int[] iArr2 = this.f23874l;
        int i13 = this.f23875m;
        this.f23875m = i13 + 1;
        iArr2[i13] = i10;
    }

    private char P() {
        int i10;
        int i11;
        if (this.f23866d == this.f23867e && !g(1)) {
            throw o0("Unterminated escape sequence");
        }
        char[] cArr = this.f23865c;
        int i12 = this.f23866d;
        int i13 = i12 + 1;
        this.f23866d = i13;
        char c10 = cArr[i12];
        if (c10 != '\n') {
            if (c10 != '\"' && c10 != '\'' && c10 != '/' && c10 != '\\') {
                if (c10 != 'b') {
                    if (c10 != 'f') {
                        if (c10 == 'n') {
                            return '\n';
                        }
                        if (c10 != 'r') {
                            if (c10 != 't') {
                                if (c10 == 'u') {
                                    if (i13 + 4 > this.f23867e && !g(4)) {
                                        throw o0("Unterminated escape sequence");
                                    }
                                    int i14 = this.f23866d;
                                    int i15 = i14 + 4;
                                    char c11 = 0;
                                    while (i14 < i15) {
                                        char c12 = this.f23865c[i14];
                                        char c13 = (char) (c11 << 4);
                                        if (c12 >= '0' && c12 <= '9') {
                                            i11 = c12 - '0';
                                        } else {
                                            if (c12 >= 'a' && c12 <= 'f') {
                                                i10 = c12 - 'a';
                                            } else if (c12 >= 'A' && c12 <= 'F') {
                                                i10 = c12 - 'A';
                                            } else {
                                                throw new NumberFormatException("\\u" + new String(this.f23865c, this.f23866d, 4));
                                            }
                                            i11 = i10 + 10;
                                        }
                                        c11 = (char) (c13 + i11);
                                        i14++;
                                    }
                                    this.f23866d += 4;
                                    return c11;
                                }
                                throw o0("Invalid escape sequence");
                            }
                            return '\t';
                        }
                        return '\r';
                    }
                    return '\f';
                }
                return '\b';
            }
        } else {
            this.f23868f++;
            this.f23869g = i13;
        }
        return c10;
    }

    private void W(char c10) {
        char[] cArr = this.f23865c;
        do {
            int i10 = this.f23866d;
            int i11 = this.f23867e;
            while (i10 < i11) {
                int i12 = i10 + 1;
                char c11 = cArr[i10];
                if (c11 == c10) {
                    this.f23866d = i12;
                    return;
                } else if (c11 == '\\') {
                    this.f23866d = i12;
                    P();
                    i10 = this.f23866d;
                    i11 = this.f23867e;
                } else {
                    if (c11 == '\n') {
                        this.f23868f++;
                        this.f23869g = i12;
                    }
                    i10 = i12;
                }
            }
            this.f23866d = i10;
        } while (g(1));
        throw o0("Unterminated string");
    }

    private boolean X(String str) {
        int length = str.length();
        while (true) {
            if (this.f23866d + length > this.f23867e && !g(length)) {
                return false;
            }
            char[] cArr = this.f23865c;
            int i10 = this.f23866d;
            if (cArr[i10] == '\n') {
                this.f23868f++;
                this.f23869g = i10 + 1;
            } else {
                for (int i11 = 0; i11 < length; i11++) {
                    if (this.f23865c[this.f23866d + i11] != str.charAt(i11)) {
                        break;
                    }
                }
                return true;
            }
            this.f23866d++;
        }
    }

    private void b() {
        if (this.f23864b) {
            return;
        }
        throw o0("Use JsonReader.setLenient(true) to accept malformed JSON");
    }

    private void c() {
        u(true);
        int i10 = this.f23866d - 1;
        this.f23866d = i10;
        if (i10 + 5 > this.f23867e && !g(5)) {
            return;
        }
        char[] cArr = this.f23865c;
        if (cArr[i10] == ')' && cArr[i10 + 1] == ']' && cArr[i10 + 2] == '}' && cArr[i10 + 3] == '\'' && cArr[i10 + 4] == '\n') {
            this.f23866d += 5;
        }
    }

    private void d0() {
        char c10;
        do {
            if (this.f23866d < this.f23867e || g(1)) {
                char[] cArr = this.f23865c;
                int i10 = this.f23866d;
                int i11 = i10 + 1;
                this.f23866d = i11;
                c10 = cArr[i10];
                if (c10 == '\n') {
                    this.f23868f++;
                    this.f23869g = i11;
                    return;
                }
            } else {
                return;
            }
        } while (c10 != '\r');
    }

    private boolean g(int i10) {
        int i11;
        int i12;
        char[] cArr = this.f23865c;
        int i13 = this.f23869g;
        int i14 = this.f23866d;
        this.f23869g = i13 - i14;
        int i15 = this.f23867e;
        if (i15 != i14) {
            int i16 = i15 - i14;
            this.f23867e = i16;
            System.arraycopy(cArr, i14, cArr, 0, i16);
        } else {
            this.f23867e = 0;
        }
        this.f23866d = 0;
        do {
            Reader reader = this.f23863a;
            int i17 = this.f23867e;
            int read = reader.read(cArr, i17, cArr.length - i17);
            if (read == -1) {
                return false;
            }
            i11 = this.f23867e + read;
            this.f23867e = i11;
            if (this.f23868f == 0 && (i12 = this.f23869g) == 0 && i11 > 0 && cArr[0] == 65279) {
                this.f23866d++;
                this.f23869g = i12 + 1;
                i10++;
                continue;
            }
        } while (i11 < i10);
        return true;
    }

    private boolean k(char c10) {
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
            b();
            return false;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0048, code lost:
        b();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void k0() {
        /*
            r4 = this;
        L0:
            r0 = 0
        L1:
            int r1 = r4.f23866d
            int r2 = r1 + r0
            int r3 = r4.f23867e
            if (r2 >= r3) goto L51
            char[] r2 = r4.f23865c
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
            r4.b()
        L4b:
            int r1 = r4.f23866d
            int r1 = r1 + r0
            r4.f23866d = r1
            return
        L51:
            int r1 = r1 + r0
            r4.f23866d = r1
            r0 = 1
            boolean r0 = r4.g(r0)
            if (r0 != 0) goto L0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.vendor.gson.stream.a.k0():void");
    }

    private IOException o0(String str) {
        throw new d(str + q());
    }

    private int u(boolean z10) {
        char[] cArr = this.f23865c;
        int i10 = this.f23866d;
        int i11 = this.f23867e;
        while (true) {
            if (i10 == i11) {
                this.f23866d = i10;
                if (!g(1)) {
                    if (!z10) {
                        return -1;
                    }
                    throw new EOFException("End of input" + q());
                }
                i10 = this.f23866d;
                i11 = this.f23867e;
            }
            int i12 = i10 + 1;
            char c10 = cArr[i10];
            if (c10 == '\n') {
                this.f23868f++;
                this.f23869g = i12;
            } else if (c10 != ' ' && c10 != '\r' && c10 != '\t') {
                if (c10 == '/') {
                    this.f23866d = i12;
                    if (i12 == i11) {
                        this.f23866d = i12 - 1;
                        boolean g10 = g(2);
                        this.f23866d++;
                        if (!g10) {
                            return c10;
                        }
                    }
                    b();
                    int i13 = this.f23866d;
                    char c11 = cArr[i13];
                    if (c11 != '*') {
                        if (c11 != '/') {
                            return c10;
                        }
                        this.f23866d = i13 + 1;
                        d0();
                        i10 = this.f23866d;
                        i11 = this.f23867e;
                    } else {
                        this.f23866d = i13 + 1;
                        if (X("*/")) {
                            i10 = this.f23866d + 2;
                            i11 = this.f23867e;
                        } else {
                            throw o0("Unterminated comment");
                        }
                    }
                } else if (c10 == '#') {
                    this.f23866d = i12;
                    b();
                    d0();
                    i10 = this.f23866d;
                    i11 = this.f23867e;
                } else {
                    this.f23866d = i12;
                    return c10;
                }
            }
            i10 = i12;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x005c, code lost:
        if (r1 != null) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x005e, code lost:
        r1 = new java.lang.StringBuilder(java.lang.Math.max((r2 - r3) * 2, 16));
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x006c, code lost:
        r1.append(r0, r3, r2 - r3);
        r9.f23866d = r2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String w(char r10) {
        /*
            r9 = this;
            char[] r0 = r9.f23865c
            r1 = 0
        L3:
            int r2 = r9.f23866d
            int r3 = r9.f23867e
        L7:
            r4 = r3
            r3 = r2
        L9:
            r5 = 16
            r6 = 1
            if (r2 >= r4) goto L5c
            int r7 = r2 + 1
            char r2 = r0[r2]
            if (r2 != r10) goto L28
            r9.f23866d = r7
            int r7 = r7 - r3
            int r7 = r7 - r6
            if (r1 != 0) goto L20
            java.lang.String r10 = new java.lang.String
            r10.<init>(r0, r3, r7)
            return r10
        L20:
            r1.append(r0, r3, r7)
            java.lang.String r10 = r1.toString()
            return r10
        L28:
            r8 = 92
            if (r2 != r8) goto L4f
            r9.f23866d = r7
            int r7 = r7 - r3
            int r7 = r7 - r6
            if (r1 != 0) goto L40
            int r1 = r7 + 1
            int r1 = r1 * 2
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            int r1 = java.lang.Math.max(r1, r5)
            r2.<init>(r1)
            r1 = r2
        L40:
            r1.append(r0, r3, r7)
            char r2 = r9.P()
            r1.append(r2)
            int r2 = r9.f23866d
            int r3 = r9.f23867e
            goto L7
        L4f:
            r5 = 10
            if (r2 != r5) goto L5a
            int r2 = r9.f23868f
            int r2 = r2 + r6
            r9.f23868f = r2
            r9.f23869g = r7
        L5a:
            r2 = r7
            goto L9
        L5c:
            if (r1 != 0) goto L6c
            int r1 = r2 - r3
            int r1 = r1 * 2
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            int r1 = java.lang.Math.max(r1, r5)
            r4.<init>(r1)
            r1 = r4
        L6c:
            int r4 = r2 - r3
            r1.append(r0, r3, r4)
            r9.f23866d = r2
            boolean r2 = r9.g(r6)
            if (r2 == 0) goto L7a
            goto L3
        L7a:
            java.lang.String r10 = "Unterminated string"
            java.io.IOException r10 = r9.o0(r10)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.vendor.gson.stream.a.w(char):java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x004a, code lost:
        b();
     */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x008a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String x() {
        /*
            r6 = this;
            r0 = 0
            r1 = 0
        L2:
            r2 = r1
        L3:
            int r3 = r6.f23866d
            int r4 = r3 + r2
            int r5 = r6.f23867e
            if (r4 >= r5) goto L4e
            char[] r4 = r6.f23865c
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
            r6.b()
            goto L5c
        L4e:
            char[] r3 = r6.f23865c
            int r3 = r3.length
            if (r2 >= r3) goto L5e
            int r3 = r2 + 1
            boolean r3 = r6.g(r3)
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
            char[] r3 = r6.f23865c
            int r4 = r6.f23866d
            r0.append(r3, r4, r2)
            int r3 = r6.f23866d
            int r3 = r3 + r2
            r6.f23866d = r3
            r2 = 1
            boolean r2 = r6.g(r2)
            if (r2 != 0) goto L2
        L7e:
            if (r0 != 0) goto L8a
            java.lang.String r0 = new java.lang.String
            char[] r2 = r6.f23865c
            int r3 = r6.f23866d
            r0.<init>(r2, r3, r1)
            goto L95
        L8a:
            char[] r2 = r6.f23865c
            int r3 = r6.f23866d
            r0.append(r2, r3, r1)
            java.lang.String r0 = r0.toString()
        L95:
            int r2 = r6.f23866d
            int r2 = r2 + r1
            r6.f23866d = r2
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.vendor.gson.stream.a.x():java.lang.String");
    }

    private int z() {
        String str;
        String str2;
        int i10;
        char c10 = this.f23865c[this.f23866d];
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
        int length = str.length();
        for (int i11 = 1; i11 < length; i11++) {
            if (this.f23866d + i11 >= this.f23867e && !g(i11 + 1)) {
                return 0;
            }
            char c11 = this.f23865c[this.f23866d + i11];
            if (c11 != str.charAt(i11) && c11 != str2.charAt(i11)) {
                return 0;
            }
        }
        if ((this.f23866d + length < this.f23867e || g(length + 1)) && k(this.f23865c[this.f23866d + length])) {
            return 0;
        }
        this.f23866d += length;
        this.f23870h = i10;
        return i10;
    }

    public String C() {
        String str;
        int i10 = this.f23870h;
        if (i10 == 0) {
            i10 = e();
        }
        if (i10 == 10) {
            str = x();
        } else if (i10 == 8) {
            str = w('\'');
        } else if (i10 == 9) {
            str = w('\"');
        } else if (i10 == 11) {
            str = this.f23873k;
            this.f23873k = null;
        } else if (i10 == 15) {
            str = Long.toString(this.f23871i);
        } else if (i10 == 16) {
            str = new String(this.f23865c, this.f23866d, this.f23872j);
            this.f23866d += this.f23872j;
        } else {
            throw new IllegalStateException("Expected a string but was " + peek() + q());
        }
        this.f23870h = 0;
        int[] iArr = this.f23877o;
        int i11 = this.f23875m - 1;
        iArr[i11] = iArr[i11] + 1;
        return str;
    }

    public long E0() {
        char c10;
        int i10 = this.f23870h;
        if (i10 == 0) {
            i10 = e();
        }
        if (i10 == 15) {
            this.f23870h = 0;
            int[] iArr = this.f23877o;
            int i11 = this.f23875m - 1;
            iArr[i11] = iArr[i11] + 1;
            return this.f23871i;
        }
        if (i10 == 16) {
            this.f23873k = new String(this.f23865c, this.f23866d, this.f23872j);
            this.f23866d += this.f23872j;
        } else if (i10 != 8 && i10 != 9 && i10 != 10) {
            throw new IllegalStateException("Expected a long but was " + peek() + q());
        } else {
            if (i10 == 10) {
                this.f23873k = x();
            } else {
                if (i10 == 8) {
                    c10 = '\'';
                } else {
                    c10 = '\"';
                }
                this.f23873k = w(c10);
            }
            try {
                long parseLong = Long.parseLong(this.f23873k);
                this.f23870h = 0;
                int[] iArr2 = this.f23877o;
                int i12 = this.f23875m - 1;
                iArr2[i12] = iArr2[i12] + 1;
                return parseLong;
            } catch (NumberFormatException unused) {
            }
        }
        this.f23870h = 11;
        double parseDouble = Double.parseDouble(this.f23873k);
        long j10 = (long) parseDouble;
        if (j10 == parseDouble) {
            this.f23873k = null;
            this.f23870h = 0;
            int[] iArr3 = this.f23877o;
            int i13 = this.f23875m - 1;
            iArr3[i13] = iArr3[i13] + 1;
            return j10;
        }
        throw new NumberFormatException("Expected a long but was " + this.f23873k + q());
    }

    public void G() {
        int i10 = 0;
        do {
            int i11 = this.f23870h;
            if (i11 == 0) {
                i11 = e();
            }
            if (i11 == 3) {
                H(1);
            } else if (i11 == 1) {
                H(3);
            } else {
                if (i11 == 4) {
                    this.f23875m--;
                } else if (i11 == 2) {
                    this.f23875m--;
                } else {
                    if (i11 != 14 && i11 != 10) {
                        if (i11 != 8 && i11 != 12) {
                            if (i11 != 9 && i11 != 13) {
                                if (i11 == 16) {
                                    this.f23866d += this.f23872j;
                                }
                            } else {
                                W('\"');
                            }
                        } else {
                            W('\'');
                        }
                    } else {
                        k0();
                    }
                    this.f23870h = 0;
                }
                i10--;
                this.f23870h = 0;
            }
            i10++;
            this.f23870h = 0;
        } while (i10 != 0);
        int[] iArr = this.f23877o;
        int i12 = this.f23875m;
        int i13 = i12 - 1;
        iArr[i13] = iArr[i13] + 1;
        this.f23876n[i12 - 1] = "null";
    }

    public double S() {
        char c10;
        int i10 = this.f23870h;
        if (i10 == 0) {
            i10 = e();
        }
        if (i10 == 15) {
            this.f23870h = 0;
            int[] iArr = this.f23877o;
            int i11 = this.f23875m - 1;
            iArr[i11] = iArr[i11] + 1;
            return this.f23871i;
        }
        if (i10 == 16) {
            this.f23873k = new String(this.f23865c, this.f23866d, this.f23872j);
            this.f23866d += this.f23872j;
        } else if (i10 != 8 && i10 != 9) {
            if (i10 == 10) {
                this.f23873k = x();
            } else if (i10 != 11) {
                throw new IllegalStateException("Expected a double but was " + peek() + q());
            }
        } else {
            if (i10 == 8) {
                c10 = '\'';
            } else {
                c10 = '\"';
            }
            this.f23873k = w(c10);
        }
        this.f23870h = 11;
        double parseDouble = Double.parseDouble(this.f23873k);
        if (!this.f23864b && (Double.isNaN(parseDouble) || Double.isInfinite(parseDouble))) {
            throw new d("JSON forbids NaN and infinities: " + parseDouble + q());
        }
        this.f23873k = null;
        this.f23870h = 0;
        int[] iArr2 = this.f23877o;
        int i12 = this.f23875m - 1;
        iArr2[i12] = iArr2[i12] + 1;
        return parseDouble;
    }

    public void a() {
        int i10 = this.f23870h;
        if (i10 == 0) {
            i10 = e();
        }
        if (i10 == 3) {
            H(1);
            this.f23877o[this.f23875m - 1] = 0;
            this.f23870h = 0;
            return;
        }
        throw new IllegalStateException("Expected BEGIN_ARRAY but was " + peek() + q());
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f23870h = 0;
        this.f23874l[0] = 8;
        this.f23875m = 1;
        this.f23863a.close();
    }

    int e() {
        int u10;
        int[] iArr = this.f23874l;
        int i10 = this.f23875m;
        int i11 = iArr[i10 - 1];
        if (i11 == 1) {
            iArr[i10 - 1] = 2;
        } else if (i11 == 2) {
            int u11 = u(true);
            if (u11 != 44) {
                if (u11 != 59) {
                    if (u11 == 93) {
                        this.f23870h = 4;
                        return 4;
                    }
                    throw o0("Unterminated array");
                }
                b();
            }
        } else if (i11 != 3 && i11 != 5) {
            if (i11 == 4) {
                iArr[i10 - 1] = 5;
                int u12 = u(true);
                if (u12 != 58) {
                    if (u12 == 61) {
                        b();
                        if (this.f23866d < this.f23867e || g(1)) {
                            char[] cArr = this.f23865c;
                            int i12 = this.f23866d;
                            if (cArr[i12] == '>') {
                                this.f23866d = i12 + 1;
                            }
                        }
                    } else {
                        throw o0("Expected ':'");
                    }
                }
            } else if (i11 == 6) {
                if (this.f23864b) {
                    c();
                }
                this.f23874l[this.f23875m - 1] = 7;
            } else if (i11 == 7) {
                if (u(false) == -1) {
                    this.f23870h = 17;
                    return 17;
                }
                b();
                this.f23866d--;
            } else if (i11 == 8) {
                throw new IllegalStateException("JsonReader is closed");
            }
        } else {
            iArr[i10 - 1] = 4;
            if (i11 == 5 && (u10 = u(true)) != 44) {
                if (u10 != 59) {
                    if (u10 == 125) {
                        this.f23870h = 2;
                        return 2;
                    }
                    throw o0("Unterminated object");
                }
                b();
            }
            int u13 = u(true);
            if (u13 != 34) {
                if (u13 != 39) {
                    if (u13 != 125) {
                        b();
                        this.f23866d--;
                        if (k((char) u13)) {
                            this.f23870h = 14;
                            return 14;
                        }
                        throw o0("Expected name");
                    } else if (i11 != 5) {
                        this.f23870h = 2;
                        return 2;
                    } else {
                        throw o0("Expected name");
                    }
                }
                b();
                this.f23870h = 12;
                return 12;
            }
            this.f23870h = 13;
            return 13;
        }
        int u14 = u(true);
        if (u14 != 34) {
            if (u14 != 39) {
                if (u14 != 44 && u14 != 59) {
                    if (u14 != 91) {
                        if (u14 != 93) {
                            if (u14 != 123) {
                                this.f23866d--;
                                int z10 = z();
                                if (z10 != 0) {
                                    return z10;
                                }
                                int E = E();
                                if (E != 0) {
                                    return E;
                                }
                                if (k(this.f23865c[this.f23866d])) {
                                    b();
                                    this.f23870h = 10;
                                    return 10;
                                }
                                throw o0("Expected value");
                            }
                            this.f23870h = 1;
                            return 1;
                        } else if (i11 == 1) {
                            this.f23870h = 4;
                            return 4;
                        }
                    } else {
                        this.f23870h = 3;
                        return 3;
                    }
                }
                if (i11 != 1 && i11 != 2) {
                    throw o0("Unexpected value");
                }
                b();
                this.f23866d--;
                this.f23870h = 7;
                return 7;
            }
            b();
            this.f23870h = 8;
            return 8;
        }
        this.f23870h = 9;
        return 9;
    }

    public void f() {
        int i10 = this.f23870h;
        if (i10 == 0) {
            i10 = e();
        }
        if (i10 == 4) {
            int i11 = this.f23875m - 1;
            this.f23875m = i11;
            int[] iArr = this.f23877o;
            int i12 = i11 - 1;
            iArr[i12] = iArr[i12] + 1;
            this.f23870h = 0;
            return;
        }
        throw new IllegalStateException("Expected END_ARRAY but was " + peek() + q());
    }

    public String f0() {
        String w10;
        int i10 = this.f23870h;
        if (i10 == 0) {
            i10 = e();
        }
        if (i10 == 14) {
            w10 = x();
        } else if (i10 == 12) {
            w10 = w('\'');
        } else if (i10 == 13) {
            w10 = w('\"');
        } else {
            throw new IllegalStateException("Expected a name but was " + peek() + q());
        }
        this.f23870h = 0;
        this.f23876n[this.f23875m - 1] = w10;
        return w10;
    }

    public String h() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append('$');
        int i10 = this.f23875m;
        for (int i11 = 0; i11 < i10; i11++) {
            int i12 = this.f23874l[i11];
            if (i12 != 1 && i12 != 2) {
                if (i12 == 3 || i12 == 4 || i12 == 5) {
                    sb2.append('.');
                    String str = this.f23876n[i11];
                    if (str != null) {
                        sb2.append(str);
                    }
                }
            } else {
                sb2.append('[');
                sb2.append(this.f23877o[i11]);
                sb2.append(']');
            }
        }
        return sb2.toString();
    }

    public boolean j() {
        int i10 = this.f23870h;
        if (i10 == 0) {
            i10 = e();
        }
        if (i10 != 2 && i10 != 4) {
            return true;
        }
        return false;
    }

    public int j0() {
        char c10;
        int i10 = this.f23870h;
        if (i10 == 0) {
            i10 = e();
        }
        if (i10 == 15) {
            long j10 = this.f23871i;
            int i11 = (int) j10;
            if (j10 == i11) {
                this.f23870h = 0;
                int[] iArr = this.f23877o;
                int i12 = this.f23875m - 1;
                iArr[i12] = iArr[i12] + 1;
                return i11;
            }
            throw new NumberFormatException("Expected an int but was " + this.f23871i + q());
        }
        if (i10 == 16) {
            this.f23873k = new String(this.f23865c, this.f23866d, this.f23872j);
            this.f23866d += this.f23872j;
        } else if (i10 != 8 && i10 != 9 && i10 != 10) {
            throw new IllegalStateException("Expected an int but was " + peek() + q());
        } else {
            if (i10 == 10) {
                this.f23873k = x();
            } else {
                if (i10 == 8) {
                    c10 = '\'';
                } else {
                    c10 = '\"';
                }
                this.f23873k = w(c10);
            }
            try {
                int parseInt = Integer.parseInt(this.f23873k);
                this.f23870h = 0;
                int[] iArr2 = this.f23877o;
                int i13 = this.f23875m - 1;
                iArr2[i13] = iArr2[i13] + 1;
                return parseInt;
            } catch (NumberFormatException unused) {
            }
        }
        this.f23870h = 11;
        double parseDouble = Double.parseDouble(this.f23873k);
        int i14 = (int) parseDouble;
        if (i14 == parseDouble) {
            this.f23873k = null;
            this.f23870h = 0;
            int[] iArr3 = this.f23877o;
            int i15 = this.f23875m - 1;
            iArr3[i15] = iArr3[i15] + 1;
            return i14;
        }
        throw new NumberFormatException("Expected an int but was " + this.f23873k + q());
    }

    public final void p(boolean z10) {
        this.f23864b = z10;
    }

    public b peek() {
        int i10 = this.f23870h;
        if (i10 == 0) {
            i10 = e();
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

    String q() {
        return " at line " + (this.f23868f + 1) + " column " + ((this.f23866d - this.f23869g) + 1) + " path " + h();
    }

    public void r() {
        int i10 = this.f23870h;
        if (i10 == 0) {
            i10 = e();
        }
        if (i10 == 2) {
            int i11 = this.f23875m - 1;
            this.f23875m = i11;
            this.f23876n[i11] = null;
            int[] iArr = this.f23877o;
            int i12 = i11 - 1;
            iArr[i12] = iArr[i12] + 1;
            this.f23870h = 0;
            return;
        }
        throw new IllegalStateException("Expected END_OBJECT but was " + peek() + q());
    }

    public boolean s() {
        int i10 = this.f23870h;
        if (i10 == 0) {
            i10 = e();
        }
        if (i10 == 5) {
            this.f23870h = 0;
            int[] iArr = this.f23877o;
            int i11 = this.f23875m - 1;
            iArr[i11] = iArr[i11] + 1;
            return true;
        } else if (i10 == 6) {
            this.f23870h = 0;
            int[] iArr2 = this.f23877o;
            int i12 = this.f23875m - 1;
            iArr2[i12] = iArr2[i12] + 1;
            return false;
        } else {
            throw new IllegalStateException("Expected a boolean but was " + peek() + q());
        }
    }

    public void t() {
        int i10 = this.f23870h;
        if (i10 == 0) {
            i10 = e();
        }
        if (i10 == 1) {
            H(3);
            this.f23870h = 0;
            return;
        }
        throw new IllegalStateException("Expected BEGIN_OBJECT but was " + peek() + q());
    }

    public String toString() {
        return getClass().getSimpleName() + q();
    }

    public void v() {
        int i10 = this.f23870h;
        if (i10 == 0) {
            i10 = e();
        }
        if (i10 == 7) {
            this.f23870h = 0;
            int[] iArr = this.f23877o;
            int i11 = this.f23875m - 1;
            iArr[i11] = iArr[i11] + 1;
            return;
        }
        throw new IllegalStateException("Expected null but was " + peek() + q());
    }
}
