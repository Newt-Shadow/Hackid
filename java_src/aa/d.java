package aa;

import j9.m;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;
import kotlin.KotlinVersion;
/* loaded from: classes.dex */
abstract class d {

    /* renamed from: a  reason: collision with root package name */
    private static final char[] f235a = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ $%*+-./:".toCharArray();

    /* loaded from: classes.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f236a;

        static {
            int[] iArr = new int[h.values().length];
            f236a = iArr;
            try {
                iArr[h.NUMERIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f236a[h.ALPHANUMERIC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f236a[h.BYTE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f236a[h.KANJI.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f236a[h.TERMINATOR.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f236a[h.FNC1_FIRST_POSITION.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f236a[h.FNC1_SECOND_POSITION.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f236a[h.STRUCTURED_APPEND.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f236a[h.ECI.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f236a[h.HANZI.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static j9.e a(byte[] bArr, j jVar, f fVar, Map map) {
        h b10;
        int i10;
        int i11;
        int i12;
        h hVar;
        int i13;
        int i14;
        ArrayList arrayList;
        j9.c cVar = new j9.c(bArr);
        StringBuilder sb2 = new StringBuilder(50);
        boolean z10 = true;
        ArrayList arrayList2 = new ArrayList(1);
        String str = null;
        boolean z11 = false;
        boolean z12 = false;
        boolean z13 = false;
        int i15 = -1;
        int i16 = -1;
        j9.d dVar = null;
        while (true) {
            try {
                if (cVar.a() < 4) {
                    b10 = h.TERMINATOR;
                } else {
                    b10 = h.b(cVar.d(4));
                }
                h hVar2 = b10;
                int[] iArr = a.f236a;
                switch (iArr[hVar2.ordinal()]) {
                    case 5:
                        i10 = 3;
                        i11 = 2;
                        hVar = hVar2;
                        i12 = 4;
                        break;
                    case 6:
                        i10 = 3;
                        i11 = 2;
                        i12 = 4;
                        z11 = z10;
                        z12 = z11;
                        hVar = hVar2;
                        break;
                    case 7:
                        i10 = 3;
                        i11 = 2;
                        i12 = 4;
                        z11 = z10;
                        z13 = z11;
                        hVar = hVar2;
                        break;
                    case 8:
                        if (cVar.a() >= 16) {
                            int d10 = cVar.d(8);
                            i16 = cVar.d(8);
                            i15 = d10;
                            i10 = 3;
                            i11 = 2;
                            hVar = hVar2;
                            i12 = 4;
                            break;
                        } else {
                            throw d9.f.a();
                        }
                    case 9:
                        dVar = j9.d.b(g(cVar));
                        if (dVar == null) {
                            throw d9.f.a();
                        }
                        i10 = 3;
                        i11 = 2;
                        hVar = hVar2;
                        i12 = 4;
                        break;
                    case 10:
                        int d11 = cVar.d(4);
                        int d12 = cVar.d(hVar2.f(jVar));
                        if (d11 == z10) {
                            d(cVar, sb2, d12);
                        }
                        i10 = 3;
                        i11 = 2;
                        hVar = hVar2;
                        i12 = 4;
                        break;
                    default:
                        int d13 = cVar.d(hVar2.f(jVar));
                        int i17 = iArr[hVar2.ordinal()];
                        if (i17 != z10) {
                            if (i17 != 2) {
                                if (i17 != 3) {
                                    if (i17 == 4) {
                                        e(cVar, sb2, d13);
                                        i10 = 3;
                                        i11 = 2;
                                        hVar = hVar2;
                                        i12 = 4;
                                        break;
                                    } else {
                                        throw d9.f.a();
                                    }
                                } else {
                                    i10 = 3;
                                    i11 = 2;
                                    hVar = hVar2;
                                    i12 = 4;
                                    c(cVar, sb2, d13, dVar, arrayList2, map);
                                    break;
                                }
                            } else {
                                i10 = 3;
                                i11 = 2;
                                hVar = hVar2;
                                i12 = 4;
                                b(cVar, sb2, d13, z11);
                                break;
                            }
                        } else {
                            i10 = 3;
                            i11 = 2;
                            hVar = hVar2;
                            i12 = 4;
                            f(cVar, sb2, d13);
                            break;
                        }
                }
                if (hVar == h.TERMINATOR) {
                    if (dVar != null) {
                        if (z12) {
                            i13 = i12;
                        } else if (z13) {
                            i14 = 6;
                            i13 = i14;
                        } else {
                            i13 = i11;
                        }
                    } else if (z12) {
                        i13 = i10;
                    } else if (z13) {
                        i14 = 5;
                        i13 = i14;
                    } else {
                        i13 = 1;
                    }
                    String sb3 = sb2.toString();
                    if (arrayList2.isEmpty()) {
                        arrayList = null;
                    } else {
                        arrayList = arrayList2;
                    }
                    if (fVar != null) {
                        str = fVar.toString();
                    }
                    return new j9.e(bArr, sb3, arrayList, str, i15, i16, i13);
                }
                z10 = true;
            } catch (IllegalArgumentException unused) {
                throw d9.f.a();
            }
        }
    }

    private static void b(j9.c cVar, StringBuilder sb2, int i10, boolean z10) {
        while (i10 > 1) {
            if (cVar.a() >= 11) {
                int d10 = cVar.d(11);
                sb2.append(h(d10 / 45));
                sb2.append(h(d10 % 45));
                i10 -= 2;
            } else {
                throw d9.f.a();
            }
        }
        if (i10 == 1) {
            if (cVar.a() >= 6) {
                sb2.append(h(cVar.d(6)));
            } else {
                throw d9.f.a();
            }
        }
        if (z10) {
            for (int length = sb2.length(); length < sb2.length(); length++) {
                if (sb2.charAt(length) == '%') {
                    if (length < sb2.length() - 1) {
                        int i11 = length + 1;
                        if (sb2.charAt(i11) == '%') {
                            sb2.deleteCharAt(i11);
                        }
                    }
                    sb2.setCharAt(length, (char) 29);
                }
            }
        }
    }

    private static void c(j9.c cVar, StringBuilder sb2, int i10, j9.d dVar, Collection collection, Map map) {
        Charset f10;
        if (i10 * 8 <= cVar.a()) {
            byte[] bArr = new byte[i10];
            for (int i11 = 0; i11 < i10; i11++) {
                bArr[i11] = (byte) cVar.d(8);
            }
            if (dVar == null) {
                f10 = m.a(bArr, map);
            } else {
                f10 = dVar.f();
            }
            sb2.append(new String(bArr, f10));
            collection.add(bArr);
            return;
        }
        throw d9.f.a();
    }

    private static void d(j9.c cVar, StringBuilder sb2, int i10) {
        int i11;
        if (m.f24557c != null) {
            if (i10 * 13 <= cVar.a()) {
                byte[] bArr = new byte[i10 * 2];
                int i12 = 0;
                while (i10 > 0) {
                    int d10 = cVar.d(13);
                    int i13 = (d10 % 96) | ((d10 / 96) << 8);
                    if (i13 < 2560) {
                        i11 = 41377;
                    } else {
                        i11 = 42657;
                    }
                    int i14 = i13 + i11;
                    bArr[i12] = (byte) ((i14 >> 8) & KotlinVersion.MAX_COMPONENT_VALUE);
                    bArr[i12 + 1] = (byte) (i14 & KotlinVersion.MAX_COMPONENT_VALUE);
                    i12 += 2;
                    i10--;
                }
                sb2.append(new String(bArr, m.f24557c));
                return;
            }
            throw d9.f.a();
        }
        throw d9.f.a();
    }

    private static void e(j9.c cVar, StringBuilder sb2, int i10) {
        int i11;
        if (i10 * 13 <= cVar.a()) {
            byte[] bArr = new byte[i10 * 2];
            int i12 = 0;
            while (i10 > 0) {
                int d10 = cVar.d(13);
                int i13 = (d10 % 192) | ((d10 / 192) << 8);
                if (i13 < 7936) {
                    i11 = 33088;
                } else {
                    i11 = 49472;
                }
                int i14 = i13 + i11;
                bArr[i12] = (byte) (i14 >> 8);
                bArr[i12 + 1] = (byte) i14;
                i12 += 2;
                i10--;
            }
            sb2.append(new String(bArr, m.f24556b));
            return;
        }
        throw d9.f.a();
    }

    private static void f(j9.c cVar, StringBuilder sb2, int i10) {
        while (i10 >= 3) {
            if (cVar.a() >= 10) {
                int d10 = cVar.d(10);
                if (d10 < 1000) {
                    sb2.append(h(d10 / 100));
                    sb2.append(h((d10 / 10) % 10));
                    sb2.append(h(d10 % 10));
                    i10 -= 3;
                } else {
                    throw d9.f.a();
                }
            } else {
                throw d9.f.a();
            }
        }
        if (i10 == 2) {
            if (cVar.a() >= 7) {
                int d11 = cVar.d(7);
                if (d11 < 100) {
                    sb2.append(h(d11 / 10));
                    sb2.append(h(d11 % 10));
                    return;
                }
                throw d9.f.a();
            }
            throw d9.f.a();
        } else if (i10 == 1) {
            if (cVar.a() >= 4) {
                int d12 = cVar.d(4);
                if (d12 < 10) {
                    sb2.append(h(d12));
                    return;
                }
                throw d9.f.a();
            }
            throw d9.f.a();
        }
    }

    private static int g(j9.c cVar) {
        int d10 = cVar.d(8);
        if ((d10 & 128) == 0) {
            return d10 & 127;
        }
        if ((d10 & 192) == 128) {
            return cVar.d(8) | ((d10 & 63) << 8);
        }
        if ((d10 & 224) == 192) {
            return cVar.d(16) | ((d10 & 31) << 16);
        }
        throw d9.f.a();
    }

    private static char h(int i10) {
        char[] cArr = f235a;
        if (i10 < cArr.length) {
            return cArr[i10];
        }
        throw d9.f.a();
    }
}
