package t4;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.SpannableStringBuilder;
import android.util.Base64;
import android.util.Pair;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.TreeSet;
import m4.b;
import org.apache.tika.parser.external.ExternalParsersConfigReaderMetKeys;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public final String f29885a;

    /* renamed from: b  reason: collision with root package name */
    public final String f29886b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f29887c;

    /* renamed from: d  reason: collision with root package name */
    public final long f29888d;

    /* renamed from: e  reason: collision with root package name */
    public final long f29889e;

    /* renamed from: f  reason: collision with root package name */
    public final g f29890f;

    /* renamed from: g  reason: collision with root package name */
    private final String[] f29891g;

    /* renamed from: h  reason: collision with root package name */
    public final String f29892h;

    /* renamed from: i  reason: collision with root package name */
    public final String f29893i;

    /* renamed from: j  reason: collision with root package name */
    public final d f29894j;

    /* renamed from: k  reason: collision with root package name */
    private final HashMap f29895k;

    /* renamed from: l  reason: collision with root package name */
    private final HashMap f29896l;

    /* renamed from: m  reason: collision with root package name */
    private List f29897m;

    private d(String str, String str2, long j10, long j11, g gVar, String[] strArr, String str3, String str4, d dVar) {
        boolean z10;
        this.f29885a = str;
        this.f29886b = str2;
        this.f29893i = str4;
        this.f29890f = gVar;
        this.f29891g = strArr;
        if (str2 != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.f29887c = z10;
        this.f29888d = j10;
        this.f29889e = j11;
        this.f29892h = (String) y4.a.e(str3);
        this.f29894j = dVar;
        this.f29895k = new HashMap();
        this.f29896l = new HashMap();
    }

    private void b(Map map, b.C0247b c0247b, int i10, int i11, int i12) {
        g f10 = f.f(this.f29890f, this.f29891g, map);
        SpannableStringBuilder spannableStringBuilder = (SpannableStringBuilder) c0247b.e();
        if (spannableStringBuilder == null) {
            spannableStringBuilder = new SpannableStringBuilder();
            c0247b.o(spannableStringBuilder);
        }
        SpannableStringBuilder spannableStringBuilder2 = spannableStringBuilder;
        if (f10 != null) {
            f.a(spannableStringBuilder2, i10, i11, f10, this.f29894j, map, i12);
            if ("p".equals(this.f29885a)) {
                if (f10.k() != Float.MAX_VALUE) {
                    c0247b.m((f10.k() * (-90.0f)) / 100.0f);
                }
                if (f10.m() != null) {
                    c0247b.p(f10.m());
                }
                if (f10.h() != null) {
                    c0247b.j(f10.h());
                }
            }
        }
    }

    public static d c(String str, long j10, long j11, g gVar, String[] strArr, String str2, String str3, d dVar) {
        return new d(str, null, j10, j11, gVar, strArr, str2, str3, dVar);
    }

    public static d d(String str) {
        return new d(null, f.b(str), -9223372036854775807L, -9223372036854775807L, null, null, "", null, null);
    }

    private static void e(SpannableStringBuilder spannableStringBuilder) {
        a[] aVarArr;
        for (a aVar : (a[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), a.class)) {
            spannableStringBuilder.replace(spannableStringBuilder.getSpanStart(aVar), spannableStringBuilder.getSpanEnd(aVar), "");
        }
        for (int i10 = 0; i10 < spannableStringBuilder.length(); i10++) {
            if (spannableStringBuilder.charAt(i10) == ' ') {
                int i11 = i10 + 1;
                int i12 = i11;
                while (i12 < spannableStringBuilder.length() && spannableStringBuilder.charAt(i12) == ' ') {
                    i12++;
                }
                int i13 = i12 - i11;
                if (i13 > 0) {
                    spannableStringBuilder.delete(i10, i13 + i10);
                }
            }
        }
        if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(0) == ' ') {
            spannableStringBuilder.delete(0, 1);
        }
        for (int i14 = 0; i14 < spannableStringBuilder.length() - 1; i14++) {
            if (spannableStringBuilder.charAt(i14) == '\n') {
                int i15 = i14 + 1;
                if (spannableStringBuilder.charAt(i15) == ' ') {
                    spannableStringBuilder.delete(i15, i14 + 2);
                }
            }
        }
        if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(spannableStringBuilder.length() - 1) == ' ') {
            spannableStringBuilder.delete(spannableStringBuilder.length() - 1, spannableStringBuilder.length());
        }
        for (int i16 = 0; i16 < spannableStringBuilder.length() - 1; i16++) {
            if (spannableStringBuilder.charAt(i16) == ' ') {
                int i17 = i16 + 1;
                if (spannableStringBuilder.charAt(i17) == '\n') {
                    spannableStringBuilder.delete(i16, i17);
                }
            }
        }
        if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(spannableStringBuilder.length() - 1) == '\n') {
            spannableStringBuilder.delete(spannableStringBuilder.length() - 1, spannableStringBuilder.length());
        }
    }

    private void i(TreeSet treeSet, boolean z10) {
        boolean z11;
        boolean equals = "p".equals(this.f29885a);
        boolean equals2 = "div".equals(this.f29885a);
        if (z10 || equals || (equals2 && this.f29893i != null)) {
            long j10 = this.f29888d;
            if (j10 != -9223372036854775807L) {
                treeSet.add(Long.valueOf(j10));
            }
            long j11 = this.f29889e;
            if (j11 != -9223372036854775807L) {
                treeSet.add(Long.valueOf(j11));
            }
        }
        if (this.f29897m == null) {
            return;
        }
        for (int i10 = 0; i10 < this.f29897m.size(); i10++) {
            d dVar = (d) this.f29897m.get(i10);
            if (!z10 && !equals) {
                z11 = false;
            } else {
                z11 = true;
            }
            dVar.i(treeSet, z11);
        }
    }

    private static SpannableStringBuilder k(String str, Map map) {
        if (!map.containsKey(str)) {
            b.C0247b c0247b = new b.C0247b();
            c0247b.o(new SpannableStringBuilder());
            map.put(str, c0247b);
        }
        return (SpannableStringBuilder) y4.a.e(((b.C0247b) map.get(str)).e());
    }

    private void n(long j10, String str, List list) {
        if (!"".equals(this.f29892h)) {
            str = this.f29892h;
        }
        if (m(j10) && "div".equals(this.f29885a) && this.f29893i != null) {
            list.add(new Pair(str, this.f29893i));
            return;
        }
        for (int i10 = 0; i10 < g(); i10++) {
            f(i10).n(j10, str, list);
        }
    }

    private void o(long j10, Map map, Map map2, String str, Map map3) {
        String str2;
        int i10;
        if (!m(j10)) {
            return;
        }
        if ("".equals(this.f29892h)) {
            str2 = str;
        } else {
            str2 = this.f29892h;
        }
        Iterator it = this.f29896l.entrySet().iterator();
        while (true) {
            i10 = 0;
            if (!it.hasNext()) {
                break;
            }
            Map.Entry entry = (Map.Entry) it.next();
            String str3 = (String) entry.getKey();
            if (this.f29895k.containsKey(str3)) {
                i10 = ((Integer) this.f29895k.get(str3)).intValue();
            }
            int i11 = i10;
            int intValue = ((Integer) entry.getValue()).intValue();
            if (i11 != intValue) {
                b(map, (b.C0247b) y4.a.e((b.C0247b) map3.get(str3)), i11, intValue, ((e) y4.a.e((e) map2.get(str2))).f29907j);
            }
        }
        while (i10 < g()) {
            f(i10).o(j10, map, map2, str2, map3);
            i10++;
        }
    }

    private void p(long j10, boolean z10, String str, Map map) {
        boolean z11;
        this.f29895k.clear();
        this.f29896l.clear();
        if (ExternalParsersConfigReaderMetKeys.METADATA_TAG.equals(this.f29885a)) {
            return;
        }
        if (!"".equals(this.f29892h)) {
            str = this.f29892h;
        }
        if (this.f29887c && z10) {
            k(str, map).append((CharSequence) y4.a.e(this.f29886b));
        } else if ("br".equals(this.f29885a) && z10) {
            k(str, map).append('\n');
        } else if (m(j10)) {
            for (Map.Entry entry : map.entrySet()) {
                this.f29895k.put((String) entry.getKey(), Integer.valueOf(((CharSequence) y4.a.e(((b.C0247b) entry.getValue()).e())).length()));
            }
            boolean equals = "p".equals(this.f29885a);
            for (int i10 = 0; i10 < g(); i10++) {
                d f10 = f(i10);
                if (!z10 && !equals) {
                    z11 = false;
                } else {
                    z11 = true;
                }
                f10.p(j10, z11, str, map);
            }
            if (equals) {
                f.c(k(str, map));
            }
            for (Map.Entry entry2 : map.entrySet()) {
                this.f29896l.put((String) entry2.getKey(), Integer.valueOf(((CharSequence) y4.a.e(((b.C0247b) entry2.getValue()).e())).length()));
            }
        }
    }

    public void a(d dVar) {
        if (this.f29897m == null) {
            this.f29897m = new ArrayList();
        }
        this.f29897m.add(dVar);
    }

    public d f(int i10) {
        List list = this.f29897m;
        if (list != null) {
            return (d) list.get(i10);
        }
        throw new IndexOutOfBoundsException();
    }

    public int g() {
        List list = this.f29897m;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public List h(long j10, Map map, Map map2, Map map3) {
        List<Pair> arrayList = new ArrayList();
        n(j10, this.f29892h, arrayList);
        TreeMap treeMap = new TreeMap();
        p(j10, false, this.f29892h, treeMap);
        o(j10, map, map2, this.f29892h, treeMap);
        ArrayList arrayList2 = new ArrayList();
        for (Pair pair : arrayList) {
            String str = (String) map3.get(pair.second);
            if (str != null) {
                byte[] decode = Base64.decode(str, 0);
                Bitmap decodeByteArray = BitmapFactory.decodeByteArray(decode, 0, decode.length);
                e eVar = (e) y4.a.e((e) map2.get(pair.first));
                arrayList2.add(new b.C0247b().f(decodeByteArray).k(eVar.f29899b).l(0).h(eVar.f29900c, 0).i(eVar.f29902e).n(eVar.f29903f).g(eVar.f29904g).r(eVar.f29907j).a());
            }
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            e eVar2 = (e) y4.a.e((e) map2.get(entry.getKey()));
            b.C0247b c0247b = (b.C0247b) entry.getValue();
            e((SpannableStringBuilder) y4.a.e(c0247b.e()));
            c0247b.h(eVar2.f29900c, eVar2.f29901d);
            c0247b.i(eVar2.f29902e);
            c0247b.k(eVar2.f29899b);
            c0247b.n(eVar2.f29903f);
            c0247b.q(eVar2.f29906i, eVar2.f29905h);
            c0247b.r(eVar2.f29907j);
            arrayList2.add(c0247b.a());
        }
        return arrayList2;
    }

    public long[] j() {
        TreeSet treeSet = new TreeSet();
        int i10 = 0;
        i(treeSet, false);
        long[] jArr = new long[treeSet.size()];
        Iterator it = treeSet.iterator();
        while (it.hasNext()) {
            jArr[i10] = ((Long) it.next()).longValue();
            i10++;
        }
        return jArr;
    }

    public String[] l() {
        return this.f29891g;
    }

    public boolean m(long j10) {
        long j11 = this.f29888d;
        if ((j11 == -9223372036854775807L && this.f29889e == -9223372036854775807L) || ((j11 <= j10 && this.f29889e == -9223372036854775807L) || ((j11 == -9223372036854775807L && j10 < this.f29889e) || (j11 <= j10 && j10 < this.f29889e)))) {
            return true;
        }
        return false;
    }
}
