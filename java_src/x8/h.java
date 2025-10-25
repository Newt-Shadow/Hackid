package x8;

import ie.f;
import ie.t;
import ie.y;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes.dex */
public final class h {
    public static final b Companion = new b(null);

    /* renamed from: a  reason: collision with root package name */
    private final Boolean f32571a;

    /* renamed from: b  reason: collision with root package name */
    private final Double f32572b;

    /* renamed from: c  reason: collision with root package name */
    private final Integer f32573c;

    /* renamed from: d  reason: collision with root package name */
    private final Integer f32574d;

    /* renamed from: e  reason: collision with root package name */
    private final Long f32575e;

    /* loaded from: classes.dex */
    public /* synthetic */ class a implements ie.f {

        /* renamed from: a  reason: collision with root package name */
        public static final a f32576a;
        private static final ge.d descriptor;

        static {
            a aVar = new a();
            f32576a = aVar;
            t tVar = new t("com.google.firebase.sessions.settings.SessionConfigs", aVar, 5);
            tVar.p("sessionsEnabled", false);
            tVar.p("sessionSamplingRate", false);
            tVar.p("sessionTimeoutSeconds", false);
            tVar.p("cacheDurationSeconds", false);
            tVar.p("cacheUpdatedTimeSeconds", false);
            descriptor = tVar;
        }

        private a() {
        }

        @Override // ee.b, ee.e, ee.a
        public final ge.d a() {
            return descriptor;
        }

        @Override // ie.f
        public ee.b[] b() {
            return f.a.a(this);
        }

        @Override // ie.f
        public final ee.b[] d() {
            ie.g gVar = ie.g.f17422a;
            return new ee.b[]{fe.a.a(ie.b.f17412a), fe.a.a(ie.d.f17414a), fe.a.a(gVar), fe.a.a(gVar), fe.a.a(ie.j.f17425a)};
        }

        @Override // ee.a
        /* renamed from: f */
        public final h c(he.e decoder) {
            int i10;
            Boolean bool;
            Double d10;
            Integer num;
            Integer num2;
            Long l10;
            kotlin.jvm.internal.m.e(decoder, "decoder");
            ge.d dVar = descriptor;
            he.c b10 = decoder.b(dVar);
            Boolean bool2 = null;
            if (b10.o()) {
                ie.g gVar = ie.g.f17422a;
                bool = (Boolean) b10.c(dVar, 0, ie.b.f17412a, null);
                num2 = (Integer) b10.c(dVar, 3, gVar, null);
                l10 = (Long) b10.c(dVar, 4, ie.j.f17425a, null);
                num = (Integer) b10.c(dVar, 2, gVar, null);
                d10 = (Double) b10.c(dVar, 1, ie.d.f17414a, null);
                i10 = 31;
            } else {
                boolean z10 = true;
                int i11 = 0;
                Double d11 = null;
                Integer num3 = null;
                Integer num4 = null;
                Long l11 = null;
                while (z10) {
                    int n10 = b10.n(dVar);
                    if (n10 != -1) {
                        if (n10 != 0) {
                            if (n10 != 1) {
                                if (n10 != 2) {
                                    if (n10 != 3) {
                                        if (n10 == 4) {
                                            l11 = (Long) b10.c(dVar, 4, ie.j.f17425a, l11);
                                            i11 |= 16;
                                        } else {
                                            throw new ee.f(n10);
                                        }
                                    } else {
                                        num4 = (Integer) b10.c(dVar, 3, ie.g.f17422a, num4);
                                        i11 |= 8;
                                    }
                                } else {
                                    num3 = (Integer) b10.c(dVar, 2, ie.g.f17422a, num3);
                                    i11 |= 4;
                                }
                            } else {
                                d11 = (Double) b10.c(dVar, 1, ie.d.f17414a, d11);
                                i11 |= 2;
                            }
                        } else {
                            bool2 = (Boolean) b10.c(dVar, 0, ie.b.f17412a, bool2);
                            i11 |= 1;
                        }
                    } else {
                        z10 = false;
                    }
                }
                i10 = i11;
                bool = bool2;
                d10 = d11;
                num = num3;
                num2 = num4;
                l10 = l11;
            }
            b10.a(dVar);
            return new h(i10, bool, d10, num, num2, l10, null);
        }

        @Override // ee.e
        /* renamed from: g */
        public final void e(he.f encoder, h value) {
            kotlin.jvm.internal.m.e(encoder, "encoder");
            kotlin.jvm.internal.m.e(value, "value");
            ge.d dVar = descriptor;
            he.d b10 = encoder.b(dVar);
            h.f(value, b10, dVar);
            b10.a(dVar);
        }
    }

    /* loaded from: classes.dex */
    public static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ee.b serializer() {
            return a.f32576a;
        }
    }

    public /* synthetic */ h(int i10, Boolean bool, Double d10, Integer num, Integer num2, Long l10, y yVar) {
        if (31 != (i10 & 31)) {
            ie.o.a(i10, 31, a.f32576a.a());
        }
        this.f32571a = bool;
        this.f32572b = d10;
        this.f32573c = num;
        this.f32574d = num2;
        this.f32575e = l10;
    }

    public static final /* synthetic */ void f(h hVar, he.d dVar, ge.d dVar2) {
        dVar.f(dVar2, 0, ie.b.f17412a, hVar.f32571a);
        dVar.f(dVar2, 1, ie.d.f17414a, hVar.f32572b);
        ie.g gVar = ie.g.f17422a;
        dVar.f(dVar2, 2, gVar, hVar.f32573c);
        dVar.f(dVar2, 3, gVar, hVar.f32574d);
        dVar.f(dVar2, 4, ie.j.f17425a, hVar.f32575e);
    }

    public final Integer a() {
        return this.f32574d;
    }

    public final Long b() {
        return this.f32575e;
    }

    public final Double c() {
        return this.f32572b;
    }

    public final Integer d() {
        return this.f32573c;
    }

    public final Boolean e() {
        return this.f32571a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof h) {
            h hVar = (h) obj;
            return kotlin.jvm.internal.m.a(this.f32571a, hVar.f32571a) && kotlin.jvm.internal.m.a(this.f32572b, hVar.f32572b) && kotlin.jvm.internal.m.a(this.f32573c, hVar.f32573c) && kotlin.jvm.internal.m.a(this.f32574d, hVar.f32574d) && kotlin.jvm.internal.m.a(this.f32575e, hVar.f32575e);
        }
        return false;
    }

    public int hashCode() {
        Boolean bool = this.f32571a;
        int hashCode = (bool == null ? 0 : bool.hashCode()) * 31;
        Double d10 = this.f32572b;
        int hashCode2 = (hashCode + (d10 == null ? 0 : d10.hashCode())) * 31;
        Integer num = this.f32573c;
        int hashCode3 = (hashCode2 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.f32574d;
        int hashCode4 = (hashCode3 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Long l10 = this.f32575e;
        return hashCode4 + (l10 != null ? l10.hashCode() : 0);
    }

    public String toString() {
        return "SessionConfigs(sessionsEnabled=" + this.f32571a + ", sessionSamplingRate=" + this.f32572b + ", sessionTimeoutSeconds=" + this.f32573c + ", cacheDurationSeconds=" + this.f32574d + ", cacheUpdatedTimeSeconds=" + this.f32575e + ')';
    }

    public h(Boolean bool, Double d10, Integer num, Integer num2, Long l10) {
        this.f32571a = bool;
        this.f32572b = d10;
        this.f32573c = num;
        this.f32574d = num2;
        this.f32575e = l10;
    }
}
