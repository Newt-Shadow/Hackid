package f9;

import d9.f;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import j9.e;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import l9.d;
import org.apache.tika.metadata.OfficeOpenXMLExtended;
import org.apache.tika.utils.StringUtils;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f15924b = {"CTRL_PS", StringUtils.SPACE, "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "CTRL_LL", "CTRL_ML", "CTRL_DL", "CTRL_BS"};

    /* renamed from: c  reason: collision with root package name */
    private static final String[] f15925c = {"CTRL_PS", StringUtils.SPACE, "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", OfficeOpenXMLExtended.WORD_PROCESSING_PREFIX, "x", "y", "z", "CTRL_US", "CTRL_ML", "CTRL_DL", "CTRL_BS"};

    /* renamed from: d  reason: collision with root package name */
    private static final String[] f15926d = {"CTRL_PS", StringUtils.SPACE, "\u0001", "\u0002", "\u0003", "\u0004", "\u0005", "\u0006", "\u0007", "\b", "\t", "\n", "\u000b", "\f", "\r", "\u001b", "\u001c", "\u001d", "\u001e", "\u001f", "@", "\\", "^", "_", "`", "|", "~", "\u007f", "CTRL_LL", "CTRL_UL", "CTRL_PL", "CTRL_BS"};

    /* renamed from: e  reason: collision with root package name */
    private static final String[] f15927e = {"FLG(n)", "\r", "\r\n", ". ", ", ", ": ", "!", "\"", "#", "$", "%", "&", "'", "(", ")", "*", "+", io.appmetrica.analytics.coreutils.internal.StringUtils.COMMA, "-", ".", "/", ":", ";", "<", "=", ">", "?", "[", "]", "{", "}", "CTRL_UL"};

    /* renamed from: f  reason: collision with root package name */
    private static final String[] f15928f = {"CTRL_PS", StringUtils.SPACE, CommonUrlParts.Values.FALSE_INTEGER, "1", "2", "3", "4", "5", "6", "7", "8", "9", io.appmetrica.analytics.coreutils.internal.StringUtils.COMMA, ".", "CTRL_UL", "CTRL_US"};

    /* renamed from: g  reason: collision with root package name */
    private static final Charset f15929g = StandardCharsets.ISO_8859_1;

    /* renamed from: a  reason: collision with root package name */
    private e9.a f15930a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f9.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class C0167a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f15931a;

        static {
            int[] iArr = new int[c.values().length];
            f15931a = iArr;
            try {
                iArr[c.UPPER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15931a[c.LOWER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15931a[c.MIXED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f15931a[c.PUNCT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f15931a[c.DIGIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final boolean[] f15932a;

        /* renamed from: b  reason: collision with root package name */
        private final int f15933b;

        /* renamed from: c  reason: collision with root package name */
        private final int f15934c;

        b(boolean[] zArr, int i10, int i11) {
            this.f15932a = zArr;
            this.f15933b = i10;
            this.f15934c = i11;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public enum c {
        UPPER,
        LOWER,
        MIXED,
        DIGIT,
        PUNCT,
        BINARY
    }

    static byte[] a(boolean[] zArr) {
        int length = (zArr.length + 7) / 8;
        byte[] bArr = new byte[length];
        for (int i10 = 0; i10 < length; i10++) {
            bArr[i10] = h(zArr, i10 * 8);
        }
        return bArr;
    }

    private b b(boolean[] zArr) {
        int i10;
        l9.a aVar;
        boolean z10;
        boolean z11;
        if (this.f15930a.e() <= 2) {
            aVar = l9.a.f25379j;
            i10 = 6;
        } else {
            i10 = 8;
            if (this.f15930a.e() <= 8) {
                aVar = l9.a.f25383n;
            } else if (this.f15930a.e() <= 22) {
                aVar = l9.a.f25378i;
                i10 = 10;
            } else {
                aVar = l9.a.f25377h;
                i10 = 12;
            }
        }
        int d10 = this.f15930a.d();
        int length = zArr.length / i10;
        if (length >= d10) {
            int length2 = zArr.length % i10;
            int[] iArr = new int[length];
            int i11 = 0;
            while (i11 < length) {
                iArr[i11] = i(zArr, length2, i10);
                i11++;
                length2 += i10;
            }
            try {
                l9.c cVar = new l9.c(aVar);
                int i12 = length - d10;
                int a10 = cVar.a(iArr, i12);
                int i13 = (1 << i10) - 1;
                int i14 = 0;
                for (int i15 = 0; i15 < d10; i15++) {
                    int i16 = iArr[i15];
                    if (i16 != 0 && i16 != i13) {
                        if (i16 == 1 || i16 == i13 - 1) {
                            i14++;
                        }
                    } else {
                        throw f.a();
                    }
                }
                boolean[] zArr2 = new boolean[(d10 * i10) - i14];
                int i17 = 0;
                for (int i18 = 0; i18 < d10; i18++) {
                    int i19 = iArr[i18];
                    if (i19 != 1 && i19 != i13 - 1) {
                        int i20 = i10 - 1;
                        while (i20 >= 0) {
                            int i21 = i17 + 1;
                            if ((i19 & (1 << i20)) != 0) {
                                z11 = true;
                            } else {
                                z11 = false;
                            }
                            zArr2[i17] = z11;
                            i20--;
                            i17 = i21;
                        }
                    } else {
                        int i22 = (i17 + i10) - 1;
                        if (i19 > 1) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        Arrays.fill(zArr2, i17, i22, z10);
                        i17 += i10 - 1;
                    }
                }
                return new b(zArr2, a10, (i12 * 100) / length);
            } catch (d e10) {
                throw f.b(e10);
            }
        }
        throw f.a();
    }

    private boolean[] d(j9.b bVar) {
        int i10;
        int i11;
        boolean f10 = this.f15930a.f();
        int e10 = this.f15930a.e();
        if (f10) {
            i10 = 11;
        } else {
            i10 = 14;
        }
        int i12 = i10 + (e10 * 4);
        int[] iArr = new int[i12];
        boolean[] zArr = new boolean[j(e10, f10)];
        int i13 = 2;
        if (f10) {
            for (int i14 = 0; i14 < i12; i14++) {
                iArr[i14] = i14;
            }
        } else {
            int i15 = i12 / 2;
            int i16 = ((i12 + 1) + (((i15 - 1) / 15) * 2)) / 2;
            for (int i17 = 0; i17 < i15; i17++) {
                int i18 = (i17 / 15) + i17;
                iArr[(i15 - i17) - 1] = (i16 - i18) - 1;
                iArr[i15 + i17] = i18 + i16 + 1;
            }
        }
        int i19 = 0;
        int i20 = 0;
        while (i19 < e10) {
            int i21 = (e10 - i19) * 4;
            if (f10) {
                i11 = 9;
            } else {
                i11 = 12;
            }
            int i22 = i21 + i11;
            int i23 = i19 * 2;
            int i24 = (i12 - 1) - i23;
            int i25 = 0;
            while (i25 < i22) {
                int i26 = i25 * 2;
                int i27 = 0;
                while (i27 < i13) {
                    int i28 = i23 + i27;
                    int i29 = i23 + i25;
                    zArr[i20 + i26 + i27] = bVar.e(iArr[i28], iArr[i29]);
                    int i30 = iArr[i29];
                    int i31 = i24 - i27;
                    boolean z10 = f10;
                    zArr[(i22 * 2) + i20 + i26 + i27] = bVar.e(i30, iArr[i31]);
                    int i32 = iArr[i31];
                    int i33 = i24 - i25;
                    zArr[(i22 * 4) + i20 + i26 + i27] = bVar.e(i32, iArr[i33]);
                    zArr[(i22 * 6) + i20 + i26 + i27] = bVar.e(iArr[i33], iArr[i28]);
                    i27++;
                    e10 = e10;
                    f10 = z10;
                    i13 = 2;
                }
                i25++;
                i13 = 2;
            }
            i20 += i22 * 8;
            i19++;
            i13 = 2;
        }
        return zArr;
    }

    private static String e(c cVar, int i10) {
        int i11 = C0167a.f15931a[cVar.ordinal()];
        if (i11 != 1) {
            if (i11 != 2) {
                if (i11 != 3) {
                    if (i11 != 4) {
                        if (i11 == 5) {
                            return f15928f[i10];
                        }
                        throw new IllegalStateException("Bad table");
                    }
                    return f15927e[i10];
                }
                return f15926d[i10];
            }
            return f15925c[i10];
        }
        return f15924b[i10];
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x00b6, code lost:
        throw d9.f.a();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String f(boolean[] r14) {
        /*
            Method dump skipped, instructions count: 284
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f9.a.f(boolean[]):java.lang.String");
    }

    private static c g(char c10) {
        if (c10 != 'B') {
            if (c10 != 'D') {
                if (c10 != 'P') {
                    if (c10 != 'L') {
                        if (c10 != 'M') {
                            return c.UPPER;
                        }
                        return c.MIXED;
                    }
                    return c.LOWER;
                }
                return c.PUNCT;
            }
            return c.DIGIT;
        }
        return c.BINARY;
    }

    private static byte h(boolean[] zArr, int i10) {
        int i11;
        int length = zArr.length - i10;
        if (length >= 8) {
            i11 = i(zArr, i10, 8);
        } else {
            i11 = i(zArr, i10, length) << (8 - length);
        }
        return (byte) i11;
    }

    private static int i(boolean[] zArr, int i10, int i11) {
        int i12 = 0;
        for (int i13 = i10; i13 < i10 + i11; i13++) {
            i12 <<= 1;
            if (zArr[i13]) {
                i12 |= 1;
            }
        }
        return i12;
    }

    private static int j(int i10, boolean z10) {
        return ((z10 ? 88 : 112) + (i10 * 16)) * i10;
    }

    public e c(e9.a aVar) {
        this.f15930a = aVar;
        b b10 = b(d(aVar.a()));
        e eVar = new e(a(b10.f15932a), f(b10.f15932a), null, String.format("%d%%", Integer.valueOf(b10.f15934c)));
        eVar.o(b10.f15932a.length);
        eVar.n(Integer.valueOf(b10.f15933b));
        return eVar;
    }
}
