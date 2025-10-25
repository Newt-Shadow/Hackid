package u8;

import ie.f;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes.dex */
public final class h0 {
    public static final b Companion = new b(null);

    /* renamed from: a  reason: collision with root package name */
    private final String f30910a;

    /* renamed from: b  reason: collision with root package name */
    private final String f30911b;

    /* renamed from: c  reason: collision with root package name */
    private final int f30912c;

    /* renamed from: d  reason: collision with root package name */
    private final long f30913d;

    /* loaded from: classes.dex */
    public /* synthetic */ class a implements ie.f {

        /* renamed from: a  reason: collision with root package name */
        public static final a f30914a;
        private static final ge.d descriptor;

        static {
            a aVar = new a();
            f30914a = aVar;
            ie.t tVar = new ie.t("com.google.firebase.sessions.SessionDetails", aVar, 4);
            tVar.p("sessionId", false);
            tVar.p("firstSessionId", false);
            tVar.p("sessionIndex", false);
            tVar.p("sessionStartTimestampUs", false);
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
            ie.z zVar = ie.z.f17458a;
            return new ee.b[]{zVar, zVar, ie.g.f17422a, ie.j.f17425a};
        }

        @Override // ee.a
        /* renamed from: f */
        public final h0 c(he.e decoder) {
            String str;
            int i10;
            int i11;
            String str2;
            long j10;
            kotlin.jvm.internal.m.e(decoder, "decoder");
            ge.d dVar = descriptor;
            he.c b10 = decoder.b(dVar);
            if (b10.o()) {
                String p10 = b10.p(dVar, 0);
                String p11 = b10.p(dVar, 1);
                str = p10;
                i10 = 15;
                i11 = b10.m(dVar, 2);
                str2 = p11;
                j10 = b10.e(dVar, 3);
            } else {
                String str3 = null;
                String str4 = null;
                boolean z10 = true;
                long j11 = 0;
                int i12 = 0;
                int i13 = 0;
                while (z10) {
                    int n10 = b10.n(dVar);
                    if (n10 != -1) {
                        if (n10 != 0) {
                            if (n10 != 1) {
                                if (n10 != 2) {
                                    if (n10 == 3) {
                                        j11 = b10.e(dVar, 3);
                                        i12 |= 8;
                                    } else {
                                        throw new ee.f(n10);
                                    }
                                } else {
                                    i13 = b10.m(dVar, 2);
                                    i12 |= 4;
                                }
                            } else {
                                str4 = b10.p(dVar, 1);
                                i12 |= 2;
                            }
                        } else {
                            str3 = b10.p(dVar, 0);
                            i12 |= 1;
                        }
                    } else {
                        z10 = false;
                    }
                }
                str = str3;
                i10 = i12;
                i11 = i13;
                str2 = str4;
                j10 = j11;
            }
            b10.a(dVar);
            return new h0(i10, str, str2, i11, j10, null);
        }

        @Override // ee.e
        /* renamed from: g */
        public final void e(he.f encoder, h0 value) {
            kotlin.jvm.internal.m.e(encoder, "encoder");
            kotlin.jvm.internal.m.e(value, "value");
            ge.d dVar = descriptor;
            he.d b10 = encoder.b(dVar);
            h0.e(value, b10, dVar);
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
            return a.f30914a;
        }
    }

    public /* synthetic */ h0(int i10, String str, String str2, int i11, long j10, ie.y yVar) {
        if (15 != (i10 & 15)) {
            ie.o.a(i10, 15, a.f30914a.a());
        }
        this.f30910a = str;
        this.f30911b = str2;
        this.f30912c = i11;
        this.f30913d = j10;
    }

    public static final /* synthetic */ void e(h0 h0Var, he.d dVar, ge.d dVar2) {
        dVar.e(dVar2, 0, h0Var.f30910a);
        dVar.e(dVar2, 1, h0Var.f30911b);
        dVar.i(dVar2, 2, h0Var.f30912c);
        dVar.q(dVar2, 3, h0Var.f30913d);
    }

    public final String a() {
        return this.f30911b;
    }

    public final String b() {
        return this.f30910a;
    }

    public final int c() {
        return this.f30912c;
    }

    public final long d() {
        return this.f30913d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof h0) {
            h0 h0Var = (h0) obj;
            return kotlin.jvm.internal.m.a(this.f30910a, h0Var.f30910a) && kotlin.jvm.internal.m.a(this.f30911b, h0Var.f30911b) && this.f30912c == h0Var.f30912c && this.f30913d == h0Var.f30913d;
        }
        return false;
    }

    public int hashCode() {
        return (((((this.f30910a.hashCode() * 31) + this.f30911b.hashCode()) * 31) + Integer.hashCode(this.f30912c)) * 31) + Long.hashCode(this.f30913d);
    }

    public String toString() {
        return "SessionDetails(sessionId=" + this.f30910a + ", firstSessionId=" + this.f30911b + ", sessionIndex=" + this.f30912c + ", sessionStartTimestampUs=" + this.f30913d + ')';
    }

    public h0(String sessionId, String firstSessionId, int i10, long j10) {
        kotlin.jvm.internal.m.e(sessionId, "sessionId");
        kotlin.jvm.internal.m.e(firstSessionId, "firstSessionId");
        this.f30910a = sessionId;
        this.f30911b = firstSessionId;
        this.f30912c = i10;
        this.f30913d = j10;
    }
}
