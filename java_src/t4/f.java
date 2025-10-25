package t4;

import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import java.util.ArrayDeque;
import java.util.Map;
import org.apache.tika.utils.StringUtils;
import y4.q0;
import y4.r;
/* loaded from: classes.dex */
abstract class f {
    public static void a(Spannable spannable, int i10, int i11, g gVar, d dVar, Map map, int i12) {
        d e10;
        int i13;
        g f10;
        int i14;
        if (gVar.l() != -1) {
            spannable.setSpan(new StyleSpan(gVar.l()), i10, i11, 33);
        }
        if (gVar.s()) {
            spannable.setSpan(new StrikethroughSpan(), i10, i11, 33);
        }
        if (gVar.t()) {
            spannable.setSpan(new UnderlineSpan(), i10, i11, 33);
        }
        if (gVar.q()) {
            q4.c.a(spannable, new ForegroundColorSpan(gVar.c()), i10, i11, 33);
        }
        if (gVar.p()) {
            q4.c.a(spannable, new BackgroundColorSpan(gVar.b()), i10, i11, 33);
        }
        if (gVar.d() != null) {
            q4.c.a(spannable, new TypefaceSpan(gVar.d()), i10, i11, 33);
        }
        if (gVar.o() != null) {
            b bVar = (b) y4.a.e(gVar.o());
            int i15 = bVar.f29865a;
            if (i15 == -1) {
                if (i12 != 2 && i12 != 1) {
                    i15 = 1;
                } else {
                    i15 = 3;
                }
                i14 = 1;
            } else {
                i14 = bVar.f29866b;
            }
            int i16 = bVar.f29867c;
            if (i16 == -2) {
                i16 = 1;
            }
            q4.c.a(spannable, new q4.d(i15, i14, i16), i10, i11, 33);
        }
        int j10 = gVar.j();
        if (j10 != 2) {
            if (j10 == 3 || j10 == 4) {
                spannable.setSpan(new a(), i10, i11, 33);
            }
        } else {
            d d10 = d(dVar, map);
            if (d10 != null && (e10 = e(d10, map)) != null) {
                if (e10.g() == 1 && e10.f(0).f29886b != null) {
                    String str = (String) q0.j(e10.f(0).f29886b);
                    g f11 = f(e10.f29890f, e10.l(), map);
                    if (f11 != null) {
                        i13 = f11.i();
                    } else {
                        i13 = -1;
                    }
                    if (i13 == -1 && (f10 = f(d10.f29890f, d10.l(), map)) != null) {
                        i13 = f10.i();
                    }
                    spannable.setSpan(new q4.b(str, i13), i10, i11, 33);
                } else {
                    r.f("TtmlRenderUtil", "Skipping rubyText node without exactly one text child.");
                }
            }
        }
        if (gVar.n()) {
            q4.c.a(spannable, new q4.a(), i10, i11, 33);
        }
        int f12 = gVar.f();
        if (f12 != 1) {
            if (f12 != 2) {
                if (f12 == 3) {
                    q4.c.a(spannable, new RelativeSizeSpan(gVar.e() / 100.0f), i10, i11, 33);
                    return;
                }
                return;
            }
            q4.c.a(spannable, new RelativeSizeSpan(gVar.e()), i10, i11, 33);
            return;
        }
        q4.c.a(spannable, new AbsoluteSizeSpan((int) gVar.e(), true), i10, i11, 33);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String b(String str) {
        return str.replaceAll("\r\n", "\n").replaceAll(" *\n *", "\n").replaceAll("\n", StringUtils.SPACE).replaceAll("[ \t\\x0B\f\r]+", StringUtils.SPACE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c(SpannableStringBuilder spannableStringBuilder) {
        int length = spannableStringBuilder.length() - 1;
        while (length >= 0 && spannableStringBuilder.charAt(length) == ' ') {
            length--;
        }
        if (length >= 0 && spannableStringBuilder.charAt(length) != '\n') {
            spannableStringBuilder.append('\n');
        }
    }

    private static d d(d dVar, Map map) {
        while (dVar != null) {
            g f10 = f(dVar.f29890f, dVar.l(), map);
            if (f10 != null && f10.j() == 1) {
                return dVar;
            }
            dVar = dVar.f29894j;
        }
        return null;
    }

    private static d e(d dVar, Map map) {
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.push(dVar);
        while (!arrayDeque.isEmpty()) {
            d dVar2 = (d) arrayDeque.pop();
            g f10 = f(dVar2.f29890f, dVar2.l(), map);
            if (f10 != null && f10.j() == 3) {
                return dVar2;
            }
            for (int g10 = dVar2.g() - 1; g10 >= 0; g10--) {
                arrayDeque.push(dVar2.f(g10));
            }
        }
        return null;
    }

    public static g f(g gVar, String[] strArr, Map map) {
        int i10 = 0;
        if (gVar == null) {
            if (strArr == null) {
                return null;
            }
            if (strArr.length == 1) {
                return (g) map.get(strArr[0]);
            }
            if (strArr.length > 1) {
                g gVar2 = new g();
                int length = strArr.length;
                while (i10 < length) {
                    gVar2.a((g) map.get(strArr[i10]));
                    i10++;
                }
                return gVar2;
            }
        } else if (strArr != null && strArr.length == 1) {
            return gVar.a((g) map.get(strArr[0]));
        } else {
            if (strArr != null && strArr.length > 1) {
                int length2 = strArr.length;
                while (i10 < length2) {
                    gVar.a((g) map.get(strArr[i10]));
                    i10++;
                }
            }
        }
        return gVar;
    }
}
