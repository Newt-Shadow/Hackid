package ve;

import af.a1;
import af.y0;
import com.pichillilorenzo.flutter_inappwebview_android.credential_database.URLProtectionSpaceContract;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import ne.a0;
import ne.s;
import ne.w;
import ne.x;
import ne.y;
/* loaded from: classes2.dex */
public final class g implements te.d {

    /* renamed from: g  reason: collision with root package name */
    public static final a f31570g = new a(null);

    /* renamed from: h  reason: collision with root package name */
    private static final List f31571h = oe.d.v("connection", URLProtectionSpaceContract.FeedEntry.COLUMN_NAME_HOST, "keep-alive", "proxy-connection", "te", "transfer-encoding", "encoding", "upgrade", ":method", ":path", ":scheme", ":authority");

    /* renamed from: i  reason: collision with root package name */
    private static final List f31572i = oe.d.v("connection", URLProtectionSpaceContract.FeedEntry.COLUMN_NAME_HOST, "keep-alive", "proxy-connection", "te", "transfer-encoding", "encoding", "upgrade");

    /* renamed from: a  reason: collision with root package name */
    private final se.f f31573a;

    /* renamed from: b  reason: collision with root package name */
    private final te.g f31574b;

    /* renamed from: c  reason: collision with root package name */
    private final f f31575c;

    /* renamed from: d  reason: collision with root package name */
    private volatile i f31576d;

    /* renamed from: e  reason: collision with root package name */
    private final x f31577e;

    /* renamed from: f  reason: collision with root package name */
    private volatile boolean f31578f;

    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final List a(y request) {
            kotlin.jvm.internal.m.e(request, "request");
            s e10 = request.e();
            ArrayList arrayList = new ArrayList(e10.size() + 4);
            arrayList.add(new c(c.f31441g, request.g()));
            arrayList.add(new c(c.f31442h, te.i.f30742a.c(request.i())));
            String d10 = request.d("Host");
            if (d10 != null) {
                arrayList.add(new c(c.f31444j, d10));
            }
            arrayList.add(new c(c.f31443i, request.i().p()));
            int size = e10.size();
            int i10 = 0;
            while (i10 < size) {
                int i11 = i10 + 1;
                String i12 = e10.i(i10);
                Locale US = Locale.US;
                kotlin.jvm.internal.m.d(US, "US");
                String lowerCase = i12.toLowerCase(US);
                kotlin.jvm.internal.m.d(lowerCase, "this as java.lang.String).toLowerCase(locale)");
                if (!g.f31571h.contains(lowerCase) || (kotlin.jvm.internal.m.a(lowerCase, "te") && kotlin.jvm.internal.m.a(e10.m(i10), "trailers"))) {
                    arrayList.add(new c(lowerCase, e10.m(i10)));
                }
                i10 = i11;
            }
            return arrayList;
        }

        public final a0.a b(s headerBlock, x protocol) {
            kotlin.jvm.internal.m.e(headerBlock, "headerBlock");
            kotlin.jvm.internal.m.e(protocol, "protocol");
            s.a aVar = new s.a();
            int size = headerBlock.size();
            te.k kVar = null;
            int i10 = 0;
            while (i10 < size) {
                int i11 = i10 + 1;
                String i12 = headerBlock.i(i10);
                String m10 = headerBlock.m(i10);
                if (kotlin.jvm.internal.m.a(i12, ":status")) {
                    kVar = te.k.f30745d.a(kotlin.jvm.internal.m.l("HTTP/1.1 ", m10));
                } else if (!g.f31572i.contains(i12)) {
                    aVar.c(i12, m10);
                }
                i10 = i11;
            }
            if (kVar != null) {
                return new a0.a().q(protocol).g(kVar.f30747b).n(kVar.f30748c).l(aVar.d());
            }
            throw new ProtocolException("Expected ':status' header not present");
        }
    }

    public g(w client, se.f connection, te.g chain, f http2Connection) {
        kotlin.jvm.internal.m.e(client, "client");
        kotlin.jvm.internal.m.e(connection, "connection");
        kotlin.jvm.internal.m.e(chain, "chain");
        kotlin.jvm.internal.m.e(http2Connection, "http2Connection");
        this.f31573a = connection;
        this.f31574b = chain;
        this.f31575c = http2Connection;
        List y10 = client.y();
        x xVar = x.H2_PRIOR_KNOWLEDGE;
        this.f31577e = y10.contains(xVar) ? xVar : x.HTTP_2;
    }

    @Override // te.d
    public void a(y request) {
        boolean z10;
        kotlin.jvm.internal.m.e(request, "request");
        if (this.f31576d != null) {
            return;
        }
        if (request.a() != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.f31576d = this.f31575c.Z0(f31570g.a(request), z10);
        if (!this.f31578f) {
            i iVar = this.f31576d;
            kotlin.jvm.internal.m.b(iVar);
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            iVar.v().g(this.f31574b.h(), timeUnit);
            i iVar2 = this.f31576d;
            kotlin.jvm.internal.m.b(iVar2);
            iVar2.G().g(this.f31574b.j(), timeUnit);
            return;
        }
        i iVar3 = this.f31576d;
        kotlin.jvm.internal.m.b(iVar3);
        iVar3.f(b.CANCEL);
        throw new IOException("Canceled");
    }

    @Override // te.d
    public void b() {
        i iVar = this.f31576d;
        kotlin.jvm.internal.m.b(iVar);
        iVar.n().close();
    }

    @Override // te.d
    public a0.a c(boolean z10) {
        i iVar = this.f31576d;
        if (iVar != null) {
            a0.a b10 = f31570g.b(iVar.E(), this.f31577e);
            if (z10 && b10.h() == 100) {
                return null;
            }
            return b10;
        }
        throw new IOException("stream wasn't created");
    }

    @Override // te.d
    public void cancel() {
        this.f31578f = true;
        i iVar = this.f31576d;
        if (iVar != null) {
            iVar.f(b.CANCEL);
        }
    }

    @Override // te.d
    public se.f d() {
        return this.f31573a;
    }

    @Override // te.d
    public void e() {
        this.f31575c.flush();
    }

    @Override // te.d
    public long f(a0 response) {
        kotlin.jvm.internal.m.e(response, "response");
        if (!te.e.b(response)) {
            return 0L;
        }
        return oe.d.u(response);
    }

    @Override // te.d
    public a1 g(a0 response) {
        kotlin.jvm.internal.m.e(response, "response");
        i iVar = this.f31576d;
        kotlin.jvm.internal.m.b(iVar);
        return iVar.p();
    }

    @Override // te.d
    public y0 h(y request, long j10) {
        kotlin.jvm.internal.m.e(request, "request");
        i iVar = this.f31576d;
        kotlin.jvm.internal.m.b(iVar);
        return iVar.n();
    }
}
