package n9;

import d9.f;
import j9.h;
import java.nio.charset.StandardCharsets;
import java.util.Collection;
import java.util.Set;
import kotlin.KotlinVersion;
/* loaded from: classes.dex */
abstract class c {

    /* renamed from: b  reason: collision with root package name */
    private static final char[] f26520b;

    /* renamed from: d  reason: collision with root package name */
    private static final char[] f26522d;

    /* renamed from: a  reason: collision with root package name */
    private static final char[] f26519a = {'*', '*', '*', ' ', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'};

    /* renamed from: c  reason: collision with root package name */
    private static final char[] f26521c = {'*', '*', '*', ' ', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'};

    /* renamed from: e  reason: collision with root package name */
    private static final char[] f26523e = {'`', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '{', '|', '}', '~', 127};

    /* loaded from: classes.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f26524a;

        static {
            int[] iArr = new int[b.values().length];
            f26524a = iArr;
            try {
                iArr[b.C40_ENCODE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f26524a[b.TEXT_ENCODE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f26524a[b.ANSIX12_ENCODE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f26524a[b.EDIFACT_ENCODE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f26524a[b.BASE256_ENCODE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f26524a[b.ECI_ENCODE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public enum b {
        PAD_ENCODE,
        ASCII_ENCODE,
        C40_ENCODE,
        TEXT_ENCODE,
        ANSIX12_ENCODE,
        EDIFACT_ENCODE,
        BASE256_ENCODE,
        ECI_ENCODE
    }

    static {
        char[] cArr = {'!', '\"', '#', '$', '%', '&', '\'', '(', ')', '*', '+', ',', '-', '.', '/', ':', ';', '<', '=', '>', '?', '@', '[', '\\', ']', '^', '_'};
        f26520b = cArr;
        f26522d = cArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00c9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static j9.e a(byte[] r13) {
        /*
            j9.c r0 = new j9.c
            r0.<init>(r13)
            j9.h r1 = new j9.h
            r2 = 100
            r1.<init>(r2)
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r3 = 0
            java.lang.Integer r4 = java.lang.Integer.valueOf(r3)
            r2.<init>(r3)
            java.util.ArrayList r5 = new java.util.ArrayList
            r6 = 1
            java.lang.Integer r7 = java.lang.Integer.valueOf(r6)
            r5.<init>(r6)
            n9.c$b r8 = n9.c.b.ASCII_ENCODE
            java.util.HashSet r9 = new java.util.HashSet
            r9.<init>()
        L27:
            n9.c$b r10 = n9.c.b.ASCII_ENCODE
            if (r8 != r10) goto L30
            n9.c$b r8 = c(r0, r1, r2, r9)
            goto L59
        L30:
            int[] r11 = n9.c.a.f26524a
            int r8 = r8.ordinal()
            r8 = r11[r8]
            switch(r8) {
                case 1: goto L55;
                case 2: goto L51;
                case 3: goto L4d;
                case 4: goto L49;
                case 5: goto L45;
                case 6: goto L40;
                default: goto L3b;
            }
        L3b:
            d9.f r13 = d9.f.a()
            throw r13
        L40:
            f(r0, r1)
            r3 = r6
            goto L58
        L45:
            d(r0, r1, r5)
            goto L58
        L49:
            g(r0, r1)
            goto L58
        L4d:
            b(r0, r1)
            goto L58
        L51:
            h(r0, r1, r9)
            goto L58
        L55:
            e(r0, r1, r9)
        L58:
            r8 = r10
        L59:
            n9.c$b r10 = n9.c.b.PAD_ENCODE
            if (r8 == r10) goto L63
            int r10 = r0.a()
            if (r10 > 0) goto L27
        L63:
            int r0 = r2.length()
            if (r0 <= 0) goto L6c
            r1.e(r2)
        L6c:
            r0 = 5
            r2 = 4
            if (r3 == 0) goto L98
            boolean r3 = r9.contains(r4)
            if (r3 != 0) goto L96
            java.lang.Integer r3 = java.lang.Integer.valueOf(r2)
            boolean r3 = r9.contains(r3)
            if (r3 == 0) goto L81
            goto L96
        L81:
            boolean r3 = r9.contains(r7)
            if (r3 != 0) goto L94
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            boolean r0 = r9.contains(r0)
            if (r0 == 0) goto L92
            goto L94
        L92:
            r12 = r2
            goto Lbd
        L94:
            r6 = 6
            goto Lbc
        L96:
            r12 = r0
            goto Lbd
        L98:
            boolean r3 = r9.contains(r4)
            if (r3 != 0) goto Lbb
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            boolean r2 = r9.contains(r2)
            if (r2 == 0) goto La9
            goto Lbb
        La9:
            boolean r2 = r9.contains(r7)
            if (r2 != 0) goto Lb9
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            boolean r0 = r9.contains(r0)
            if (r0 == 0) goto Lbc
        Lb9:
            r6 = 3
            goto Lbc
        Lbb:
            r6 = 2
        Lbc:
            r12 = r6
        Lbd:
            j9.e r0 = new j9.e
            java.lang.String r9 = r1.toString()
            boolean r1 = r5.isEmpty()
            if (r1 == 0) goto Lca
            r5 = 0
        Lca:
            r10 = r5
            r11 = 0
            r7 = r0
            r8 = r13
            r7.<init>(r8, r9, r10, r11, r12)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: n9.c.a(byte[]):j9.e");
    }

    private static void b(j9.c cVar, h hVar) {
        int d10;
        int[] iArr = new int[3];
        while (cVar.a() != 8 && (d10 = cVar.d(8)) != 254) {
            i(d10, cVar.d(8), iArr);
            for (int i10 = 0; i10 < 3; i10++) {
                int i11 = iArr[i10];
                if (i11 != 0) {
                    if (i11 != 1) {
                        if (i11 != 2) {
                            if (i11 != 3) {
                                if (i11 < 14) {
                                    hVar.b((char) (i11 + 44));
                                } else if (i11 < 40) {
                                    hVar.b((char) (i11 + 51));
                                } else {
                                    throw f.a();
                                }
                            } else {
                                hVar.b(' ');
                            }
                        } else {
                            hVar.b('>');
                        }
                    } else {
                        hVar.b('*');
                    }
                } else {
                    hVar.b('\r');
                }
            }
            if (cVar.a() <= 0) {
                return;
            }
        }
    }

    private static b c(j9.c cVar, h hVar, StringBuilder sb2, Set set) {
        boolean z10 = false;
        do {
            int d10 = cVar.d(8);
            if (d10 != 0) {
                if (d10 <= 128) {
                    if (z10) {
                        d10 += 128;
                    }
                    hVar.b((char) (d10 - 1));
                    return b.ASCII_ENCODE;
                } else if (d10 == 129) {
                    return b.PAD_ENCODE;
                } else {
                    if (d10 <= 229) {
                        int i10 = d10 - 130;
                        if (i10 < 10) {
                            hVar.b('0');
                        }
                        hVar.c(i10);
                    } else {
                        switch (d10) {
                            case 230:
                                return b.C40_ENCODE;
                            case 231:
                                return b.BASE256_ENCODE;
                            case 232:
                                set.add(Integer.valueOf(hVar.i()));
                                hVar.b((char) 29);
                                break;
                            case 233:
                            case 234:
                                break;
                            case 235:
                                z10 = true;
                                break;
                            case 236:
                                hVar.d("[)>\u001e05\u001d");
                                sb2.insert(0, "\u001e\u0004");
                                break;
                            case 237:
                                hVar.d("[)>\u001e06\u001d");
                                sb2.insert(0, "\u001e\u0004");
                                break;
                            case 238:
                                return b.ANSIX12_ENCODE;
                            case 239:
                                return b.TEXT_ENCODE;
                            case 240:
                                return b.EDIFACT_ENCODE;
                            case 241:
                                return b.ECI_ENCODE;
                            default:
                                if (d10 != 254 || cVar.a() != 0) {
                                    throw f.a();
                                }
                                break;
                        }
                    }
                }
            } else {
                throw f.a();
            }
        } while (cVar.a() > 0);
        return b.ASCII_ENCODE;
    }

    private static void d(j9.c cVar, h hVar, Collection collection) {
        int c10 = cVar.c() + 1;
        int i10 = c10 + 1;
        int j10 = j(cVar.d(8), c10);
        if (j10 == 0) {
            j10 = cVar.a() / 8;
        } else if (j10 >= 250) {
            j10 = ((j10 - 249) * 250) + j(cVar.d(8), i10);
            i10++;
        }
        if (j10 >= 0) {
            byte[] bArr = new byte[j10];
            int i11 = 0;
            while (i11 < j10) {
                if (cVar.a() >= 8) {
                    bArr[i11] = (byte) j(cVar.d(8), i10);
                    i11++;
                    i10++;
                } else {
                    throw f.a();
                }
            }
            collection.add(bArr);
            hVar.d(new String(bArr, StandardCharsets.ISO_8859_1));
            return;
        }
        throw f.a();
    }

    private static void e(j9.c cVar, h hVar, Set set) {
        int d10;
        int[] iArr = new int[3];
        boolean z10 = false;
        int i10 = 0;
        while (cVar.a() != 8 && (d10 = cVar.d(8)) != 254) {
            i(d10, cVar.d(8), iArr);
            for (int i11 = 0; i11 < 3; i11++) {
                int i12 = iArr[i11];
                if (i10 != 0) {
                    if (i10 != 1) {
                        if (i10 != 2) {
                            if (i10 == 3) {
                                if (z10) {
                                    hVar.b((char) (i12 + 224));
                                    z10 = false;
                                    i10 = 0;
                                } else {
                                    hVar.b((char) (i12 + 96));
                                    i10 = 0;
                                }
                            } else {
                                throw f.a();
                            }
                        } else {
                            char[] cArr = f26520b;
                            if (i12 < cArr.length) {
                                char c10 = cArr[i12];
                                if (z10) {
                                    hVar.b((char) (c10 + 128));
                                    z10 = false;
                                } else {
                                    hVar.b(c10);
                                }
                            } else if (i12 != 27) {
                                if (i12 == 30) {
                                    z10 = true;
                                } else {
                                    throw f.a();
                                }
                            } else {
                                set.add(Integer.valueOf(hVar.i()));
                                hVar.b((char) 29);
                            }
                            i10 = 0;
                        }
                    } else if (z10) {
                        hVar.b((char) (i12 + 128));
                        z10 = false;
                        i10 = 0;
                    } else {
                        hVar.b((char) i12);
                        i10 = 0;
                    }
                } else if (i12 < 3) {
                    i10 = i12 + 1;
                } else {
                    char[] cArr2 = f26519a;
                    if (i12 < cArr2.length) {
                        char c11 = cArr2[i12];
                        if (z10) {
                            hVar.b((char) (c11 + 128));
                            z10 = false;
                        } else {
                            hVar.b(c11);
                        }
                    } else {
                        throw f.a();
                    }
                }
            }
            if (cVar.a() <= 0) {
                return;
            }
        }
    }

    private static void f(j9.c cVar, h hVar) {
        if (cVar.a() >= 8) {
            int d10 = cVar.d(8);
            if (d10 <= 127) {
                hVar.f(d10 - 1);
                return;
            }
            return;
        }
        throw f.a();
    }

    private static void g(j9.c cVar, h hVar) {
        while (cVar.a() > 16) {
            for (int i10 = 0; i10 < 4; i10++) {
                int d10 = cVar.d(6);
                if (d10 == 31) {
                    int b10 = 8 - cVar.b();
                    if (b10 != 8) {
                        cVar.d(b10);
                        return;
                    }
                    return;
                }
                if ((d10 & 32) == 0) {
                    d10 |= 64;
                }
                hVar.b((char) d10);
            }
            if (cVar.a() <= 0) {
                return;
            }
        }
    }

    private static void h(j9.c cVar, h hVar, Set set) {
        int d10;
        int[] iArr = new int[3];
        boolean z10 = false;
        int i10 = 0;
        while (cVar.a() != 8 && (d10 = cVar.d(8)) != 254) {
            i(d10, cVar.d(8), iArr);
            for (int i11 = 0; i11 < 3; i11++) {
                int i12 = iArr[i11];
                if (i10 != 0) {
                    if (i10 != 1) {
                        if (i10 != 2) {
                            if (i10 == 3) {
                                char[] cArr = f26523e;
                                if (i12 < cArr.length) {
                                    char c10 = cArr[i12];
                                    if (z10) {
                                        hVar.b((char) (c10 + 128));
                                        z10 = false;
                                        i10 = 0;
                                    } else {
                                        hVar.b(c10);
                                        i10 = 0;
                                    }
                                } else {
                                    throw f.a();
                                }
                            } else {
                                throw f.a();
                            }
                        } else {
                            char[] cArr2 = f26522d;
                            if (i12 < cArr2.length) {
                                char c11 = cArr2[i12];
                                if (z10) {
                                    hVar.b((char) (c11 + 128));
                                    z10 = false;
                                } else {
                                    hVar.b(c11);
                                }
                            } else if (i12 != 27) {
                                if (i12 == 30) {
                                    z10 = true;
                                } else {
                                    throw f.a();
                                }
                            } else {
                                set.add(Integer.valueOf(hVar.i()));
                                hVar.b((char) 29);
                            }
                            i10 = 0;
                        }
                    } else if (z10) {
                        hVar.b((char) (i12 + 128));
                        z10 = false;
                        i10 = 0;
                    } else {
                        hVar.b((char) i12);
                        i10 = 0;
                    }
                } else if (i12 < 3) {
                    i10 = i12 + 1;
                } else {
                    char[] cArr3 = f26521c;
                    if (i12 < cArr3.length) {
                        char c12 = cArr3[i12];
                        if (z10) {
                            hVar.b((char) (c12 + 128));
                            z10 = false;
                        } else {
                            hVar.b(c12);
                        }
                    } else {
                        throw f.a();
                    }
                }
            }
            if (cVar.a() <= 0) {
                return;
            }
        }
    }

    private static void i(int i10, int i11, int[] iArr) {
        int i12 = ((i10 << 8) + i11) - 1;
        int i13 = i12 / 1600;
        iArr[0] = i13;
        int i14 = i12 - (i13 * 1600);
        int i15 = i14 / 40;
        iArr[1] = i15;
        iArr[2] = i14 - (i15 * 40);
    }

    private static int j(int i10, int i11) {
        int i12 = i10 - (((i11 * 149) % KotlinVersion.MAX_COMPONENT_VALUE) + 1);
        if (i12 < 0) {
            return i12 + 256;
        }
        return i12;
    }
}
