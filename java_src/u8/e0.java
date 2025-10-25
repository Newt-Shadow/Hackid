package u8;

import ie.f;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import u8.h0;
import u8.v;
import u8.v0;
/* loaded from: classes.dex */
public final class e0 {
    public static final b Companion = new b(null);

    /* renamed from: d  reason: collision with root package name */
    private static final ee.b[] f30900d = {null, null, new ie.i(ie.z.f17458a, v.a.f31043a)};

    /* renamed from: a  reason: collision with root package name */
    private final h0 f30901a;

    /* renamed from: b  reason: collision with root package name */
    private final v0 f30902b;

    /* renamed from: c  reason: collision with root package name */
    private final Map f30903c;

    /* loaded from: classes.dex */
    public /* synthetic */ class a implements ie.f {

        /* renamed from: a  reason: collision with root package name */
        public static final a f30904a;
        private static final ge.d descriptor;

        static {
            a aVar = new a();
            f30904a = aVar;
            ie.t tVar = new ie.t("com.google.firebase.sessions.SessionData", aVar, 3);
            tVar.p("sessionDetails", false);
            tVar.p("backgroundTime", true);
            tVar.p("processDataMap", true);
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
            return new ee.b[]{h0.a.f30914a, fe.a.a(v0.a.f31047a), fe.a.a(e0.f30900d[2])};
        }

        @Override // ee.a
        /* renamed from: f */
        public final e0 c(he.e decoder) {
            int i10;
            h0 h0Var;
            v0 v0Var;
            Map map;
            kotlin.jvm.internal.m.e(decoder, "decoder");
            ge.d dVar = descriptor;
            he.c b10 = decoder.b(dVar);
            ee.b[] bVarArr = e0.f30900d;
            h0 h0Var2 = null;
            if (b10.o()) {
                map = (Map) b10.c(dVar, 2, bVarArr[2], null);
                h0Var = (h0) b10.j(dVar, 0, h0.a.f30914a, null);
                i10 = 7;
                v0Var = (v0) b10.c(dVar, 1, v0.a.f31047a, null);
            } else {
                boolean z10 = true;
                int i11 = 0;
                v0 v0Var2 = null;
                Map map2 = null;
                while (z10) {
                    int n10 = b10.n(dVar);
                    if (n10 != -1) {
                        if (n10 != 0) {
                            if (n10 != 1) {
                                if (n10 == 2) {
                                    map2 = (Map) b10.c(dVar, 2, bVarArr[2], map2);
                                    i11 |= 4;
                                } else {
                                    throw new ee.f(n10);
                                }
                            } else {
                                v0Var2 = (v0) b10.c(dVar, 1, v0.a.f31047a, v0Var2);
                                i11 |= 2;
                            }
                        } else {
                            h0Var2 = (h0) b10.j(dVar, 0, h0.a.f30914a, h0Var2);
                            i11 |= 1;
                        }
                    } else {
                        z10 = false;
                    }
                }
                i10 = i11;
                h0Var = h0Var2;
                v0Var = v0Var2;
                map = map2;
            }
            b10.a(dVar);
            return new e0(i10, h0Var, v0Var, map, (ie.y) null);
        }

        @Override // ee.e
        /* renamed from: g */
        public final void e(he.f encoder, e0 value) {
            kotlin.jvm.internal.m.e(encoder, "encoder");
            kotlin.jvm.internal.m.e(value, "value");
            ge.d dVar = descriptor;
            he.d b10 = encoder.b(dVar);
            e0.g(value, b10, dVar);
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
            return a.f30904a;
        }
    }

    public /* synthetic */ e0(int i10, h0 h0Var, v0 v0Var, Map map, ie.y yVar) {
        if (1 != (i10 & 1)) {
            ie.o.a(i10, 1, a.f30904a.a());
        }
        this.f30901a = h0Var;
        if ((i10 & 2) == 0) {
            this.f30902b = null;
        } else {
            this.f30902b = v0Var;
        }
        if ((i10 & 4) == 0) {
            this.f30903c = null;
        } else {
            this.f30903c = map;
        }
    }

    public static /* synthetic */ e0 c(e0 e0Var, h0 h0Var, v0 v0Var, Map map, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            h0Var = e0Var.f30901a;
        }
        if ((i10 & 2) != 0) {
            v0Var = e0Var.f30902b;
        }
        if ((i10 & 4) != 0) {
            map = e0Var.f30903c;
        }
        return e0Var.b(h0Var, v0Var, map);
    }

    public static final /* synthetic */ void g(e0 e0Var, he.d dVar, ge.d dVar2) {
        boolean z10;
        ee.b[] bVarArr = f30900d;
        boolean z11 = false;
        dVar.c(dVar2, 0, h0.a.f30914a, e0Var.f30901a);
        if (dVar.m(dVar2, 1) || e0Var.f30902b != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            dVar.f(dVar2, 1, v0.a.f31047a, e0Var.f30902b);
        }
        if (dVar.m(dVar2, 2) || e0Var.f30903c != null) {
            z11 = true;
        }
        if (z11) {
            dVar.f(dVar2, 2, bVarArr[2], e0Var.f30903c);
        }
    }

    public final e0 b(h0 sessionDetails, v0 v0Var, Map map) {
        kotlin.jvm.internal.m.e(sessionDetails, "sessionDetails");
        return new e0(sessionDetails, v0Var, map);
    }

    public final v0 d() {
        return this.f30902b;
    }

    public final Map e() {
        return this.f30903c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof e0) {
            e0 e0Var = (e0) obj;
            return kotlin.jvm.internal.m.a(this.f30901a, e0Var.f30901a) && kotlin.jvm.internal.m.a(this.f30902b, e0Var.f30902b) && kotlin.jvm.internal.m.a(this.f30903c, e0Var.f30903c);
        }
        return false;
    }

    public final h0 f() {
        return this.f30901a;
    }

    public int hashCode() {
        int hashCode = this.f30901a.hashCode() * 31;
        v0 v0Var = this.f30902b;
        int hashCode2 = (hashCode + (v0Var == null ? 0 : v0Var.hashCode())) * 31;
        Map map = this.f30903c;
        return hashCode2 + (map != null ? map.hashCode() : 0);
    }

    public String toString() {
        return "SessionData(sessionDetails=" + this.f30901a + ", backgroundTime=" + this.f30902b + ", processDataMap=" + this.f30903c + ')';
    }

    public e0(h0 sessionDetails, v0 v0Var, Map map) {
        kotlin.jvm.internal.m.e(sessionDetails, "sessionDetails");
        this.f30901a = sessionDetails;
        this.f30902b = v0Var;
        this.f30903c = map;
    }

    public /* synthetic */ e0(h0 h0Var, v0 v0Var, Map map, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(h0Var, (i10 & 2) != 0 ? null : v0Var, (i10 & 4) != 0 ? null : map);
    }
}
