package ve;

import rd.y;
/* loaded from: classes2.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public static final e f31469a = new e();

    /* renamed from: b  reason: collision with root package name */
    public static final af.g f31470b = af.g.f387d.c("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");

    /* renamed from: c  reason: collision with root package name */
    private static final String[] f31471c = {"DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"};

    /* renamed from: d  reason: collision with root package name */
    private static final String[] f31472d = new String[64];

    /* renamed from: e  reason: collision with root package name */
    private static final String[] f31473e;

    static {
        String C;
        String[] strArr = new String[256];
        int i10 = 0;
        for (int i11 = 0; i11 < 256; i11++) {
            String binaryString = Integer.toBinaryString(i11);
            kotlin.jvm.internal.m.d(binaryString, "toBinaryString(it)");
            C = y.C(oe.d.s("%8s", binaryString), ' ', '0', false, 4, null);
            strArr[i11] = C;
        }
        f31473e = strArr;
        String[] strArr2 = f31472d;
        strArr2[0] = "";
        strArr2[1] = "END_STREAM";
        int[] iArr = {1};
        strArr2[8] = "PADDED";
        int i12 = iArr[0];
        strArr2[i12 | 8] = kotlin.jvm.internal.m.l(strArr2[i12], "|PADDED");
        strArr2[4] = "END_HEADERS";
        strArr2[32] = "PRIORITY";
        strArr2[36] = "END_HEADERS|PRIORITY";
        int[] iArr2 = {4, 32, 36};
        int i13 = 0;
        while (i13 < 3) {
            int i14 = iArr2[i13];
            i13++;
            int i15 = iArr[0];
            String[] strArr3 = f31472d;
            int i16 = i15 | i14;
            StringBuilder sb2 = new StringBuilder();
            sb2.append((Object) strArr3[i15]);
            sb2.append('|');
            sb2.append((Object) strArr3[i14]);
            strArr3[i16] = sb2.toString();
            strArr3[i16 | 8] = ((Object) strArr3[i15]) + '|' + ((Object) strArr3[i14]) + "|PADDED";
        }
        int length = f31472d.length;
        while (i10 < length) {
            int i17 = i10 + 1;
            String[] strArr4 = f31472d;
            if (strArr4[i10] == null) {
                strArr4[i10] = f31473e[i10];
            }
            i10 = i17;
        }
    }

    private e() {
    }

    public final String a(int i10, int i11) {
        String str;
        String D;
        String D2;
        if (i11 == 0) {
            return "";
        }
        if (i10 != 2 && i10 != 3) {
            if (i10 != 4 && i10 != 6) {
                if (i10 != 7 && i10 != 8) {
                    String[] strArr = f31472d;
                    if (i11 < strArr.length) {
                        str = strArr[i11];
                        kotlin.jvm.internal.m.b(str);
                    } else {
                        str = f31473e[i11];
                    }
                    String str2 = str;
                    if (i10 == 5 && (i11 & 4) != 0) {
                        D2 = y.D(str2, "HEADERS", "PUSH_PROMISE", false, 4, null);
                        return D2;
                    } else if (i10 == 0 && (i11 & 32) != 0) {
                        D = y.D(str2, "PRIORITY", "COMPRESSED", false, 4, null);
                        return D;
                    } else {
                        return str2;
                    }
                }
            } else if (i11 == 1) {
                return "ACK";
            } else {
                return f31473e[i11];
            }
        }
        return f31473e[i11];
    }

    public final String b(int i10) {
        String[] strArr = f31471c;
        if (i10 < strArr.length) {
            return strArr[i10];
        }
        return oe.d.s("0x%02x", Integer.valueOf(i10));
    }

    public final String c(boolean z10, int i10, int i11, int i12, int i13) {
        String str;
        String b10 = b(i12);
        String a10 = a(i12, i13);
        if (z10) {
            str = "<<";
        } else {
            str = ">>";
        }
        return oe.d.s("%s 0x%08x %5d %-13s %s", str, Integer.valueOf(i10), Integer.valueOf(i11), b10, a10);
    }
}
