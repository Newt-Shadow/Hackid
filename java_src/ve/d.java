package ve;

import af.a1;
import af.m0;
import com.pichillilorenzo.flutter_inappwebview_android.credential_database.URLProtectionSpaceContract;
import io.appmetrica.analytics.coreutils.internal.io.Base64Utils;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.KotlinVersion;
import kotlin.jvm.internal.DefaultConstructorMarker;
import yc.w;
/* loaded from: classes2.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public static final d f31448a;

    /* renamed from: b  reason: collision with root package name */
    private static final c[] f31449b;

    /* renamed from: c  reason: collision with root package name */
    private static final Map f31450c;

    static {
        d dVar = new d();
        f31448a = dVar;
        c cVar = new c(c.f31444j, "");
        af.g gVar = c.f31441g;
        c cVar2 = new c(gVar, "GET");
        c cVar3 = new c(gVar, "POST");
        af.g gVar2 = c.f31442h;
        c cVar4 = new c(gVar2, "/");
        c cVar5 = new c(gVar2, "/index.html");
        af.g gVar3 = c.f31443i;
        c cVar6 = new c(gVar3, "http");
        c cVar7 = new c(gVar3, "https");
        af.g gVar4 = c.f31440f;
        f31449b = new c[]{cVar, cVar2, cVar3, cVar4, cVar5, cVar6, cVar7, new c(gVar4, "200"), new c(gVar4, "204"), new c(gVar4, "206"), new c(gVar4, "304"), new c(gVar4, "400"), new c(gVar4, "404"), new c(gVar4, "500"), new c("accept-charset", ""), new c("accept-encoding", "gzip, deflate"), new c("accept-language", ""), new c("accept-ranges", ""), new c("accept", ""), new c("access-control-allow-origin", ""), new c("age", ""), new c("allow", ""), new c("authorization", ""), new c("cache-control", ""), new c("content-disposition", ""), new c("content-encoding", ""), new c("content-language", ""), new c("content-length", ""), new c("content-location", ""), new c("content-range", ""), new c("content-type", ""), new c("cookie", ""), new c("date", ""), new c("etag", ""), new c("expect", ""), new c("expires", ""), new c("from", ""), new c(URLProtectionSpaceContract.FeedEntry.COLUMN_NAME_HOST, ""), new c("if-match", ""), new c("if-modified-since", ""), new c("if-none-match", ""), new c("if-range", ""), new c("if-unmodified-since", ""), new c("last-modified", ""), new c("link", ""), new c("location", ""), new c("max-forwards", ""), new c("proxy-authenticate", ""), new c("proxy-authorization", ""), new c("range", ""), new c("referer", ""), new c("refresh", ""), new c("retry-after", ""), new c("server", ""), new c("set-cookie", ""), new c("strict-transport-security", ""), new c("transfer-encoding", ""), new c("user-agent", ""), new c("vary", ""), new c("via", ""), new c("www-authenticate", "")};
        f31450c = dVar.d();
    }

    private d() {
    }

    private final Map d() {
        c[] cVarArr = f31449b;
        LinkedHashMap linkedHashMap = new LinkedHashMap(cVarArr.length);
        int length = cVarArr.length;
        int i10 = 0;
        while (i10 < length) {
            int i11 = i10 + 1;
            c[] cVarArr2 = f31449b;
            if (!linkedHashMap.containsKey(cVarArr2[i10].f31445a)) {
                linkedHashMap.put(cVarArr2[i10].f31445a, Integer.valueOf(i10));
            }
            i10 = i11;
        }
        Map unmodifiableMap = Collections.unmodifiableMap(linkedHashMap);
        kotlin.jvm.internal.m.d(unmodifiableMap, "unmodifiableMap(result)");
        return unmodifiableMap;
    }

    public final af.g a(af.g name) {
        boolean z10;
        kotlin.jvm.internal.m.e(name, "name");
        int size = name.size();
        int i10 = 0;
        while (i10 < size) {
            int i11 = i10 + 1;
            byte j10 = name.j(i10);
            if (65 <= j10 && j10 <= 90) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (!z10) {
                i10 = i11;
            } else {
                throw new IOException(kotlin.jvm.internal.m.l("PROTOCOL_ERROR response malformed: mixed case name: ", name.H()));
            }
        }
        return name;
    }

    public final Map b() {
        return f31450c;
    }

    public final c[] c() {
        return f31449b;
    }

    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final int f31451a;

        /* renamed from: b  reason: collision with root package name */
        private int f31452b;

        /* renamed from: c  reason: collision with root package name */
        private final List f31453c;

        /* renamed from: d  reason: collision with root package name */
        private final af.f f31454d;

        /* renamed from: e  reason: collision with root package name */
        public c[] f31455e;

        /* renamed from: f  reason: collision with root package name */
        private int f31456f;

        /* renamed from: g  reason: collision with root package name */
        public int f31457g;

        /* renamed from: h  reason: collision with root package name */
        public int f31458h;

        public a(a1 source, int i10, int i11) {
            kotlin.jvm.internal.m.e(source, "source");
            this.f31451a = i10;
            this.f31452b = i11;
            this.f31453c = new ArrayList();
            this.f31454d = m0.b(source);
            c[] cVarArr = new c[8];
            this.f31455e = cVarArr;
            this.f31456f = cVarArr.length - 1;
        }

        private final void a() {
            int i10 = this.f31452b;
            int i11 = this.f31458h;
            if (i10 < i11) {
                if (i10 == 0) {
                    b();
                } else {
                    d(i11 - i10);
                }
            }
        }

        private final void b() {
            yc.j.n(this.f31455e, null, 0, 0, 6, null);
            this.f31456f = this.f31455e.length - 1;
            this.f31457g = 0;
            this.f31458h = 0;
        }

        private final int c(int i10) {
            return this.f31456f + 1 + i10;
        }

        private final int d(int i10) {
            int i11;
            int i12 = 0;
            if (i10 > 0) {
                int length = this.f31455e.length;
                while (true) {
                    length--;
                    i11 = this.f31456f;
                    if (length < i11 || i10 <= 0) {
                        break;
                    }
                    c cVar = this.f31455e[length];
                    kotlin.jvm.internal.m.b(cVar);
                    int i13 = cVar.f31447c;
                    i10 -= i13;
                    this.f31458h -= i13;
                    this.f31457g--;
                    i12++;
                }
                c[] cVarArr = this.f31455e;
                System.arraycopy(cVarArr, i11 + 1, cVarArr, i11 + 1 + i12, this.f31457g);
                this.f31456f += i12;
            }
            return i12;
        }

        private final af.g f(int i10) {
            if (h(i10)) {
                return d.f31448a.c()[i10].f31445a;
            }
            int c10 = c(i10 - d.f31448a.c().length);
            if (c10 >= 0) {
                c[] cVarArr = this.f31455e;
                if (c10 < cVarArr.length) {
                    c cVar = cVarArr[c10];
                    kotlin.jvm.internal.m.b(cVar);
                    return cVar.f31445a;
                }
            }
            throw new IOException(kotlin.jvm.internal.m.l("Header index too large ", Integer.valueOf(i10 + 1)));
        }

        private final void g(int i10, c cVar) {
            this.f31453c.add(cVar);
            int i11 = cVar.f31447c;
            if (i10 != -1) {
                c cVar2 = this.f31455e[c(i10)];
                kotlin.jvm.internal.m.b(cVar2);
                i11 -= cVar2.f31447c;
            }
            int i12 = this.f31452b;
            if (i11 > i12) {
                b();
                return;
            }
            int d10 = d((this.f31458h + i11) - i12);
            if (i10 == -1) {
                int i13 = this.f31457g + 1;
                c[] cVarArr = this.f31455e;
                if (i13 > cVarArr.length) {
                    c[] cVarArr2 = new c[cVarArr.length * 2];
                    System.arraycopy(cVarArr, 0, cVarArr2, cVarArr.length, cVarArr.length);
                    this.f31456f = this.f31455e.length - 1;
                    this.f31455e = cVarArr2;
                }
                int i14 = this.f31456f;
                this.f31456f = i14 - 1;
                this.f31455e[i14] = cVar;
                this.f31457g++;
            } else {
                this.f31455e[i10 + c(i10) + d10] = cVar;
            }
            this.f31458h += i11;
        }

        private final boolean h(int i10) {
            if (i10 >= 0 && i10 <= d.f31448a.c().length - 1) {
                return true;
            }
            return false;
        }

        private final int i() {
            return oe.d.d(this.f31454d.readByte(), KotlinVersion.MAX_COMPONENT_VALUE);
        }

        private final void l(int i10) {
            if (h(i10)) {
                this.f31453c.add(d.f31448a.c()[i10]);
                return;
            }
            int c10 = c(i10 - d.f31448a.c().length);
            if (c10 >= 0) {
                c[] cVarArr = this.f31455e;
                if (c10 < cVarArr.length) {
                    c cVar = cVarArr[c10];
                    kotlin.jvm.internal.m.b(cVar);
                    this.f31453c.add(cVar);
                    return;
                }
            }
            throw new IOException(kotlin.jvm.internal.m.l("Header index too large ", Integer.valueOf(i10 + 1)));
        }

        private final void n(int i10) {
            g(-1, new c(f(i10), j()));
        }

        private final void o() {
            g(-1, new c(d.f31448a.a(j()), j()));
        }

        private final void p(int i10) {
            this.f31453c.add(new c(f(i10), j()));
        }

        private final void q() {
            this.f31453c.add(new c(d.f31448a.a(j()), j()));
        }

        public final List e() {
            List k02;
            k02 = w.k0(this.f31453c);
            this.f31453c.clear();
            return k02;
        }

        public final af.g j() {
            boolean z10;
            int i10 = i();
            if ((i10 & 128) == 128) {
                z10 = true;
            } else {
                z10 = false;
            }
            long m10 = m(i10, 127);
            if (z10) {
                af.d dVar = new af.d();
                k.f31627a.b(this.f31454d, m10, dVar);
                return dVar.E();
            }
            return this.f31454d.D(m10);
        }

        public final void k() {
            while (!this.f31454d.N()) {
                int d10 = oe.d.d(this.f31454d.readByte(), KotlinVersion.MAX_COMPONENT_VALUE);
                if (d10 != 128) {
                    if ((d10 & 128) == 128) {
                        l(m(d10, 127) - 1);
                    } else if (d10 == 64) {
                        o();
                    } else if ((d10 & 64) == 64) {
                        n(m(d10, 63) - 1);
                    } else if ((d10 & 32) == 32) {
                        int m10 = m(d10, 31);
                        this.f31452b = m10;
                        if (m10 >= 0 && m10 <= this.f31451a) {
                            a();
                        } else {
                            throw new IOException(kotlin.jvm.internal.m.l("Invalid dynamic table size update ", Integer.valueOf(this.f31452b)));
                        }
                    } else if (d10 != 16 && d10 != 0) {
                        p(m(d10, 15) - 1);
                    } else {
                        q();
                    }
                } else {
                    throw new IOException("index == 0");
                }
            }
        }

        public final int m(int i10, int i11) {
            int i12 = i10 & i11;
            if (i12 < i11) {
                return i12;
            }
            int i13 = 0;
            while (true) {
                int i14 = i();
                if ((i14 & 128) != 0) {
                    i11 += (i14 & 127) << i13;
                    i13 += 7;
                } else {
                    return i11 + (i14 << i13);
                }
            }
        }

        public /* synthetic */ a(a1 a1Var, int i10, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
            this(a1Var, i10, (i12 & 4) != 0 ? i10 : i11);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public int f31459a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f31460b;

        /* renamed from: c  reason: collision with root package name */
        private final af.d f31461c;

        /* renamed from: d  reason: collision with root package name */
        private int f31462d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f31463e;

        /* renamed from: f  reason: collision with root package name */
        public int f31464f;

        /* renamed from: g  reason: collision with root package name */
        public c[] f31465g;

        /* renamed from: h  reason: collision with root package name */
        private int f31466h;

        /* renamed from: i  reason: collision with root package name */
        public int f31467i;

        /* renamed from: j  reason: collision with root package name */
        public int f31468j;

        public b(int i10, boolean z10, af.d out) {
            kotlin.jvm.internal.m.e(out, "out");
            this.f31459a = i10;
            this.f31460b = z10;
            this.f31461c = out;
            this.f31462d = Integer.MAX_VALUE;
            this.f31464f = i10;
            c[] cVarArr = new c[8];
            this.f31465g = cVarArr;
            this.f31466h = cVarArr.length - 1;
        }

        private final void a() {
            int i10 = this.f31464f;
            int i11 = this.f31468j;
            if (i10 < i11) {
                if (i10 == 0) {
                    b();
                } else {
                    c(i11 - i10);
                }
            }
        }

        private final void b() {
            yc.j.n(this.f31465g, null, 0, 0, 6, null);
            this.f31466h = this.f31465g.length - 1;
            this.f31467i = 0;
            this.f31468j = 0;
        }

        private final int c(int i10) {
            int i11;
            int i12 = 0;
            if (i10 > 0) {
                int length = this.f31465g.length;
                while (true) {
                    length--;
                    i11 = this.f31466h;
                    if (length < i11 || i10 <= 0) {
                        break;
                    }
                    c cVar = this.f31465g[length];
                    kotlin.jvm.internal.m.b(cVar);
                    i10 -= cVar.f31447c;
                    int i13 = this.f31468j;
                    c cVar2 = this.f31465g[length];
                    kotlin.jvm.internal.m.b(cVar2);
                    this.f31468j = i13 - cVar2.f31447c;
                    this.f31467i--;
                    i12++;
                }
                c[] cVarArr = this.f31465g;
                System.arraycopy(cVarArr, i11 + 1, cVarArr, i11 + 1 + i12, this.f31467i);
                c[] cVarArr2 = this.f31465g;
                int i14 = this.f31466h;
                Arrays.fill(cVarArr2, i14 + 1, i14 + 1 + i12, (Object) null);
                this.f31466h += i12;
            }
            return i12;
        }

        private final void d(c cVar) {
            int i10 = cVar.f31447c;
            int i11 = this.f31464f;
            if (i10 > i11) {
                b();
                return;
            }
            c((this.f31468j + i10) - i11);
            int i12 = this.f31467i + 1;
            c[] cVarArr = this.f31465g;
            if (i12 > cVarArr.length) {
                c[] cVarArr2 = new c[cVarArr.length * 2];
                System.arraycopy(cVarArr, 0, cVarArr2, cVarArr.length, cVarArr.length);
                this.f31466h = this.f31465g.length - 1;
                this.f31465g = cVarArr2;
            }
            int i13 = this.f31466h;
            this.f31466h = i13 - 1;
            this.f31465g[i13] = cVar;
            this.f31467i++;
            this.f31468j += i10;
        }

        public final void e(int i10) {
            this.f31459a = i10;
            int min = Math.min(i10, 16384);
            int i11 = this.f31464f;
            if (i11 == min) {
                return;
            }
            if (min < i11) {
                this.f31462d = Math.min(this.f31462d, min);
            }
            this.f31463e = true;
            this.f31464f = min;
            a();
        }

        public final void f(af.g data) {
            kotlin.jvm.internal.m.e(data, "data");
            if (this.f31460b) {
                k kVar = k.f31627a;
                if (kVar.d(data) < data.size()) {
                    af.d dVar = new af.d();
                    kVar.c(data, dVar);
                    af.g E = dVar.E();
                    h(E.size(), 127, 128);
                    this.f31461c.s0(E);
                    return;
                }
            }
            h(data.size(), 127, 0);
            this.f31461c.s0(data);
        }

        public final void g(List headerBlock) {
            int i10;
            int i11;
            boolean z10;
            kotlin.jvm.internal.m.e(headerBlock, "headerBlock");
            if (this.f31463e) {
                int i12 = this.f31462d;
                if (i12 < this.f31464f) {
                    h(i12, 31, 32);
                }
                this.f31463e = false;
                this.f31462d = Integer.MAX_VALUE;
                h(this.f31464f, 31, 32);
            }
            int size = headerBlock.size();
            int i13 = 0;
            while (i13 < size) {
                int i14 = i13 + 1;
                c cVar = (c) headerBlock.get(i13);
                af.g G = cVar.f31445a.G();
                af.g gVar = cVar.f31446b;
                d dVar = d.f31448a;
                Integer num = (Integer) dVar.b().get(G);
                if (num != null) {
                    i11 = num.intValue() + 1;
                    if (2 <= i11 && i11 < 8) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    if (z10) {
                        if (kotlin.jvm.internal.m.a(dVar.c()[i11 - 1].f31446b, gVar)) {
                            i10 = i11;
                        } else if (kotlin.jvm.internal.m.a(dVar.c()[i11].f31446b, gVar)) {
                            i11++;
                            i10 = i11;
                        }
                    }
                    i10 = i11;
                    i11 = -1;
                } else {
                    i10 = -1;
                    i11 = -1;
                }
                if (i11 == -1) {
                    int i15 = this.f31466h + 1;
                    int length = this.f31465g.length;
                    while (true) {
                        if (i15 >= length) {
                            break;
                        }
                        int i16 = i15 + 1;
                        c cVar2 = this.f31465g[i15];
                        kotlin.jvm.internal.m.b(cVar2);
                        if (kotlin.jvm.internal.m.a(cVar2.f31445a, G)) {
                            c cVar3 = this.f31465g[i15];
                            kotlin.jvm.internal.m.b(cVar3);
                            if (kotlin.jvm.internal.m.a(cVar3.f31446b, gVar)) {
                                i11 = d.f31448a.c().length + (i15 - this.f31466h);
                                break;
                            } else if (i10 == -1) {
                                i10 = d.f31448a.c().length + (i15 - this.f31466h);
                            }
                        }
                        i15 = i16;
                    }
                }
                if (i11 != -1) {
                    h(i11, 127, 128);
                } else if (i10 == -1) {
                    this.f31461c.O(64);
                    f(G);
                    f(gVar);
                    d(cVar);
                } else if (G.D(c.f31439e) && !kotlin.jvm.internal.m.a(c.f31444j, G)) {
                    h(i10, 15, 0);
                    f(gVar);
                } else {
                    h(i10, 63, 64);
                    f(gVar);
                    d(cVar);
                }
                i13 = i14;
            }
        }

        public final void h(int i10, int i11, int i12) {
            if (i10 < i11) {
                this.f31461c.O(i10 | i12);
                return;
            }
            this.f31461c.O(i12 | i11);
            int i13 = i10 - i11;
            while (i13 >= 128) {
                this.f31461c.O(128 | (i13 & 127));
                i13 >>>= 7;
            }
            this.f31461c.O(i13);
        }

        public /* synthetic */ b(int i10, boolean z10, af.d dVar, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this((i11 & 1) != 0 ? Base64Utils.IO_BUFFER_SIZE : i10, (i11 & 2) != 0 ? true : z10, dVar);
        }
    }
}
