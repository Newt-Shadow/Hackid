package u8;

import ie.f;
import kotlin.jvm.internal.DefaultConstructorMarker;
import sd.a;
/* loaded from: classes.dex */
public final class v0 {
    public static final b Companion = new b(null);

    /* renamed from: a  reason: collision with root package name */
    private final long f31044a;

    /* renamed from: b  reason: collision with root package name */
    private final long f31045b;

    /* renamed from: c  reason: collision with root package name */
    private final long f31046c;

    /* loaded from: classes.dex */
    public /* synthetic */ class a implements ie.f {

        /* renamed from: a  reason: collision with root package name */
        public static final a f31047a;
        private static final ge.d descriptor;

        static {
            a aVar = new a();
            f31047a = aVar;
            ie.t tVar = new ie.t("com.google.firebase.sessions.Time", aVar, 3);
            tVar.p("ms", false);
            tVar.p("us", true);
            tVar.p("seconds", true);
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
            ie.j jVar = ie.j.f17425a;
            return new ee.b[]{jVar, jVar, jVar};
        }

        @Override // ee.a
        /* renamed from: f */
        public final v0 c(he.e decoder) {
            int i10;
            long j10;
            long j11;
            long j12;
            kotlin.jvm.internal.m.e(decoder, "decoder");
            ge.d dVar = descriptor;
            he.c b10 = decoder.b(dVar);
            if (b10.o()) {
                long e10 = b10.e(dVar, 0);
                long e11 = b10.e(dVar, 1);
                j10 = b10.e(dVar, 2);
                i10 = 7;
                j11 = e10;
                j12 = e11;
            } else {
                long j13 = 0;
                boolean z10 = true;
                int i11 = 0;
                long j14 = 0;
                long j15 = 0;
                while (z10) {
                    int n10 = b10.n(dVar);
                    if (n10 != -1) {
                        if (n10 != 0) {
                            if (n10 != 1) {
                                if (n10 == 2) {
                                    j13 = b10.e(dVar, 2);
                                    i11 |= 4;
                                } else {
                                    throw new ee.f(n10);
                                }
                            } else {
                                j15 = b10.e(dVar, 1);
                                i11 |= 2;
                            }
                        } else {
                            j14 = b10.e(dVar, 0);
                            i11 |= 1;
                        }
                    } else {
                        z10 = false;
                    }
                }
                i10 = i11;
                j10 = j13;
                j11 = j14;
                j12 = j15;
            }
            b10.a(dVar);
            return new v0(i10, j11, j12, j10, null);
        }

        @Override // ee.e
        /* renamed from: g */
        public final void e(he.f encoder, v0 value) {
            kotlin.jvm.internal.m.e(encoder, "encoder");
            kotlin.jvm.internal.m.e(value, "value");
            ge.d dVar = descriptor;
            he.d b10 = encoder.b(dVar);
            v0.d(value, b10, dVar);
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
            return a.f31047a;
        }
    }

    public /* synthetic */ v0(int i10, long j10, long j11, long j12, ie.y yVar) {
        if (1 != (i10 & 1)) {
            ie.o.a(i10, 1, a.f31047a.a());
        }
        this.f31044a = j10;
        this.f31045b = (i10 & 2) == 0 ? 1000 * j10 : j11;
        if ((i10 & 4) == 0) {
            this.f31046c = j10 / 1000;
        } else {
            this.f31046c = j12;
        }
    }

    public static final /* synthetic */ void d(v0 v0Var, he.d dVar, ge.d dVar2) {
        boolean z10;
        boolean z11 = false;
        dVar.q(dVar2, 0, v0Var.f31044a);
        if (dVar.m(dVar2, 1) || v0Var.f31045b != v0Var.f31044a * 1000) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            dVar.q(dVar2, 1, v0Var.f31045b);
        }
        if (dVar.m(dVar2, 2) || v0Var.f31046c != v0Var.f31044a / 1000) {
            z11 = true;
        }
        if (z11) {
            dVar.q(dVar2, 2, v0Var.f31046c);
        }
    }

    public final long a() {
        return this.f31046c;
    }

    public final long b() {
        return this.f31045b;
    }

    public final long c(v0 time) {
        kotlin.jvm.internal.m.e(time, "time");
        a.C0309a c0309a = sd.a.f29581b;
        return sd.c.i(this.f31044a - time.f31044a, sd.d.f29590d);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof v0) && this.f31044a == ((v0) obj).f31044a;
    }

    public int hashCode() {
        return Long.hashCode(this.f31044a);
    }

    public String toString() {
        return "Time(ms=" + this.f31044a + ')';
    }

    public v0(long j10) {
        this.f31044a = j10;
        long j11 = 1000;
        this.f31045b = j10 * j11;
        this.f31046c = j10 / j11;
    }
}
