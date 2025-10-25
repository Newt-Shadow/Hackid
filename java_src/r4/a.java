package r4;

import android.graphics.PointF;
import android.text.Layout;
import android.text.SpannableString;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import m4.b;
import m4.g;
import m4.h;
import n6.e;
import r4.c;
import y4.e0;
import y4.q0;
import y4.r;
/* loaded from: classes.dex */
public final class a extends g {

    /* renamed from: t  reason: collision with root package name */
    private static final Pattern f28927t = Pattern.compile("(?:(\\d+):)?(\\d+):(\\d+)[:.](\\d+)");

    /* renamed from: o  reason: collision with root package name */
    private final boolean f28928o;

    /* renamed from: p  reason: collision with root package name */
    private final b f28929p;

    /* renamed from: q  reason: collision with root package name */
    private Map f28930q;

    /* renamed from: r  reason: collision with root package name */
    private float f28931r;

    /* renamed from: s  reason: collision with root package name */
    private float f28932s;

    public a(List list) {
        super("SsaDecoder");
        this.f28931r = -3.4028235E38f;
        this.f28932s = -3.4028235E38f;
        if (list != null && !list.isEmpty()) {
            this.f28928o = true;
            String D = q0.D((byte[]) list.get(0));
            y4.a.a(D.startsWith("Format:"));
            this.f28929p = (b) y4.a.e(b.a(D));
            H(new e0((byte[]) list.get(1)), e.f26427c);
            return;
        }
        this.f28928o = false;
        this.f28929p = null;
    }

    private static int B(long j10, List list, List list2) {
        int i10;
        ArrayList arrayList;
        int size = list.size() - 1;
        while (true) {
            if (size >= 0) {
                if (((Long) list.get(size)).longValue() == j10) {
                    return size;
                }
                if (((Long) list.get(size)).longValue() < j10) {
                    i10 = size + 1;
                    break;
                }
                size--;
            } else {
                i10 = 0;
                break;
            }
        }
        list.add(i10, Long.valueOf(j10));
        if (i10 == 0) {
            arrayList = new ArrayList();
        } else {
            arrayList = new ArrayList((Collection) list2.get(i10 - 1));
        }
        list2.add(i10, arrayList);
        return i10;
    }

    private static float C(int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                return i10 != 2 ? -3.4028235E38f : 0.95f;
            }
            return 0.5f;
        }
        return 0.05f;
    }

    private static m4.b D(String str, c cVar, c.b bVar, float f10, float f11) {
        SpannableString spannableString = new SpannableString(str);
        b.C0247b o10 = new b.C0247b().o(spannableString);
        if (cVar != null) {
            if (cVar.f28940c != null) {
                spannableString.setSpan(new ForegroundColorSpan(cVar.f28940c.intValue()), 0, spannableString.length(), 33);
            }
            if (cVar.f28947j == 3 && cVar.f28941d != null) {
                spannableString.setSpan(new BackgroundColorSpan(cVar.f28941d.intValue()), 0, spannableString.length(), 33);
            }
            float f12 = cVar.f28942e;
            if (f12 != -3.4028235E38f && f11 != -3.4028235E38f) {
                o10.q(f12 / f11, 1);
            }
            boolean z10 = cVar.f28943f;
            if (z10 && cVar.f28944g) {
                spannableString.setSpan(new StyleSpan(3), 0, spannableString.length(), 33);
            } else if (z10) {
                spannableString.setSpan(new StyleSpan(1), 0, spannableString.length(), 33);
            } else if (cVar.f28944g) {
                spannableString.setSpan(new StyleSpan(2), 0, spannableString.length(), 33);
            }
            if (cVar.f28945h) {
                spannableString.setSpan(new UnderlineSpan(), 0, spannableString.length(), 33);
            }
            if (cVar.f28946i) {
                spannableString.setSpan(new StrikethroughSpan(), 0, spannableString.length(), 33);
            }
        }
        int i10 = bVar.f28963a;
        if (i10 == -1) {
            if (cVar != null) {
                i10 = cVar.f28939b;
            } else {
                i10 = -1;
            }
        }
        o10.p(N(i10)).l(M(i10)).i(L(i10));
        PointF pointF = bVar.f28964b;
        if (pointF != null && f11 != -3.4028235E38f && f10 != -3.4028235E38f) {
            o10.k(pointF.x / f10);
            o10.h(bVar.f28964b.y / f11, 0);
        } else {
            o10.k(C(o10.d()));
            o10.h(C(o10.c()), 0);
        }
        return o10.a();
    }

    private Charset E(e0 e0Var) {
        Charset O = e0Var.O();
        if (O == null) {
            return e.f26427c;
        }
        return O;
    }

    private void F(String str, b bVar, List list, List list2) {
        c cVar;
        int i10;
        y4.a.a(str.startsWith("Dialogue:"));
        String[] split = str.substring(9).split(StringUtils.COMMA, bVar.f28937e);
        if (split.length != bVar.f28937e) {
            r.i("SsaDecoder", "Skipping dialogue line with fewer columns than format: " + str);
            return;
        }
        long K = K(split[bVar.f28933a]);
        if (K == -9223372036854775807L) {
            r.i("SsaDecoder", "Skipping invalid timing: " + str);
            return;
        }
        long K2 = K(split[bVar.f28934b]);
        if (K2 == -9223372036854775807L) {
            r.i("SsaDecoder", "Skipping invalid timing: " + str);
            return;
        }
        Map map = this.f28930q;
        if (map != null && (i10 = bVar.f28935c) != -1) {
            cVar = (c) map.get(split[i10].trim());
        } else {
            cVar = null;
        }
        String str2 = split[bVar.f28936d];
        m4.b D = D(c.b.d(str2).replace("\\N", "\n").replace("\\n", "\n").replace("\\h", " "), cVar, c.b.b(str2), this.f28931r, this.f28932s);
        int B = B(K2, list2, list);
        for (int B2 = B(K, list2, list); B2 < B; B2++) {
            ((List) list.get(B2)).add(D);
        }
    }

    private void G(e0 e0Var, List list, List list2, Charset charset) {
        b bVar;
        if (this.f28928o) {
            bVar = this.f28929p;
        } else {
            bVar = null;
        }
        while (true) {
            String s10 = e0Var.s(charset);
            if (s10 != null) {
                if (s10.startsWith("Format:")) {
                    bVar = b.a(s10);
                } else if (s10.startsWith("Dialogue:")) {
                    if (bVar == null) {
                        r.i("SsaDecoder", "Skipping dialogue line before complete format: " + s10);
                    } else {
                        F(s10, bVar, list, list2);
                    }
                }
            } else {
                return;
            }
        }
    }

    private void H(e0 e0Var, Charset charset) {
        while (true) {
            String s10 = e0Var.s(charset);
            if (s10 != null) {
                if ("[Script Info]".equalsIgnoreCase(s10)) {
                    I(e0Var, charset);
                } else if ("[V4+ Styles]".equalsIgnoreCase(s10)) {
                    this.f28930q = J(e0Var, charset);
                } else if ("[V4 Styles]".equalsIgnoreCase(s10)) {
                    r.f("SsaDecoder", "[V4 Styles] are not supported");
                } else if ("[Events]".equalsIgnoreCase(s10)) {
                    return;
                }
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0059 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:4:0x0006  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void I(y4.e0 r5, java.nio.charset.Charset r6) {
        /*
            r4 = this;
        L0:
            java.lang.String r0 = r5.s(r6)
            if (r0 == 0) goto L59
            int r1 = r5.a()
            if (r1 == 0) goto L14
            char r1 = r5.h(r6)
            r2 = 91
            if (r1 == r2) goto L59
        L14:
            java.lang.String r1 = ":"
            java.lang.String[] r0 = r0.split(r1)
            int r1 = r0.length
            r2 = 2
            if (r1 == r2) goto L1f
            goto L0
        L1f:
            r1 = 0
            r1 = r0[r1]
            java.lang.String r1 = r1.trim()
            java.lang.String r1 = n6.c.e(r1)
            r1.hashCode()
            java.lang.String r2 = "playresx"
            boolean r2 = r1.equals(r2)
            r3 = 1
            if (r2 != 0) goto L4c
            java.lang.String r2 = "playresy"
            boolean r1 = r1.equals(r2)
            if (r1 != 0) goto L3f
            goto L0
        L3f:
            r0 = r0[r3]     // Catch: java.lang.NumberFormatException -> L0
            java.lang.String r0 = r0.trim()     // Catch: java.lang.NumberFormatException -> L0
            float r0 = java.lang.Float.parseFloat(r0)     // Catch: java.lang.NumberFormatException -> L0
            r4.f28932s = r0     // Catch: java.lang.NumberFormatException -> L0
            goto L0
        L4c:
            r0 = r0[r3]     // Catch: java.lang.NumberFormatException -> L0
            java.lang.String r0 = r0.trim()     // Catch: java.lang.NumberFormatException -> L0
            float r0 = java.lang.Float.parseFloat(r0)     // Catch: java.lang.NumberFormatException -> L0
            r4.f28931r = r0     // Catch: java.lang.NumberFormatException -> L0
            goto L0
        L59:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: r4.a.I(y4.e0, java.nio.charset.Charset):void");
    }

    private static Map J(e0 e0Var, Charset charset) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        c.a aVar = null;
        while (true) {
            String s10 = e0Var.s(charset);
            if (s10 == null || (e0Var.a() != 0 && e0Var.h(charset) == '[')) {
                break;
            } else if (s10.startsWith("Format:")) {
                aVar = c.a.a(s10);
            } else if (s10.startsWith("Style:")) {
                if (aVar == null) {
                    r.i("SsaDecoder", "Skipping 'Style:' line before 'Format:' line: " + s10);
                } else {
                    c b10 = c.b(s10, aVar);
                    if (b10 != null) {
                        linkedHashMap.put(b10.f28938a, b10);
                    }
                }
            }
        }
        return linkedHashMap;
    }

    private static long K(String str) {
        Matcher matcher = f28927t.matcher(str.trim());
        if (!matcher.matches()) {
            return -9223372036854775807L;
        }
        return (Long.parseLong((String) q0.j(matcher.group(1))) * 60 * 60 * 1000000) + (Long.parseLong((String) q0.j(matcher.group(2))) * 60 * 1000000) + (Long.parseLong((String) q0.j(matcher.group(3))) * 1000000) + (Long.parseLong((String) q0.j(matcher.group(4))) * 10000);
    }

    private static int L(int i10) {
        switch (i10) {
            case -1:
                return Integer.MIN_VALUE;
            case 0:
            default:
                r.i("SsaDecoder", "Unknown alignment: " + i10);
                return Integer.MIN_VALUE;
            case 1:
            case 2:
            case 3:
                return 2;
            case 4:
            case 5:
            case 6:
                return 1;
            case 7:
            case 8:
            case 9:
                return 0;
        }
    }

    private static int M(int i10) {
        switch (i10) {
            case -1:
                return Integer.MIN_VALUE;
            case 0:
            default:
                r.i("SsaDecoder", "Unknown alignment: " + i10);
                return Integer.MIN_VALUE;
            case 1:
            case 4:
            case 7:
                return 0;
            case 2:
            case 5:
            case 8:
                return 1;
            case 3:
            case 6:
            case 9:
                return 2;
        }
    }

    private static Layout.Alignment N(int i10) {
        switch (i10) {
            case -1:
                return null;
            case 0:
            default:
                r.i("SsaDecoder", "Unknown alignment: " + i10);
                return null;
            case 1:
            case 4:
            case 7:
                return Layout.Alignment.ALIGN_NORMAL;
            case 2:
            case 5:
            case 8:
                return Layout.Alignment.ALIGN_CENTER;
            case 3:
            case 6:
            case 9:
                return Layout.Alignment.ALIGN_OPPOSITE;
        }
    }

    @Override // m4.g
    protected h z(byte[] bArr, int i10, boolean z10) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        e0 e0Var = new e0(bArr, i10);
        Charset E = E(e0Var);
        if (!this.f28928o) {
            H(e0Var, E);
        }
        G(e0Var, arrayList, arrayList2, E);
        return new d(arrayList, arrayList2);
    }
}
