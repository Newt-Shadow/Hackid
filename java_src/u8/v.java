package u8;

import ie.f;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes.dex */
public final class v {
    public static final b Companion = new b(null);

    /* renamed from: a  reason: collision with root package name */
    private final int f31041a;

    /* renamed from: b  reason: collision with root package name */
    private final String f31042b;

    /* loaded from: classes.dex */
    public /* synthetic */ class a implements ie.f {

        /* renamed from: a  reason: collision with root package name */
        public static final a f31043a;
        private static final ge.d descriptor;

        static {
            a aVar = new a();
            f31043a = aVar;
            ie.t tVar = new ie.t("com.google.firebase.sessions.ProcessData", aVar, 2);
            tVar.p("pid", false);
            tVar.p(CommonUrlParts.UUID, false);
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
            return new ee.b[]{ie.g.f17422a, ie.z.f17458a};
        }

        @Override // ee.a
        /* renamed from: f */
        public final v c(he.e decoder) {
            int i10;
            String str;
            int i11;
            kotlin.jvm.internal.m.e(decoder, "decoder");
            ge.d dVar = descriptor;
            he.c b10 = decoder.b(dVar);
            if (b10.o()) {
                i10 = b10.m(dVar, 0);
                str = b10.p(dVar, 1);
                i11 = 3;
            } else {
                boolean z10 = true;
                i10 = 0;
                int i12 = 0;
                String str2 = null;
                while (z10) {
                    int n10 = b10.n(dVar);
                    if (n10 != -1) {
                        if (n10 != 0) {
                            if (n10 == 1) {
                                str2 = b10.p(dVar, 1);
                                i12 |= 2;
                            } else {
                                throw new ee.f(n10);
                            }
                        } else {
                            i10 = b10.m(dVar, 0);
                            i12 |= 1;
                        }
                    } else {
                        z10 = false;
                    }
                }
                str = str2;
                i11 = i12;
            }
            b10.a(dVar);
            return new v(i11, i10, str, null);
        }

        @Override // ee.e
        /* renamed from: g */
        public final void e(he.f encoder, v value) {
            kotlin.jvm.internal.m.e(encoder, "encoder");
            kotlin.jvm.internal.m.e(value, "value");
            ge.d dVar = descriptor;
            he.d b10 = encoder.b(dVar);
            v.c(value, b10, dVar);
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
            return a.f31043a;
        }
    }

    public /* synthetic */ v(int i10, int i11, String str, ie.y yVar) {
        if (3 != (i10 & 3)) {
            ie.o.a(i10, 3, a.f31043a.a());
        }
        this.f31041a = i11;
        this.f31042b = str;
    }

    public static final /* synthetic */ void c(v vVar, he.d dVar, ge.d dVar2) {
        dVar.i(dVar2, 0, vVar.f31041a);
        dVar.e(dVar2, 1, vVar.f31042b);
    }

    public final int a() {
        return this.f31041a;
    }

    public final String b() {
        return this.f31042b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof v) {
            v vVar = (v) obj;
            return this.f31041a == vVar.f31041a && kotlin.jvm.internal.m.a(this.f31042b, vVar.f31042b);
        }
        return false;
    }

    public int hashCode() {
        return (Integer.hashCode(this.f31041a) * 31) + this.f31042b.hashCode();
    }

    public String toString() {
        return "ProcessData(pid=" + this.f31041a + ", uuid=" + this.f31042b + ')';
    }

    public v(int i10, String uuid) {
        kotlin.jvm.internal.m.e(uuid, "uuid");
        this.f31041a = i10;
        this.f31042b = uuid;
    }
}
