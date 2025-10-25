package n4;

import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import com.pichillilorenzo.flutter_inappwebview_android.chrome_custom_tabs.ChromeCustomTabsActivity;
import io.appmetrica.analytics.BuildConfig;
import io.appmetrica.analytics.impl.C1415p9;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import m4.b;
import m4.h;
import m4.l;
import m4.m;
import y4.e0;
import y4.q0;
import y4.r;
/* loaded from: classes.dex */
public final class a extends e {

    /* renamed from: h  reason: collision with root package name */
    private final int f26154h;

    /* renamed from: i  reason: collision with root package name */
    private final int f26155i;

    /* renamed from: j  reason: collision with root package name */
    private final int f26156j;

    /* renamed from: k  reason: collision with root package name */
    private final long f26157k;

    /* renamed from: n  reason: collision with root package name */
    private List f26160n;

    /* renamed from: o  reason: collision with root package name */
    private List f26161o;

    /* renamed from: p  reason: collision with root package name */
    private int f26162p;

    /* renamed from: q  reason: collision with root package name */
    private int f26163q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f26164r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f26165s;

    /* renamed from: t  reason: collision with root package name */
    private byte f26166t;

    /* renamed from: u  reason: collision with root package name */
    private byte f26167u;

    /* renamed from: w  reason: collision with root package name */
    private boolean f26169w;

    /* renamed from: x  reason: collision with root package name */
    private long f26170x;

    /* renamed from: y  reason: collision with root package name */
    private static final int[] f26151y = {11, 1, 3, 12, 14, 5, 7, 9};

    /* renamed from: z  reason: collision with root package name */
    private static final int[] f26152z = {0, 4, 8, 12, 16, 20, 24, 28};
    private static final int[] A = {-1, -16711936, -16776961, -16711681, -65536, -256, -65281};
    private static final int[] B = {32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 225, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 233, 93, 237, 243, 250, 97, 98, 99, 100, ChromeCustomTabsActivity.NO_HISTORY_CHROME_CUSTOM_TAB_REQUEST_CODE, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, BuildConfig.API_LEVEL, 116, 117, 118, 119, 120, 121, 122, 231, 247, 209, 241, 9632};
    private static final int[] C = {174, 176, 189, 191, 8482, 162, 163, 9834, 224, 32, 232, 226, 234, 238, 244, 251};
    private static final int[] D = {193, 201, 211, 218, 220, 252, 8216, 161, 42, 39, 8212, 169, 8480, 8226, 8220, 8221, 192, 194, 199, 200, 202, 203, 235, 206, 207, 239, 212, 217, 249, 219, 171, 187};
    private static final int[] E = {195, 227, 205, 204, 236, 210, 242, 213, 245, 123, 125, 92, 94, 95, 124, 126, 196, 228, 214, 246, 223, 165, 164, 9474, 197, 229, 216, 248, 9484, 9488, 9492, 9496};
    private static final boolean[] F = {false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false};

    /* renamed from: g  reason: collision with root package name */
    private final e0 f26153g = new e0();

    /* renamed from: l  reason: collision with root package name */
    private final ArrayList f26158l = new ArrayList();

    /* renamed from: m  reason: collision with root package name */
    private C0252a f26159m = new C0252a(0, 4);

    /* renamed from: v  reason: collision with root package name */
    private int f26168v = 0;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n4.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0252a {

        /* renamed from: a  reason: collision with root package name */
        private final List f26171a = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        private final List f26172b = new ArrayList();

        /* renamed from: c  reason: collision with root package name */
        private final StringBuilder f26173c = new StringBuilder();

        /* renamed from: d  reason: collision with root package name */
        private int f26174d;

        /* renamed from: e  reason: collision with root package name */
        private int f26175e;

        /* renamed from: f  reason: collision with root package name */
        private int f26176f;

        /* renamed from: g  reason: collision with root package name */
        private int f26177g;

        /* renamed from: h  reason: collision with root package name */
        private int f26178h;

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: n4.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static class C0253a {

            /* renamed from: a  reason: collision with root package name */
            public final int f26179a;

            /* renamed from: b  reason: collision with root package name */
            public final boolean f26180b;

            /* renamed from: c  reason: collision with root package name */
            public int f26181c;

            public C0253a(int i10, boolean z10, int i11) {
                this.f26179a = i10;
                this.f26180b = z10;
                this.f26181c = i11;
            }
        }

        public C0252a(int i10, int i11) {
            j(i10);
            this.f26178h = i11;
        }

        private SpannableString h() {
            int i10;
            boolean z10;
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.f26173c);
            int length = spannableStringBuilder.length();
            int i11 = -1;
            int i12 = -1;
            int i13 = -1;
            int i14 = -1;
            int i15 = 0;
            int i16 = 0;
            boolean z11 = false;
            while (i15 < this.f26171a.size()) {
                C0253a c0253a = (C0253a) this.f26171a.get(i15);
                boolean z12 = c0253a.f26180b;
                int i17 = c0253a.f26179a;
                if (i17 != 8) {
                    if (i17 == 7) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    if (i17 != 7) {
                        i14 = a.A[i17];
                    }
                    z11 = z10;
                }
                int i18 = c0253a.f26181c;
                i15++;
                if (i15 < this.f26171a.size()) {
                    i10 = ((C0253a) this.f26171a.get(i15)).f26181c;
                } else {
                    i10 = length;
                }
                if (i18 != i10) {
                    if (i11 != -1 && !z12) {
                        q(spannableStringBuilder, i11, i18);
                        i11 = -1;
                    } else if (i11 == -1 && z12) {
                        i11 = i18;
                    }
                    if (i12 != -1 && !z11) {
                        o(spannableStringBuilder, i12, i18);
                        i12 = -1;
                    } else if (i12 == -1 && z11) {
                        i12 = i18;
                    }
                    if (i14 != i13) {
                        n(spannableStringBuilder, i16, i18, i13);
                        i13 = i14;
                        i16 = i18;
                    }
                }
            }
            if (i11 != -1 && i11 != length) {
                q(spannableStringBuilder, i11, length);
            }
            if (i12 != -1 && i12 != length) {
                o(spannableStringBuilder, i12, length);
            }
            if (i16 != length) {
                n(spannableStringBuilder, i16, length, i13);
            }
            return new SpannableString(spannableStringBuilder);
        }

        private static void n(SpannableStringBuilder spannableStringBuilder, int i10, int i11, int i12) {
            if (i12 == -1) {
                return;
            }
            spannableStringBuilder.setSpan(new ForegroundColorSpan(i12), i10, i11, 33);
        }

        private static void o(SpannableStringBuilder spannableStringBuilder, int i10, int i11) {
            spannableStringBuilder.setSpan(new StyleSpan(2), i10, i11, 33);
        }

        private static void q(SpannableStringBuilder spannableStringBuilder, int i10, int i11) {
            spannableStringBuilder.setSpan(new UnderlineSpan(), i10, i11, 33);
        }

        public void e(char c10) {
            if (this.f26173c.length() < 32) {
                this.f26173c.append(c10);
            }
        }

        public void f() {
            int length = this.f26173c.length();
            if (length > 0) {
                this.f26173c.delete(length - 1, length);
                for (int size = this.f26171a.size() - 1; size >= 0; size--) {
                    C0253a c0253a = (C0253a) this.f26171a.get(size);
                    int i10 = c0253a.f26181c;
                    if (i10 == length) {
                        c0253a.f26181c = i10 - 1;
                    } else {
                        return;
                    }
                }
            }
        }

        public m4.b g(int i10) {
            float f10;
            int i11 = this.f26175e + this.f26176f;
            int i12 = 32 - i11;
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            for (int i13 = 0; i13 < this.f26172b.size(); i13++) {
                spannableStringBuilder.append(q0.W0((CharSequence) this.f26172b.get(i13), i12));
                spannableStringBuilder.append('\n');
            }
            spannableStringBuilder.append(q0.W0(h(), i12));
            if (spannableStringBuilder.length() == 0) {
                return null;
            }
            int length = i12 - spannableStringBuilder.length();
            int i14 = i11 - length;
            if (i10 == Integer.MIN_VALUE) {
                if (this.f26177g == 2 && (Math.abs(i14) < 3 || length < 0)) {
                    i10 = 1;
                } else if (this.f26177g == 2 && i14 > 0) {
                    i10 = 2;
                } else {
                    i10 = 0;
                }
            }
            if (i10 != 1) {
                if (i10 == 2) {
                    i11 = 32 - length;
                }
                f10 = ((i11 / 32.0f) * 0.8f) + 0.1f;
            } else {
                f10 = 0.5f;
            }
            int i15 = this.f26174d;
            if (i15 > 7) {
                i15 = (i15 - 15) - 2;
            } else if (this.f26177g == 1) {
                i15 -= this.f26178h - 1;
            }
            return new b.C0247b().o(spannableStringBuilder).p(Layout.Alignment.ALIGN_NORMAL).h(i15, 1).k(f10).l(i10).a();
        }

        public boolean i() {
            if (this.f26171a.isEmpty() && this.f26172b.isEmpty() && this.f26173c.length() == 0) {
                return true;
            }
            return false;
        }

        public void j(int i10) {
            this.f26177g = i10;
            this.f26171a.clear();
            this.f26172b.clear();
            this.f26173c.setLength(0);
            this.f26174d = 15;
            this.f26175e = 0;
            this.f26176f = 0;
        }

        public void k() {
            this.f26172b.add(h());
            this.f26173c.setLength(0);
            this.f26171a.clear();
            int min = Math.min(this.f26178h, this.f26174d);
            while (this.f26172b.size() >= min) {
                this.f26172b.remove(0);
            }
        }

        public void l(int i10) {
            this.f26177g = i10;
        }

        public void m(int i10) {
            this.f26178h = i10;
        }

        public void p(int i10, boolean z10) {
            this.f26171a.add(new C0253a(i10, z10, this.f26173c.length()));
        }
    }

    public a(String str, int i10, long j10) {
        long j11;
        int i11;
        if (j10 > 0) {
            j11 = j10 * 1000;
        } else {
            j11 = -9223372036854775807L;
        }
        this.f26157k = j11;
        if ("application/x-mp4-cea-608".equals(str)) {
            i11 = 2;
        } else {
            i11 = 3;
        }
        this.f26154h = i11;
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        r.i("Cea608Decoder", "Invalid channel. Defaulting to CC1.");
                        this.f26156j = 0;
                        this.f26155i = 0;
                    } else {
                        this.f26156j = 1;
                        this.f26155i = 1;
                    }
                } else {
                    this.f26156j = 0;
                    this.f26155i = 1;
                }
            } else {
                this.f26156j = 1;
                this.f26155i = 0;
            }
        } else {
            this.f26156j = 0;
            this.f26155i = 0;
        }
        M(0);
        L();
        this.f26169w = true;
        this.f26170x = -9223372036854775807L;
    }

    private static boolean A(byte b10, byte b11) {
        return (b10 & 246) == 18 && (b11 & 224) == 32;
    }

    private static boolean B(byte b10, byte b11) {
        return (b10 & 247) == 17 && (b11 & 240) == 32;
    }

    private static boolean C(byte b10, byte b11) {
        return (b10 & 246) == 20 && (b11 & 240) == 32;
    }

    private static boolean D(byte b10, byte b11) {
        return (b10 & 240) == 16 && (b11 & 192) == 64;
    }

    private static boolean E(byte b10) {
        return (b10 & 240) == 16;
    }

    private boolean F(boolean z10, byte b10, byte b11) {
        if (z10 && E(b10)) {
            if (this.f26165s && this.f26166t == b10 && this.f26167u == b11) {
                this.f26165s = false;
                return true;
            }
            this.f26165s = true;
            this.f26166t = b10;
            this.f26167u = b11;
        } else {
            this.f26165s = false;
        }
        return false;
    }

    private static boolean G(byte b10) {
        return (b10 & 246) == 20;
    }

    private static boolean H(byte b10, byte b11) {
        return (b10 & 247) == 17 && (b11 & 240) == 48;
    }

    private static boolean I(byte b10, byte b11) {
        return (b10 & 247) == 23 && b11 >= 33 && b11 <= 35;
    }

    private static boolean J(byte b10) {
        return 1 <= b10 && b10 <= 15;
    }

    private void K(byte b10, byte b11) {
        if (J(b10)) {
            this.f26169w = false;
        } else if (G(b10)) {
            if (b11 != 32 && b11 != 47) {
                switch (b11) {
                    case 37:
                    case C1415p9.K /* 38 */:
                    case 39:
                        break;
                    default:
                        switch (b11) {
                            case 41:
                                break;
                            case C1415p9.M /* 42 */:
                            case 43:
                                this.f26169w = false;
                                return;
                            default:
                                return;
                        }
                }
            }
            this.f26169w = true;
        }
    }

    private void L() {
        this.f26159m.j(this.f26162p);
        this.f26158l.clear();
        this.f26158l.add(this.f26159m);
    }

    private void M(int i10) {
        int i11 = this.f26162p;
        if (i11 == i10) {
            return;
        }
        this.f26162p = i10;
        if (i10 == 3) {
            for (int i12 = 0; i12 < this.f26158l.size(); i12++) {
                ((C0252a) this.f26158l.get(i12)).l(i10);
            }
            return;
        }
        L();
        if (i11 == 3 || i10 == 1 || i10 == 0) {
            this.f26160n = Collections.emptyList();
        }
    }

    private void N(int i10) {
        this.f26163q = i10;
        this.f26159m.m(i10);
    }

    private boolean O() {
        if (this.f26157k == -9223372036854775807L || this.f26170x == -9223372036854775807L || j() - this.f26170x < this.f26157k) {
            return false;
        }
        return true;
    }

    private boolean P(byte b10) {
        if (z(b10)) {
            this.f26168v = q(b10);
        }
        if (this.f26168v == this.f26156j) {
            return true;
        }
        return false;
    }

    private static char p(byte b10) {
        return (char) B[(b10 & Byte.MAX_VALUE) - 32];
    }

    private static int q(byte b10) {
        return (b10 >> 3) & 1;
    }

    private List r() {
        int size = this.f26158l.size();
        ArrayList arrayList = new ArrayList(size);
        int i10 = 2;
        for (int i11 = 0; i11 < size; i11++) {
            m4.b g10 = ((C0252a) this.f26158l.get(i11)).g(Integer.MIN_VALUE);
            arrayList.add(g10);
            if (g10 != null) {
                i10 = Math.min(i10, g10.f25693i);
            }
        }
        ArrayList arrayList2 = new ArrayList(size);
        for (int i12 = 0; i12 < size; i12++) {
            m4.b bVar = (m4.b) arrayList.get(i12);
            if (bVar != null) {
                if (bVar.f25693i != i10) {
                    bVar = (m4.b) y4.a.e(((C0252a) this.f26158l.get(i12)).g(i10));
                }
                arrayList2.add(bVar);
            }
        }
        return arrayList2;
    }

    private static char s(byte b10) {
        return (char) D[b10 & 31];
    }

    private static char t(byte b10) {
        return (char) E[b10 & 31];
    }

    private static char u(byte b10, byte b11) {
        if ((b10 & 1) == 0) {
            return s(b11);
        }
        return t(b11);
    }

    private static char v(byte b10) {
        return (char) C[b10 & 15];
    }

    private void w(byte b10) {
        boolean z10;
        this.f26159m.e(' ');
        if ((b10 & 1) == 1) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.f26159m.p((b10 >> 1) & 7, z10);
    }

    private void x(byte b10) {
        if (b10 != 32) {
            if (b10 != 41) {
                switch (b10) {
                    case 37:
                        M(1);
                        N(2);
                        return;
                    case C1415p9.K /* 38 */:
                        M(1);
                        N(3);
                        return;
                    case 39:
                        M(1);
                        N(4);
                        return;
                    default:
                        int i10 = this.f26162p;
                        if (i10 == 0) {
                            return;
                        }
                        if (b10 != 33) {
                            switch (b10) {
                                case 44:
                                    this.f26160n = Collections.emptyList();
                                    int i11 = this.f26162p;
                                    if (i11 == 1 || i11 == 3) {
                                        L();
                                        return;
                                    }
                                    return;
                                case 45:
                                    if (i10 == 1 && !this.f26159m.i()) {
                                        this.f26159m.k();
                                        return;
                                    }
                                    return;
                                case 46:
                                    L();
                                    return;
                                case 47:
                                    this.f26160n = r();
                                    L();
                                    return;
                                default:
                                    return;
                            }
                        }
                        this.f26159m.f();
                        return;
                }
            }
            M(3);
            return;
        }
        M(2);
    }

    private void y(byte b10, byte b11) {
        boolean z10;
        boolean z11;
        int i10;
        int i11 = f26151y[b10 & 7];
        boolean z12 = false;
        if ((b11 & 32) != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            i11++;
        }
        if (i11 != this.f26159m.f26174d) {
            if (this.f26162p != 1 && !this.f26159m.i()) {
                C0252a c0252a = new C0252a(this.f26162p, this.f26163q);
                this.f26159m = c0252a;
                this.f26158l.add(c0252a);
            }
            this.f26159m.f26174d = i11;
        }
        if ((b11 & 16) == 16) {
            z11 = true;
        } else {
            z11 = false;
        }
        if ((b11 & 1) == 1) {
            z12 = true;
        }
        int i12 = (b11 >> 1) & 7;
        C0252a c0252a2 = this.f26159m;
        if (z11) {
            i10 = 8;
        } else {
            i10 = i12;
        }
        c0252a2.p(i10, z12);
        if (z11) {
            this.f26159m.f26175e = f26152z[i12];
        }
    }

    private static boolean z(byte b10) {
        return (b10 & 224) == 0;
    }

    @Override // n4.e, m4.i
    public /* bridge */ /* synthetic */ void a(long j10) {
        super.a(j10);
    }

    @Override // n4.e
    protected h e() {
        List list = this.f26160n;
        this.f26161o = list;
        return new f((List) y4.a.e(list));
    }

    /* JADX WARN: Removed duplicated region for block: B:76:0x006d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0017 A[SYNTHETIC] */
    @Override // n4.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void f(m4.l r10) {
        /*
            Method dump skipped, instructions count: 267
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: n4.a.f(m4.l):void");
    }

    @Override // n4.e, e3.d
    public void flush() {
        super.flush();
        this.f26160n = null;
        this.f26161o = null;
        M(0);
        N(4);
        L();
        this.f26164r = false;
        this.f26165s = false;
        this.f26166t = (byte) 0;
        this.f26167u = (byte) 0;
        this.f26168v = 0;
        this.f26169w = true;
        this.f26170x = -9223372036854775807L;
    }

    @Override // n4.e
    public /* bridge */ /* synthetic */ l g() {
        return super.c();
    }

    @Override // n4.e, e3.d
    /* renamed from: h */
    public m b() {
        m i10;
        m b10 = super.b();
        if (b10 != null) {
            return b10;
        }
        if (O() && (i10 = i()) != null) {
            this.f26160n = Collections.emptyList();
            this.f26170x = -9223372036854775807L;
            i10.w(j(), e(), Long.MAX_VALUE);
            return i10;
        }
        return null;
    }

    @Override // n4.e
    protected boolean k() {
        if (this.f26160n != this.f26161o) {
            return true;
        }
        return false;
    }

    @Override // n4.e
    public /* bridge */ /* synthetic */ void l(l lVar) {
        super.d(lVar);
    }

    @Override // n4.e, e3.d
    public void release() {
    }
}
