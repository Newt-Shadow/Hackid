package se;

import af.a1;
import af.l;
import af.m0;
import af.y0;
import java.io.IOException;
import java.net.ProtocolException;
import kotlin.jvm.internal.m;
import ne.a0;
import ne.b0;
import ne.q;
import ne.y;
import ne.z;
import org.apache.tika.metadata.HttpHeaders;
/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final e f29603a;

    /* renamed from: b  reason: collision with root package name */
    private final q f29604b;

    /* renamed from: c  reason: collision with root package name */
    private final d f29605c;

    /* renamed from: d  reason: collision with root package name */
    private final te.d f29606d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f29607e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f29608f;

    /* renamed from: g  reason: collision with root package name */
    private final f f29609g;

    /* loaded from: classes2.dex */
    private final class a extends l {

        /* renamed from: b  reason: collision with root package name */
        private final long f29610b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f29611c;

        /* renamed from: d  reason: collision with root package name */
        private long f29612d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f29613e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ c f29614f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(c this$0, y0 delegate, long j10) {
            super(delegate);
            m.e(this$0, "this$0");
            m.e(delegate, "delegate");
            this.f29614f = this$0;
            this.f29610b = j10;
        }

        private final IOException a(IOException iOException) {
            if (this.f29611c) {
                return iOException;
            }
            this.f29611c = true;
            return this.f29614f.a(this.f29612d, false, true, iOException);
        }

        @Override // af.l, af.y0
        public void c0(af.d source, long j10) {
            m.e(source, "source");
            if (!this.f29613e) {
                long j11 = this.f29610b;
                if (j11 != -1 && this.f29612d + j10 > j11) {
                    throw new ProtocolException("expected " + this.f29610b + " bytes but received " + (this.f29612d + j10));
                }
                try {
                    super.c0(source, j10);
                    this.f29612d += j10;
                    return;
                } catch (IOException e10) {
                    throw a(e10);
                }
            }
            throw new IllegalStateException("closed".toString());
        }

        @Override // af.l, af.y0, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.f29613e) {
                return;
            }
            this.f29613e = true;
            long j10 = this.f29610b;
            if (j10 != -1 && this.f29612d != j10) {
                throw new ProtocolException("unexpected end of stream");
            }
            try {
                super.close();
                a(null);
            } catch (IOException e10) {
                throw a(e10);
            }
        }

        @Override // af.l, af.y0, java.io.Flushable
        public void flush() {
            try {
                super.flush();
            } catch (IOException e10) {
                throw a(e10);
            }
        }
    }

    /* loaded from: classes2.dex */
    public final class b extends af.m {

        /* renamed from: b  reason: collision with root package name */
        private final long f29615b;

        /* renamed from: c  reason: collision with root package name */
        private long f29616c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f29617d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f29618e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f29619f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ c f29620g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(c this$0, a1 delegate, long j10) {
            super(delegate);
            m.e(this$0, "this$0");
            m.e(delegate, "delegate");
            this.f29620g = this$0;
            this.f29615b = j10;
            this.f29617d = true;
            if (j10 == 0) {
                b(null);
            }
        }

        @Override // af.m, af.a1
        public long L0(af.d sink, long j10) {
            m.e(sink, "sink");
            if (!this.f29619f) {
                try {
                    long L0 = a().L0(sink, j10);
                    if (this.f29617d) {
                        this.f29617d = false;
                        this.f29620g.i().v(this.f29620g.g());
                    }
                    if (L0 == -1) {
                        b(null);
                        return -1L;
                    }
                    long j11 = this.f29616c + L0;
                    long j12 = this.f29615b;
                    if (j12 != -1 && j11 > j12) {
                        throw new ProtocolException("expected " + this.f29615b + " bytes but received " + j11);
                    }
                    this.f29616c = j11;
                    if (j11 == j12) {
                        b(null);
                    }
                    return L0;
                } catch (IOException e10) {
                    throw b(e10);
                }
            }
            throw new IllegalStateException("closed".toString());
        }

        public final IOException b(IOException iOException) {
            if (this.f29618e) {
                return iOException;
            }
            this.f29618e = true;
            if (iOException == null && this.f29617d) {
                this.f29617d = false;
                this.f29620g.i().v(this.f29620g.g());
            }
            return this.f29620g.a(this.f29616c, true, false, iOException);
        }

        @Override // af.m, af.a1, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.f29619f) {
                return;
            }
            this.f29619f = true;
            try {
                super.close();
                b(null);
            } catch (IOException e10) {
                throw b(e10);
            }
        }
    }

    public c(e call, q eventListener, d finder, te.d codec) {
        m.e(call, "call");
        m.e(eventListener, "eventListener");
        m.e(finder, "finder");
        m.e(codec, "codec");
        this.f29603a = call;
        this.f29604b = eventListener;
        this.f29605c = finder;
        this.f29606d = codec;
        this.f29609g = codec.d();
    }

    private final void t(IOException iOException) {
        this.f29608f = true;
        this.f29605c.h(iOException);
        this.f29606d.d().G(this.f29603a, iOException);
    }

    public final IOException a(long j10, boolean z10, boolean z11, IOException iOException) {
        if (iOException != null) {
            t(iOException);
        }
        if (z11) {
            if (iOException != null) {
                this.f29604b.r(this.f29603a, iOException);
            } else {
                this.f29604b.p(this.f29603a, j10);
            }
        }
        if (z10) {
            if (iOException != null) {
                this.f29604b.w(this.f29603a, iOException);
            } else {
                this.f29604b.u(this.f29603a, j10);
            }
        }
        return this.f29603a.r(this, z11, z10, iOException);
    }

    public final void b() {
        this.f29606d.cancel();
    }

    public final y0 c(y request, boolean z10) {
        m.e(request, "request");
        this.f29607e = z10;
        z a10 = request.a();
        m.b(a10);
        long a11 = a10.a();
        this.f29604b.q(this.f29603a);
        return new a(this, this.f29606d.h(request, a11), a11);
    }

    public final void d() {
        this.f29606d.cancel();
        this.f29603a.r(this, true, true, null);
    }

    public final void e() {
        try {
            this.f29606d.b();
        } catch (IOException e10) {
            this.f29604b.r(this.f29603a, e10);
            t(e10);
            throw e10;
        }
    }

    public final void f() {
        try {
            this.f29606d.e();
        } catch (IOException e10) {
            this.f29604b.r(this.f29603a, e10);
            t(e10);
            throw e10;
        }
    }

    public final e g() {
        return this.f29603a;
    }

    public final f h() {
        return this.f29609g;
    }

    public final q i() {
        return this.f29604b;
    }

    public final d j() {
        return this.f29605c;
    }

    public final boolean k() {
        return this.f29608f;
    }

    public final boolean l() {
        return !m.a(this.f29605c.d().l().h(), this.f29609g.z().a().l().h());
    }

    public final boolean m() {
        return this.f29607e;
    }

    public final void n() {
        this.f29606d.d().y();
    }

    public final void o() {
        this.f29603a.r(this, true, false, null);
    }

    public final b0 p(a0 response) {
        m.e(response, "response");
        try {
            String k10 = a0.k(response, HttpHeaders.CONTENT_TYPE, null, 2, null);
            long f10 = this.f29606d.f(response);
            return new te.h(k10, f10, m0.b(new b(this, this.f29606d.g(response), f10)));
        } catch (IOException e10) {
            this.f29604b.w(this.f29603a, e10);
            t(e10);
            throw e10;
        }
    }

    public final a0.a q(boolean z10) {
        try {
            a0.a c10 = this.f29606d.c(z10);
            if (c10 != null) {
                c10.m(this);
            }
            return c10;
        } catch (IOException e10) {
            this.f29604b.w(this.f29603a, e10);
            t(e10);
            throw e10;
        }
    }

    public final void r(a0 response) {
        m.e(response, "response");
        this.f29604b.x(this.f29603a, response);
    }

    public final void s() {
        this.f29604b.y(this.f29603a);
    }

    public final void u(y request) {
        m.e(request, "request");
        try {
            this.f29604b.t(this.f29603a);
            this.f29606d.a(request);
            this.f29604b.s(this.f29603a, request);
        } catch (IOException e10) {
            this.f29604b.r(this.f29603a, e10);
            t(e10);
            throw e10;
        }
    }
}
