package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.impl.ob.C0915v3;
import com.yandex.metrica.impl.ob.Eg;
import com.yandex.metrica.impl.ob.Hg;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class Mg extends Hg {
    private final Jg A;

    /* renamed from: o  reason: collision with root package name */
    private List<String> f10840o;

    /* renamed from: p  reason: collision with root package name */
    private List<String> f10841p;

    /* renamed from: q  reason: collision with root package name */
    private String f10842q;

    /* renamed from: r  reason: collision with root package name */
    private String f10843r;

    /* renamed from: s  reason: collision with root package name */
    private Map<String, String> f10844s;

    /* renamed from: t  reason: collision with root package name */
    private C0915v3.a f10845t;

    /* renamed from: u  reason: collision with root package name */
    private List<String> f10846u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f10847v;

    /* renamed from: w  reason: collision with root package name */
    private boolean f10848w;

    /* renamed from: x  reason: collision with root package name */
    private String f10849x;

    /* renamed from: y  reason: collision with root package name */
    private long f10850y;

    /* renamed from: z  reason: collision with root package name */
    private final C0856sg f10851z;

    /* loaded from: classes2.dex */
    public static class b extends Eg.a<b, b> {

        /* renamed from: d  reason: collision with root package name */
        public final String f10852d;

        /* renamed from: e  reason: collision with root package name */
        public final String f10853e;

        /* renamed from: f  reason: collision with root package name */
        public final Map<String, String> f10854f;

        /* renamed from: g  reason: collision with root package name */
        public final boolean f10855g;

        /* renamed from: h  reason: collision with root package name */
        public final List<String> f10856h;

        public b(C1011z3 c1011z3) {
            this(c1011z3.b().v(), c1011z3.b().p(), c1011z3.b().j(), c1011z3.a().d(), c1011z3.a().e(), c1011z3.a().a(), c1011z3.a().j(), c1011z3.a().b());
        }

        @Override // com.yandex.metrica.impl.ob.Dg
        public /* bridge */ /* synthetic */ boolean b(Object obj) {
            b bVar = (b) obj;
            return false;
        }

        @Override // com.yandex.metrica.impl.ob.Dg
        public b a(b bVar) {
            String str = this.f10008a;
            String str2 = bVar.f10008a;
            if (str != null) {
                str2 = str;
            }
            String str3 = this.f10009b;
            String str4 = bVar.f10009b;
            if (str3 != null) {
                str4 = str3;
            }
            String str5 = this.f10010c;
            String str6 = bVar.f10010c;
            if (str5 != null) {
                str6 = str5;
            }
            String str7 = this.f10852d;
            String str8 = bVar.f10852d;
            if (str7 != null) {
                str8 = str7;
            }
            String str9 = this.f10853e;
            String str10 = bVar.f10853e;
            if (str9 != null) {
                str10 = str9;
            }
            Map<String, String> map = this.f10854f;
            Map<String, String> map2 = bVar.f10854f;
            if (map != null) {
                map2 = map;
            }
            return new b(str2, str4, str6, str8, str10, map2, this.f10855g || bVar.f10855g, bVar.f10855g ? bVar.f10856h : this.f10856h);
        }

        public b(String str, String str2, String str3, String str4, String str5, Map<String, String> map, boolean z10, List<String> list) {
            super(str, str2, str3);
            this.f10852d = str4;
            this.f10853e = str5;
            this.f10854f = map;
            this.f10855g = z10;
            this.f10856h = list;
        }

        public b() {
            this(null, null, null, null, null, null, false, null);
        }
    }

    /* loaded from: classes2.dex */
    public static class c extends Hg.a<Mg, b> {

        /* renamed from: d  reason: collision with root package name */
        private final I f10857d;

        public c(Context context, String str) {
            this(context, str, new C0717mn(), F0.g().d());
        }

        @Override // com.yandex.metrica.impl.ob.Eg.d
        public Eg a(Object obj) {
            Eg.c cVar = (Eg.c) obj;
            Mg a10 = a(cVar);
            C0787pi c0787pi = cVar.f10013a;
            a10.c(c0787pi.s());
            a10.b(c0787pi.r());
            String str = ((b) cVar.f10014b).f10852d;
            if (str != null) {
                Mg.a(a10, str);
                Mg.b(a10, ((b) cVar.f10014b).f10853e);
            }
            Map<String, String> map = ((b) cVar.f10014b).f10854f;
            a10.a(map);
            a10.a(this.f10857d.a(new C0915v3.a(map, EnumC0888u0.APP)));
            a10.a(((b) cVar.f10014b).f10855g);
            a10.a(((b) cVar.f10014b).f10856h);
            a10.b(cVar.f10013a.q());
            a10.h(cVar.f10013a.g());
            a10.b(cVar.f10013a.o());
            return a10;
        }

        protected c(Context context, String str, C0717mn c0717mn, I i10) {
            super(context, str, c0717mn);
            this.f10857d = i10;
        }

        @Override // com.yandex.metrica.impl.ob.Eg.b
        protected Eg a() {
            return new Mg();
        }
    }

    public C0915v3.a B() {
        return this.f10845t;
    }

    public Map<String, String> C() {
        return this.f10844s;
    }

    public String D() {
        return this.f10849x;
    }

    public String E() {
        return this.f10842q;
    }

    public String F() {
        return this.f10843r;
    }

    public List<String> G() {
        return this.f10846u;
    }

    public C0856sg H() {
        return this.f10851z;
    }

    public List<String> I() {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        if (!A2.b(this.f10840o)) {
            linkedHashSet.addAll(this.f10840o);
        }
        if (!A2.b(this.f10841p)) {
            linkedHashSet.addAll(this.f10841p);
        }
        linkedHashSet.addAll(this.A.a());
        return new ArrayList(linkedHashSet);
    }

    public List<String> J() {
        return this.f10841p;
    }

    public boolean K() {
        return this.f10847v;
    }

    public boolean L() {
        return this.f10848w;
    }

    public long a(long j10) {
        if (this.f10850y == 0) {
            this.f10850y = j10;
        }
        return this.f10850y;
    }

    void b(boolean z10) {
        this.f10848w = z10;
    }

    void c(List<String> list) {
        this.f10840o = list;
    }

    public void h(String str) {
        this.f10849x = str;
    }

    @Override // com.yandex.metrica.impl.ob.Hg, com.yandex.metrica.impl.ob.Eg
    public String toString() {
        return "StartupRequestConfig{mStartupHostsFromStartup=" + this.f10840o + ", mStartupHostsFromClient=" + this.f10841p + ", mDistributionReferrer='" + this.f10842q + "', mInstallReferrerSource='" + this.f10843r + "', mClidsFromClient=" + this.f10844s + ", mNewCustomHosts=" + this.f10846u + ", mHasNewCustomHosts=" + this.f10847v + ", mSuccessfulStartup=" + this.f10848w + ", mCountryInit='" + this.f10849x + "', mFirstStartupTime=" + this.f10850y + "} " + super.toString();
    }

    private Mg() {
        this(F0.g().m(), new Jg());
    }

    void b(long j10) {
        if (this.f10850y == 0) {
            this.f10850y = j10;
        }
    }

    Mg(C0856sg c0856sg, Jg jg) {
        this.f10845t = new C0915v3.a(null, EnumC0888u0.APP);
        this.f10850y = 0L;
        this.f10851z = c0856sg;
        this.A = jg;
    }

    void a(Map<String, String> map) {
        this.f10844s = map;
    }

    void b(List<String> list) {
        this.f10841p = list;
    }

    static void b(Mg mg, String str) {
        mg.f10843r = str;
    }

    void a(C0915v3.a aVar) {
        this.f10845t = aVar;
    }

    static void a(Mg mg, String str) {
        mg.f10842q = str;
    }

    public void a(List<String> list) {
        this.f10846u = list;
    }

    public void a(boolean z10) {
        this.f10847v = z10;
    }
}
