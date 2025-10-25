package n4;

import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import kotlin.KotlinVersion;
import m4.b;
import m4.h;
import m4.l;
import m4.m;
import n4.c;
import y4.d0;
import y4.e0;
import y4.r;
/* loaded from: classes.dex */
public final class c extends e {

    /* renamed from: g  reason: collision with root package name */
    private final e0 f26182g = new e0();

    /* renamed from: h  reason: collision with root package name */
    private final d0 f26183h = new d0();

    /* renamed from: i  reason: collision with root package name */
    private int f26184i = -1;

    /* renamed from: j  reason: collision with root package name */
    private final boolean f26185j;

    /* renamed from: k  reason: collision with root package name */
    private final int f26186k;

    /* renamed from: l  reason: collision with root package name */
    private final b[] f26187l;

    /* renamed from: m  reason: collision with root package name */
    private b f26188m;

    /* renamed from: n  reason: collision with root package name */
    private List f26189n;

    /* renamed from: o  reason: collision with root package name */
    private List f26190o;

    /* renamed from: p  reason: collision with root package name */
    private C0254c f26191p;

    /* renamed from: q  reason: collision with root package name */
    private int f26192q;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: c  reason: collision with root package name */
        private static final Comparator f26193c = new Comparator() { // from class: n4.b
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int c10;
                c10 = c.a.c((c.a) obj, (c.a) obj2);
                return c10;
            }
        };

        /* renamed from: a  reason: collision with root package name */
        public final m4.b f26194a;

        /* renamed from: b  reason: collision with root package name */
        public final int f26195b;

        public a(CharSequence charSequence, Layout.Alignment alignment, float f10, int i10, int i11, float f11, int i12, float f12, boolean z10, int i13, int i14) {
            b.C0247b n10 = new b.C0247b().o(charSequence).p(alignment).h(f10, i10).i(i11).k(f11).l(i12).n(f12);
            if (z10) {
                n10.s(i13);
            }
            this.f26194a = n10.a();
            this.f26195b = i14;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ int c(a aVar, a aVar2) {
            return Integer.compare(aVar2.f26195b, aVar.f26195b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class b {
        private static final int[] A;
        private static final int[] B;
        private static final boolean[] C;
        private static final int[] D;
        private static final int[] E;
        private static final int[] F;
        private static final int[] G;

        /* renamed from: w  reason: collision with root package name */
        public static final int f26196w = h(2, 2, 2, 0);

        /* renamed from: x  reason: collision with root package name */
        public static final int f26197x;

        /* renamed from: y  reason: collision with root package name */
        public static final int f26198y;

        /* renamed from: z  reason: collision with root package name */
        private static final int[] f26199z;

        /* renamed from: a  reason: collision with root package name */
        private final List f26200a = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        private final SpannableStringBuilder f26201b = new SpannableStringBuilder();

        /* renamed from: c  reason: collision with root package name */
        private boolean f26202c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f26203d;

        /* renamed from: e  reason: collision with root package name */
        private int f26204e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f26205f;

        /* renamed from: g  reason: collision with root package name */
        private int f26206g;

        /* renamed from: h  reason: collision with root package name */
        private int f26207h;

        /* renamed from: i  reason: collision with root package name */
        private int f26208i;

        /* renamed from: j  reason: collision with root package name */
        private int f26209j;

        /* renamed from: k  reason: collision with root package name */
        private boolean f26210k;

        /* renamed from: l  reason: collision with root package name */
        private int f26211l;

        /* renamed from: m  reason: collision with root package name */
        private int f26212m;

        /* renamed from: n  reason: collision with root package name */
        private int f26213n;

        /* renamed from: o  reason: collision with root package name */
        private int f26214o;

        /* renamed from: p  reason: collision with root package name */
        private int f26215p;

        /* renamed from: q  reason: collision with root package name */
        private int f26216q;

        /* renamed from: r  reason: collision with root package name */
        private int f26217r;

        /* renamed from: s  reason: collision with root package name */
        private int f26218s;

        /* renamed from: t  reason: collision with root package name */
        private int f26219t;

        /* renamed from: u  reason: collision with root package name */
        private int f26220u;

        /* renamed from: v  reason: collision with root package name */
        private int f26221v;

        static {
            int h10 = h(0, 0, 0, 0);
            f26197x = h10;
            int h11 = h(0, 0, 0, 3);
            f26198y = h11;
            f26199z = new int[]{0, 0, 0, 0, 0, 2, 0};
            A = new int[]{0, 0, 0, 0, 0, 0, 2};
            B = new int[]{3, 3, 3, 3, 3, 3, 1};
            C = new boolean[]{false, false, false, true, true, true, false};
            D = new int[]{h10, h11, h10, h10, h11, h10, h10};
            E = new int[]{0, 1, 2, 3, 4, 3, 4};
            F = new int[]{0, 0, 0, 0, 0, 3, 3};
            G = new int[]{h10, h10, h10, h10, h10, h11, h11};
        }

        public b() {
            l();
        }

        public static int g(int i10, int i11, int i12) {
            return h(i10, i11, i12, 0);
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x0024  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x0026  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x0029  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x002b  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x002e  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static int h(int r4, int r5, int r6, int r7) {
            /*
                r0 = 0
                r1 = 4
                y4.a.c(r4, r0, r1)
                y4.a.c(r5, r0, r1)
                y4.a.c(r6, r0, r1)
                y4.a.c(r7, r0, r1)
                r1 = 1
                r2 = 255(0xff, float:3.57E-43)
                if (r7 == 0) goto L21
                if (r7 == r1) goto L21
                r3 = 2
                if (r7 == r3) goto L1e
                r3 = 3
                if (r7 == r3) goto L1c
                goto L21
            L1c:
                r7 = r0
                goto L22
            L1e:
                r7 = 127(0x7f, float:1.78E-43)
                goto L22
            L21:
                r7 = r2
            L22:
                if (r4 <= r1) goto L26
                r4 = r2
                goto L27
            L26:
                r4 = r0
            L27:
                if (r5 <= r1) goto L2b
                r5 = r2
                goto L2c
            L2b:
                r5 = r0
            L2c:
                if (r6 <= r1) goto L2f
                r0 = r2
            L2f:
                int r4 = android.graphics.Color.argb(r7, r4, r5, r0)
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: n4.c.b.h(int, int, int, int):int");
        }

        public void a(char c10) {
            if (c10 == '\n') {
                this.f26200a.add(d());
                this.f26201b.clear();
                if (this.f26215p != -1) {
                    this.f26215p = 0;
                }
                if (this.f26216q != -1) {
                    this.f26216q = 0;
                }
                if (this.f26217r != -1) {
                    this.f26217r = 0;
                }
                if (this.f26219t != -1) {
                    this.f26219t = 0;
                }
                while (true) {
                    if ((this.f26210k && this.f26200a.size() >= this.f26209j) || this.f26200a.size() >= 15) {
                        this.f26200a.remove(0);
                    } else {
                        return;
                    }
                }
            } else {
                this.f26201b.append(c10);
            }
        }

        public void b() {
            int length = this.f26201b.length();
            if (length > 0) {
                this.f26201b.delete(length - 1, length);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:23:0x0065  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x0070  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x008f  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x0091  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x009c  */
        /* JADX WARN: Removed duplicated region for block: B:35:0x009e  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x00aa  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public n4.c.a c() {
            /*
                Method dump skipped, instructions count: 195
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: n4.c.b.c():n4.c$a");
        }

        public SpannableString d() {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.f26201b);
            int length = spannableStringBuilder.length();
            if (length > 0) {
                if (this.f26215p != -1) {
                    spannableStringBuilder.setSpan(new StyleSpan(2), this.f26215p, length, 33);
                }
                if (this.f26216q != -1) {
                    spannableStringBuilder.setSpan(new UnderlineSpan(), this.f26216q, length, 33);
                }
                if (this.f26217r != -1) {
                    spannableStringBuilder.setSpan(new ForegroundColorSpan(this.f26218s), this.f26217r, length, 33);
                }
                if (this.f26219t != -1) {
                    spannableStringBuilder.setSpan(new BackgroundColorSpan(this.f26220u), this.f26219t, length, 33);
                }
            }
            return new SpannableString(spannableStringBuilder);
        }

        public void e() {
            this.f26200a.clear();
            this.f26201b.clear();
            this.f26215p = -1;
            this.f26216q = -1;
            this.f26217r = -1;
            this.f26219t = -1;
            this.f26221v = 0;
        }

        public void f(boolean z10, boolean z11, boolean z12, int i10, boolean z13, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
            this.f26202c = true;
            this.f26203d = z10;
            this.f26210k = z11;
            this.f26204e = i10;
            this.f26205f = z13;
            this.f26206g = i11;
            this.f26207h = i12;
            this.f26208i = i15;
            int i18 = i13 + 1;
            if (this.f26209j != i18) {
                this.f26209j = i18;
                while (true) {
                    if ((!z11 || this.f26200a.size() < this.f26209j) && this.f26200a.size() < 15) {
                        break;
                    }
                    this.f26200a.remove(0);
                }
            }
            if (i16 != 0 && this.f26212m != i16) {
                this.f26212m = i16;
                int i19 = i16 - 1;
                q(D[i19], f26198y, C[i19], 0, A[i19], B[i19], f26199z[i19]);
            }
            if (i17 == 0 || this.f26213n == i17) {
                return;
            }
            this.f26213n = i17;
            int i20 = i17 - 1;
            m(0, 1, 1, false, false, F[i20], E[i20]);
            n(f26196w, G[i20], f26197x);
        }

        public boolean i() {
            return this.f26202c;
        }

        public boolean j() {
            if (i() && (!this.f26200a.isEmpty() || this.f26201b.length() != 0)) {
                return false;
            }
            return true;
        }

        public boolean k() {
            return this.f26203d;
        }

        public void l() {
            e();
            this.f26202c = false;
            this.f26203d = false;
            this.f26204e = 4;
            this.f26205f = false;
            this.f26206g = 0;
            this.f26207h = 0;
            this.f26208i = 0;
            this.f26209j = 15;
            this.f26210k = true;
            this.f26211l = 0;
            this.f26212m = 0;
            this.f26213n = 0;
            int i10 = f26197x;
            this.f26214o = i10;
            this.f26218s = f26196w;
            this.f26220u = i10;
        }

        public void m(int i10, int i11, int i12, boolean z10, boolean z11, int i13, int i14) {
            if (this.f26215p != -1) {
                if (!z10) {
                    this.f26201b.setSpan(new StyleSpan(2), this.f26215p, this.f26201b.length(), 33);
                    this.f26215p = -1;
                }
            } else if (z10) {
                this.f26215p = this.f26201b.length();
            }
            if (this.f26216q != -1) {
                if (!z11) {
                    this.f26201b.setSpan(new UnderlineSpan(), this.f26216q, this.f26201b.length(), 33);
                    this.f26216q = -1;
                }
            } else if (z11) {
                this.f26216q = this.f26201b.length();
            }
        }

        public void n(int i10, int i11, int i12) {
            if (this.f26217r != -1 && this.f26218s != i10) {
                this.f26201b.setSpan(new ForegroundColorSpan(this.f26218s), this.f26217r, this.f26201b.length(), 33);
            }
            if (i10 != f26196w) {
                this.f26217r = this.f26201b.length();
                this.f26218s = i10;
            }
            if (this.f26219t != -1 && this.f26220u != i11) {
                this.f26201b.setSpan(new BackgroundColorSpan(this.f26220u), this.f26219t, this.f26201b.length(), 33);
            }
            if (i11 != f26197x) {
                this.f26219t = this.f26201b.length();
                this.f26220u = i11;
            }
        }

        public void o(int i10, int i11) {
            if (this.f26221v != i10) {
                a('\n');
            }
            this.f26221v = i10;
        }

        public void p(boolean z10) {
            this.f26203d = z10;
        }

        public void q(int i10, int i11, boolean z10, int i12, int i13, int i14, int i15) {
            this.f26214o = i10;
            this.f26211l = i15;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n4.c$c  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0254c {

        /* renamed from: a  reason: collision with root package name */
        public final int f26222a;

        /* renamed from: b  reason: collision with root package name */
        public final int f26223b;

        /* renamed from: c  reason: collision with root package name */
        public final byte[] f26224c;

        /* renamed from: d  reason: collision with root package name */
        int f26225d = 0;

        public C0254c(int i10, int i11) {
            this.f26222a = i10;
            this.f26223b = i11;
            this.f26224c = new byte[(i11 * 2) - 1];
        }
    }

    public c(int i10, List list) {
        boolean z10 = true;
        this.f26186k = i10 == -1 ? 1 : i10;
        this.f26185j = (list == null || !y4.e.h(list)) ? false : z10;
        this.f26187l = new b[8];
        for (int i11 = 0; i11 < 8; i11++) {
            this.f26187l[i11] = new b();
        }
        this.f26188m = this.f26187l[0];
    }

    private void A() {
        int h10 = b.h(this.f26183h.h(2), this.f26183h.h(2), this.f26183h.h(2), this.f26183h.h(2));
        int h11 = b.h(this.f26183h.h(2), this.f26183h.h(2), this.f26183h.h(2), this.f26183h.h(2));
        this.f26183h.r(2);
        this.f26188m.n(h10, h11, b.g(this.f26183h.h(2), this.f26183h.h(2), this.f26183h.h(2)));
    }

    private void B() {
        this.f26183h.r(4);
        int h10 = this.f26183h.h(4);
        this.f26183h.r(2);
        this.f26188m.o(h10, this.f26183h.h(6));
    }

    private void C() {
        int h10 = b.h(this.f26183h.h(2), this.f26183h.h(2), this.f26183h.h(2), this.f26183h.h(2));
        int h11 = this.f26183h.h(2);
        int g10 = b.g(this.f26183h.h(2), this.f26183h.h(2), this.f26183h.h(2));
        if (this.f26183h.g()) {
            h11 |= 4;
        }
        boolean g11 = this.f26183h.g();
        int h12 = this.f26183h.h(2);
        int h13 = this.f26183h.h(2);
        int h14 = this.f26183h.h(2);
        this.f26183h.r(8);
        this.f26188m.q(h10, g10, g11, h11, h12, h13, h14);
    }

    private void D() {
        C0254c c0254c = this.f26191p;
        if (c0254c.f26225d != (c0254c.f26223b * 2) - 1) {
            r.b("Cea708Decoder", "DtvCcPacket ended prematurely; size is " + ((this.f26191p.f26223b * 2) - 1) + ", but current index is " + this.f26191p.f26225d + " (sequence number " + this.f26191p.f26222a + ");");
        }
        d0 d0Var = this.f26183h;
        C0254c c0254c2 = this.f26191p;
        d0Var.o(c0254c2.f26224c, c0254c2.f26225d);
        boolean z10 = false;
        while (true) {
            if (this.f26183h.b() <= 0) {
                break;
            }
            int h10 = this.f26183h.h(3);
            int h11 = this.f26183h.h(5);
            if (h10 == 7) {
                this.f26183h.r(2);
                h10 = this.f26183h.h(6);
                if (h10 < 7) {
                    r.i("Cea708Decoder", "Invalid extended service number: " + h10);
                }
            }
            if (h11 == 0) {
                if (h10 != 0) {
                    r.i("Cea708Decoder", "serviceNumber is non-zero (" + h10 + ") when blockSize is 0");
                }
            } else if (h10 != this.f26186k) {
                this.f26183h.s(h11);
            } else {
                int e10 = this.f26183h.e() + (h11 * 8);
                while (this.f26183h.e() < e10) {
                    int h12 = this.f26183h.h(8);
                    if (h12 != 16) {
                        if (h12 <= 31) {
                            q(h12);
                        } else {
                            if (h12 <= 127) {
                                v(h12);
                            } else if (h12 <= 159) {
                                r(h12);
                            } else if (h12 <= 255) {
                                w(h12);
                            } else {
                                r.i("Cea708Decoder", "Invalid base command: " + h12);
                            }
                            z10 = true;
                        }
                    } else {
                        int h13 = this.f26183h.h(8);
                        if (h13 <= 31) {
                            s(h13);
                        } else {
                            if (h13 <= 127) {
                                x(h13);
                            } else if (h13 <= 159) {
                                t(h13);
                            } else if (h13 <= 255) {
                                y(h13);
                            } else {
                                r.i("Cea708Decoder", "Invalid extended command: " + h13);
                            }
                            z10 = true;
                        }
                    }
                }
            }
        }
        if (z10) {
            this.f26189n = p();
        }
    }

    private void E() {
        for (int i10 = 0; i10 < 8; i10++) {
            this.f26187l[i10].l();
        }
    }

    private void o() {
        if (this.f26191p == null) {
            return;
        }
        D();
        this.f26191p = null;
    }

    private List p() {
        a c10;
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < 8; i10++) {
            if (!this.f26187l[i10].j() && this.f26187l[i10].k() && (c10 = this.f26187l[i10].c()) != null) {
                arrayList.add(c10);
            }
        }
        Collections.sort(arrayList, a.f26193c);
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        for (int i11 = 0; i11 < arrayList.size(); i11++) {
            arrayList2.add(((a) arrayList.get(i11)).f26194a);
        }
        return Collections.unmodifiableList(arrayList2);
    }

    private void q(int i10) {
        if (i10 != 0) {
            if (i10 != 3) {
                if (i10 != 8) {
                    switch (i10) {
                        case 12:
                            E();
                            return;
                        case 13:
                            this.f26188m.a('\n');
                            return;
                        case 14:
                            return;
                        default:
                            if (i10 >= 17 && i10 <= 23) {
                                r.i("Cea708Decoder", "Currently unsupported COMMAND_EXT1 Command: " + i10);
                                this.f26183h.r(8);
                                return;
                            } else if (i10 >= 24 && i10 <= 31) {
                                r.i("Cea708Decoder", "Currently unsupported COMMAND_P16 Command: " + i10);
                                this.f26183h.r(16);
                                return;
                            } else {
                                r.i("Cea708Decoder", "Invalid C0 command: " + i10);
                                return;
                            }
                    }
                }
                this.f26188m.b();
                return;
            }
            this.f26189n = p();
        }
    }

    private void r(int i10) {
        b bVar;
        int i11 = 1;
        switch (i10) {
            case 128:
            case 129:
            case 130:
            case 131:
            case 132:
            case 133:
            case 134:
            case 135:
                int i12 = i10 - 128;
                if (this.f26192q != i12) {
                    this.f26192q = i12;
                    this.f26188m = this.f26187l[i12];
                    return;
                }
                return;
            case 136:
                while (i11 <= 8) {
                    if (this.f26183h.g()) {
                        this.f26187l[8 - i11].e();
                    }
                    i11++;
                }
                return;
            case 137:
                for (int i13 = 1; i13 <= 8; i13++) {
                    if (this.f26183h.g()) {
                        this.f26187l[8 - i13].p(true);
                    }
                }
                return;
            case 138:
                while (i11 <= 8) {
                    if (this.f26183h.g()) {
                        this.f26187l[8 - i11].p(false);
                    }
                    i11++;
                }
                return;
            case 139:
                for (int i14 = 1; i14 <= 8; i14++) {
                    if (this.f26183h.g()) {
                        this.f26187l[8 - i14].p(!bVar.k());
                    }
                }
                return;
            case 140:
                while (i11 <= 8) {
                    if (this.f26183h.g()) {
                        this.f26187l[8 - i11].l();
                    }
                    i11++;
                }
                return;
            case 141:
                this.f26183h.r(8);
                return;
            case 142:
                return;
            case 143:
                E();
                return;
            case 144:
                if (!this.f26188m.i()) {
                    this.f26183h.r(16);
                    return;
                } else {
                    z();
                    return;
                }
            case 145:
                if (!this.f26188m.i()) {
                    this.f26183h.r(24);
                    return;
                } else {
                    A();
                    return;
                }
            case 146:
                if (!this.f26188m.i()) {
                    this.f26183h.r(16);
                    return;
                } else {
                    B();
                    return;
                }
            case 147:
            case 148:
            case 149:
            case 150:
            default:
                r.i("Cea708Decoder", "Invalid C1 command: " + i10);
                return;
            case 151:
                if (!this.f26188m.i()) {
                    this.f26183h.r(32);
                    return;
                } else {
                    C();
                    return;
                }
            case 152:
            case 153:
            case 154:
            case ModuleDescriptor.MODULE_VERSION /* 155 */:
            case 156:
            case 157:
            case 158:
            case 159:
                int i15 = i10 - 152;
                u(i15);
                if (this.f26192q != i15) {
                    this.f26192q = i15;
                    this.f26188m = this.f26187l[i15];
                    return;
                }
                return;
        }
    }

    private void s(int i10) {
        if (i10 > 7) {
            if (i10 <= 15) {
                this.f26183h.r(8);
            } else if (i10 <= 23) {
                this.f26183h.r(16);
            } else if (i10 <= 31) {
                this.f26183h.r(24);
            }
        }
    }

    private void t(int i10) {
        if (i10 <= 135) {
            this.f26183h.r(32);
        } else if (i10 <= 143) {
            this.f26183h.r(40);
        } else if (i10 <= 159) {
            this.f26183h.r(2);
            this.f26183h.r(this.f26183h.h(6) * 8);
        }
    }

    private void u(int i10) {
        b bVar = this.f26187l[i10];
        this.f26183h.r(2);
        boolean g10 = this.f26183h.g();
        boolean g11 = this.f26183h.g();
        boolean g12 = this.f26183h.g();
        int h10 = this.f26183h.h(3);
        boolean g13 = this.f26183h.g();
        int h11 = this.f26183h.h(7);
        int h12 = this.f26183h.h(8);
        int h13 = this.f26183h.h(4);
        int h14 = this.f26183h.h(4);
        this.f26183h.r(2);
        int h15 = this.f26183h.h(6);
        this.f26183h.r(2);
        bVar.f(g10, g11, g12, h10, g13, h11, h12, h14, h15, h13, this.f26183h.h(3), this.f26183h.h(3));
    }

    private void v(int i10) {
        if (i10 == 127) {
            this.f26188m.a((char) 9835);
        } else {
            this.f26188m.a((char) (i10 & KotlinVersion.MAX_COMPONENT_VALUE));
        }
    }

    private void w(int i10) {
        this.f26188m.a((char) (i10 & KotlinVersion.MAX_COMPONENT_VALUE));
    }

    private void x(int i10) {
        if (i10 != 32) {
            if (i10 != 33) {
                if (i10 != 37) {
                    if (i10 != 42) {
                        if (i10 != 44) {
                            if (i10 != 63) {
                                if (i10 != 57) {
                                    if (i10 != 58) {
                                        if (i10 != 60) {
                                            if (i10 != 61) {
                                                switch (i10) {
                                                    case 48:
                                                        this.f26188m.a((char) 9608);
                                                        return;
                                                    case 49:
                                                        this.f26188m.a((char) 8216);
                                                        return;
                                                    case 50:
                                                        this.f26188m.a((char) 8217);
                                                        return;
                                                    case 51:
                                                        this.f26188m.a((char) 8220);
                                                        return;
                                                    case 52:
                                                        this.f26188m.a((char) 8221);
                                                        return;
                                                    case 53:
                                                        this.f26188m.a((char) 8226);
                                                        return;
                                                    default:
                                                        switch (i10) {
                                                            case 118:
                                                                this.f26188m.a((char) 8539);
                                                                return;
                                                            case 119:
                                                                this.f26188m.a((char) 8540);
                                                                return;
                                                            case 120:
                                                                this.f26188m.a((char) 8541);
                                                                return;
                                                            case 121:
                                                                this.f26188m.a((char) 8542);
                                                                return;
                                                            case 122:
                                                                this.f26188m.a((char) 9474);
                                                                return;
                                                            case 123:
                                                                this.f26188m.a((char) 9488);
                                                                return;
                                                            case 124:
                                                                this.f26188m.a((char) 9492);
                                                                return;
                                                            case 125:
                                                                this.f26188m.a((char) 9472);
                                                                return;
                                                            case 126:
                                                                this.f26188m.a((char) 9496);
                                                                return;
                                                            case 127:
                                                                this.f26188m.a((char) 9484);
                                                                return;
                                                            default:
                                                                r.i("Cea708Decoder", "Invalid G2 character: " + i10);
                                                                return;
                                                        }
                                                }
                                            }
                                            this.f26188m.a((char) 8480);
                                            return;
                                        }
                                        this.f26188m.a((char) 339);
                                        return;
                                    }
                                    this.f26188m.a((char) 353);
                                    return;
                                }
                                this.f26188m.a((char) 8482);
                                return;
                            }
                            this.f26188m.a((char) 376);
                            return;
                        }
                        this.f26188m.a((char) 338);
                        return;
                    }
                    this.f26188m.a((char) 352);
                    return;
                }
                this.f26188m.a((char) 8230);
                return;
            }
            this.f26188m.a((char) 160);
            return;
        }
        this.f26188m.a(' ');
    }

    private void y(int i10) {
        if (i10 == 160) {
            this.f26188m.a((char) 13252);
            return;
        }
        r.i("Cea708Decoder", "Invalid G3 character: " + i10);
        this.f26188m.a('_');
    }

    private void z() {
        this.f26188m.m(this.f26183h.h(4), this.f26183h.h(2), this.f26183h.h(2), this.f26183h.g(), this.f26183h.g(), this.f26183h.h(3), this.f26183h.h(3));
    }

    @Override // n4.e, m4.i
    public /* bridge */ /* synthetic */ void a(long j10) {
        super.a(j10);
    }

    @Override // n4.e
    protected h e() {
        List list = this.f26189n;
        this.f26190o = list;
        return new f((List) y4.a.e(list));
    }

    @Override // n4.e
    protected void f(l lVar) {
        boolean z10;
        ByteBuffer byteBuffer = (ByteBuffer) y4.a.e(lVar.f15289c);
        this.f26182g.R(byteBuffer.array(), byteBuffer.limit());
        while (this.f26182g.a() >= 3) {
            int G = this.f26182g.G() & 7;
            int i10 = G & 3;
            boolean z11 = false;
            if ((G & 4) == 4) {
                z10 = true;
            } else {
                z10 = false;
            }
            byte G2 = (byte) this.f26182g.G();
            byte G3 = (byte) this.f26182g.G();
            if (i10 == 2 || i10 == 3) {
                if (z10) {
                    if (i10 == 3) {
                        o();
                        int i11 = (G2 & 192) >> 6;
                        int i12 = this.f26184i;
                        if (i12 != -1 && i11 != (i12 + 1) % 4) {
                            E();
                            r.i("Cea708Decoder", "Sequence number discontinuity. previous=" + this.f26184i + " current=" + i11);
                        }
                        this.f26184i = i11;
                        int i13 = G2 & 63;
                        if (i13 == 0) {
                            i13 = 64;
                        }
                        C0254c c0254c = new C0254c(i11, i13);
                        this.f26191p = c0254c;
                        byte[] bArr = c0254c.f26224c;
                        int i14 = c0254c.f26225d;
                        c0254c.f26225d = i14 + 1;
                        bArr[i14] = G3;
                    } else {
                        if (i10 == 2) {
                            z11 = true;
                        }
                        y4.a.a(z11);
                        C0254c c0254c2 = this.f26191p;
                        if (c0254c2 == null) {
                            r.c("Cea708Decoder", "Encountered DTVCC_PACKET_DATA before DTVCC_PACKET_START");
                        } else {
                            byte[] bArr2 = c0254c2.f26224c;
                            int i15 = c0254c2.f26225d;
                            int i16 = i15 + 1;
                            bArr2[i15] = G2;
                            c0254c2.f26225d = i16 + 1;
                            bArr2[i16] = G3;
                        }
                    }
                    C0254c c0254c3 = this.f26191p;
                    if (c0254c3.f26225d == (c0254c3.f26223b * 2) - 1) {
                        o();
                    }
                }
            }
        }
    }

    @Override // n4.e, e3.d
    public void flush() {
        super.flush();
        this.f26189n = null;
        this.f26190o = null;
        this.f26192q = 0;
        this.f26188m = this.f26187l[0];
        E();
        this.f26191p = null;
    }

    @Override // n4.e
    public /* bridge */ /* synthetic */ l g() {
        return super.c();
    }

    @Override // n4.e
    public /* bridge */ /* synthetic */ m h() {
        return super.b();
    }

    @Override // n4.e
    protected boolean k() {
        if (this.f26189n != this.f26190o) {
            return true;
        }
        return false;
    }

    @Override // n4.e
    public /* bridge */ /* synthetic */ void l(l lVar) {
        super.d(lVar);
    }

    @Override // n4.e, e3.d
    public /* bridge */ /* synthetic */ void release() {
        super.release();
    }
}
