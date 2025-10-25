package lb;

import af.m0;
import ne.u;
import org.apache.tika.metadata.HttpHeaders;
/* loaded from: classes.dex */
public final class b implements ne.u {

    /* renamed from: a  reason: collision with root package name */
    private final eb.d f25403a;

    /* loaded from: classes.dex */
    public static final class a extends ne.z {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ne.z f25404b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ af.d f25405c;

        a(ne.z zVar, af.d dVar) {
            this.f25404b = zVar;
            this.f25405c = dVar;
        }

        @Override // ne.z
        public long a() {
            return this.f25405c.k0();
        }

        @Override // ne.z
        public ne.v b() {
            return this.f25404b.b();
        }

        @Override // ne.z
        public void e(af.e sink) {
            kotlin.jvm.internal.m.e(sink, "sink");
            sink.s0(this.f25405c.A0());
        }
    }

    /* renamed from: lb.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0243b extends ne.z {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ne.z f25406b;

        C0243b(ne.z zVar) {
            this.f25406b = zVar;
        }

        @Override // ne.z
        public long a() {
            return -1L;
        }

        @Override // ne.z
        public ne.v b() {
            return this.f25406b.b();
        }

        @Override // ne.z
        public void e(af.e sink) {
            kotlin.jvm.internal.m.e(sink, "sink");
            af.e a10 = m0.a(new af.o(sink));
            this.f25406b.e(a10);
            a10.close();
        }
    }

    public b(eb.d config) {
        kotlin.jvm.internal.m.e(config, "config");
        this.f25403a = config;
    }

    private final ne.z b(ne.z zVar) {
        af.d dVar = new af.d();
        zVar.e(dVar);
        return new a(zVar, dVar);
    }

    private final ne.z c(ne.z zVar) {
        return new C0243b(zVar);
    }

    @Override // ne.u
    public ne.a0 a(u.a chain) {
        kotlin.jvm.internal.m.e(chain, "chain");
        ne.y b10 = chain.b();
        ne.z a10 = b10.a();
        if (a10 != null && b10.d(HttpHeaders.CONTENT_ENCODING) == null) {
            try {
                b10 = b10.h().d(HttpHeaders.CONTENT_ENCODING, "gzip").f(b10.g(), b(c(a10))).a();
            } catch (Throwable th) {
                i o10 = this.f25403a.o();
                o10.a("Failed to gzip the request body: " + th + '.');
            }
            return chain.a(b10);
        }
        return chain.a(b10);
    }
}
