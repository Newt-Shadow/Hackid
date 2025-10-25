package ne;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Reader;
import java.nio.charset.Charset;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public abstract class b0 implements Closeable {

    /* renamed from: b  reason: collision with root package name */
    public static final b f26599b = new b(null);

    /* renamed from: a  reason: collision with root package name */
    private Reader f26600a;

    /* loaded from: classes2.dex */
    public static final class a extends Reader {

        /* renamed from: a  reason: collision with root package name */
        private final af.f f26601a;

        /* renamed from: b  reason: collision with root package name */
        private final Charset f26602b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f26603c;

        /* renamed from: d  reason: collision with root package name */
        private Reader f26604d;

        public a(af.f source, Charset charset) {
            kotlin.jvm.internal.m.e(source, "source");
            kotlin.jvm.internal.m.e(charset, "charset");
            this.f26601a = source;
            this.f26602b = charset;
        }

        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            xc.t tVar;
            this.f26603c = true;
            Reader reader = this.f26604d;
            if (reader == null) {
                tVar = null;
            } else {
                reader.close();
                tVar = xc.t.f32733a;
            }
            if (tVar == null) {
                this.f26601a.close();
            }
        }

        @Override // java.io.Reader
        public int read(char[] cbuf, int i10, int i11) {
            kotlin.jvm.internal.m.e(cbuf, "cbuf");
            if (!this.f26603c) {
                Reader reader = this.f26604d;
                if (reader == null) {
                    reader = new InputStreamReader(this.f26601a.S0(), oe.d.H(this.f26601a, this.f26602b));
                    this.f26604d = reader;
                }
                return reader.read(cbuf, i10, i11);
            }
            throw new IOException("Stream closed");
        }
    }

    /* loaded from: classes2.dex */
    public static final class b {

        /* loaded from: classes2.dex */
        public static final class a extends b0 {

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ v f26605c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ long f26606d;

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ af.f f26607e;

            a(v vVar, long j10, af.f fVar) {
                this.f26605c = vVar;
                this.f26606d = j10;
                this.f26607e = fVar;
            }

            @Override // ne.b0
            public long c() {
                return this.f26606d;
            }

            @Override // ne.b0
            public v e() {
                return this.f26605c;
            }

            @Override // ne.b0
            public af.f f() {
                return this.f26607e;
            }
        }

        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ b0 c(b bVar, byte[] bArr, v vVar, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                vVar = null;
            }
            return bVar.b(bArr, vVar);
        }

        public final b0 a(af.f fVar, v vVar, long j10) {
            kotlin.jvm.internal.m.e(fVar, "<this>");
            return new a(vVar, j10, fVar);
        }

        public final b0 b(byte[] bArr, v vVar) {
            kotlin.jvm.internal.m.e(bArr, "<this>");
            return a(new af.d().C0(bArr), vVar, bArr.length);
        }
    }

    private final Charset b() {
        Charset c10;
        v e10 = e();
        if (e10 == null) {
            c10 = null;
        } else {
            c10 = e10.c(rd.d.f29089b);
        }
        if (c10 == null) {
            return rd.d.f29089b;
        }
        return c10;
    }

    public final Reader a() {
        Reader reader = this.f26600a;
        if (reader == null) {
            a aVar = new a(f(), b());
            this.f26600a = aVar;
            return aVar;
        }
        return reader;
    }

    public abstract long c();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        oe.d.l(f());
    }

    public abstract v e();

    public abstract af.f f();

    public final String g() {
        af.f f10 = f();
        try {
            String h02 = f10.h0(oe.d.H(f10, b()));
            gd.b.a(f10, null);
            return h02;
        } finally {
        }
    }
}
