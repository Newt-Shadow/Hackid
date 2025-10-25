package ve;

import af.a1;
import af.b1;
import io.appmetrica.analytics.coreutils.internal.io.Base64Utils;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.KotlinVersion;
import kotlin.jvm.internal.DefaultConstructorMarker;
import ve.d;
/* loaded from: classes2.dex */
public final class h implements Closeable {

    /* renamed from: e  reason: collision with root package name */
    public static final a f31579e = new a(null);

    /* renamed from: f  reason: collision with root package name */
    private static final Logger f31580f;

    /* renamed from: a  reason: collision with root package name */
    private final af.f f31581a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f31582b;

    /* renamed from: c  reason: collision with root package name */
    private final b f31583c;

    /* renamed from: d  reason: collision with root package name */
    private final d.a f31584d;

    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Logger a() {
            return h.f31580f;
        }

        public final int b(int i10, int i11, int i12) {
            if ((i11 & 8) != 0) {
                i10--;
            }
            if (i12 <= i10) {
                return i10 - i12;
            }
            throw new IOException("PROTOCOL_ERROR padding " + i12 + " > remaining length " + i10);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b implements a1 {

        /* renamed from: a  reason: collision with root package name */
        private final af.f f31585a;

        /* renamed from: b  reason: collision with root package name */
        private int f31586b;

        /* renamed from: c  reason: collision with root package name */
        private int f31587c;

        /* renamed from: d  reason: collision with root package name */
        private int f31588d;

        /* renamed from: e  reason: collision with root package name */
        private int f31589e;

        /* renamed from: f  reason: collision with root package name */
        private int f31590f;

        public b(af.f source) {
            kotlin.jvm.internal.m.e(source, "source");
            this.f31585a = source;
        }

        private final void b() {
            int i10 = this.f31588d;
            int I = oe.d.I(this.f31585a);
            this.f31589e = I;
            this.f31586b = I;
            int d10 = oe.d.d(this.f31585a.readByte(), KotlinVersion.MAX_COMPONENT_VALUE);
            this.f31587c = oe.d.d(this.f31585a.readByte(), KotlinVersion.MAX_COMPONENT_VALUE);
            a aVar = h.f31579e;
            if (aVar.a().isLoggable(Level.FINE)) {
                aVar.a().fine(e.f31469a.c(true, this.f31588d, this.f31586b, d10, this.f31587c));
            }
            int readInt = this.f31585a.readInt() & Integer.MAX_VALUE;
            this.f31588d = readInt;
            if (d10 == 9) {
                if (readInt == i10) {
                    return;
                }
                throw new IOException("TYPE_CONTINUATION streamId changed");
            }
            throw new IOException(d10 + " != TYPE_CONTINUATION");
        }

        @Override // af.a1
        public long L0(af.d sink, long j10) {
            kotlin.jvm.internal.m.e(sink, "sink");
            while (true) {
                int i10 = this.f31589e;
                if (i10 == 0) {
                    this.f31585a.skip(this.f31590f);
                    this.f31590f = 0;
                    if ((this.f31587c & 4) != 0) {
                        return -1L;
                    }
                    b();
                } else {
                    long L0 = this.f31585a.L0(sink, Math.min(j10, i10));
                    if (L0 == -1) {
                        return -1L;
                    }
                    this.f31589e -= (int) L0;
                    return L0;
                }
            }
        }

        public final int a() {
            return this.f31589e;
        }

        public final void c(int i10) {
            this.f31587c = i10;
        }

        @Override // af.a1, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        public final void e(int i10) {
            this.f31589e = i10;
        }

        public final void f(int i10) {
            this.f31586b = i10;
        }

        public final void g(int i10) {
            this.f31590f = i10;
        }

        public final void h(int i10) {
            this.f31588d = i10;
        }

        @Override // af.a1
        public b1 n() {
            return this.f31585a.n();
        }
    }

    /* loaded from: classes2.dex */
    public interface c {
        void a();

        void b(boolean z10, int i10, int i11, List list);

        void d(int i10, long j10);

        void f(boolean z10, int i10, int i11);

        void g(int i10, ve.b bVar);

        void h(int i10, int i11, int i12, boolean z10);

        void i(int i10, ve.b bVar, af.g gVar);

        void k(boolean z10, m mVar);

        void l(int i10, int i11, List list);

        void m(boolean z10, int i10, af.f fVar, int i11);
    }

    static {
        Logger logger = Logger.getLogger(e.class.getName());
        kotlin.jvm.internal.m.d(logger, "getLogger(Http2::class.java.name)");
        f31580f = logger;
    }

    public h(af.f source, boolean z10) {
        kotlin.jvm.internal.m.e(source, "source");
        this.f31581a = source;
        this.f31582b = z10;
        b bVar = new b(source);
        this.f31583c = bVar;
        this.f31584d = new d.a(bVar, Base64Utils.IO_BUFFER_SIZE, 0, 4, null);
    }

    private final void e(c cVar, int i10, int i11, int i12) {
        boolean z10;
        if (i12 != 0) {
            int i13 = 0;
            boolean z11 = true;
            if ((i11 & 1) != 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            if ((i11 & 32) == 0) {
                z11 = false;
            }
            if (!z11) {
                if ((i11 & 8) != 0) {
                    i13 = oe.d.d(this.f31581a.readByte(), KotlinVersion.MAX_COMPONENT_VALUE);
                }
                cVar.m(z10, i12, this.f31581a, f31579e.b(i10, i11, i13));
                this.f31581a.skip(i13);
                return;
            }
            throw new IOException("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA");
        }
        throw new IOException("PROTOCOL_ERROR: TYPE_DATA streamId == 0");
    }

    private final void f(c cVar, int i10, int i11, int i12) {
        if (i10 >= 8) {
            if (i12 == 0) {
                int readInt = this.f31581a.readInt();
                int readInt2 = this.f31581a.readInt();
                int i13 = i10 - 8;
                ve.b a10 = ve.b.f31421b.a(readInt2);
                if (a10 != null) {
                    af.g gVar = af.g.f388e;
                    if (i13 > 0) {
                        gVar = this.f31581a.D(i13);
                    }
                    cVar.i(readInt, a10, gVar);
                    return;
                }
                throw new IOException(kotlin.jvm.internal.m.l("TYPE_GOAWAY unexpected error code: ", Integer.valueOf(readInt2)));
            }
            throw new IOException("TYPE_GOAWAY streamId != 0");
        }
        throw new IOException(kotlin.jvm.internal.m.l("TYPE_GOAWAY length < 8: ", Integer.valueOf(i10)));
    }

    private final List g(int i10, int i11, int i12, int i13) {
        this.f31583c.e(i10);
        b bVar = this.f31583c;
        bVar.f(bVar.a());
        this.f31583c.g(i11);
        this.f31583c.c(i12);
        this.f31583c.h(i13);
        this.f31584d.k();
        return this.f31584d.e();
    }

    private final void h(c cVar, int i10, int i11, int i12) {
        boolean z10;
        if (i12 != 0) {
            int i13 = 0;
            if ((i11 & 1) != 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            if ((i11 & 8) != 0) {
                i13 = oe.d.d(this.f31581a.readByte(), KotlinVersion.MAX_COMPONENT_VALUE);
            }
            if ((i11 & 32) != 0) {
                k(cVar, i12);
                i10 -= 5;
            }
            cVar.b(z10, i12, -1, g(f31579e.b(i10, i11, i13), i13, i11, i12));
            return;
        }
        throw new IOException("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0");
    }

    private final void j(c cVar, int i10, int i11, int i12) {
        if (i10 == 8) {
            if (i12 == 0) {
                int readInt = this.f31581a.readInt();
                int readInt2 = this.f31581a.readInt();
                boolean z10 = true;
                if ((i11 & 1) == 0) {
                    z10 = false;
                }
                cVar.f(z10, readInt, readInt2);
                return;
            }
            throw new IOException("TYPE_PING streamId != 0");
        }
        throw new IOException(kotlin.jvm.internal.m.l("TYPE_PING length != 8: ", Integer.valueOf(i10)));
    }

    private final void k(c cVar, int i10) {
        boolean z10;
        int readInt = this.f31581a.readInt();
        if ((Integer.MIN_VALUE & readInt) != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        cVar.h(i10, readInt & Integer.MAX_VALUE, oe.d.d(this.f31581a.readByte(), KotlinVersion.MAX_COMPONENT_VALUE) + 1, z10);
    }

    private final void q(c cVar, int i10, int i11, int i12) {
        if (i10 == 5) {
            if (i12 != 0) {
                k(cVar, i12);
                return;
            }
            throw new IOException("TYPE_PRIORITY streamId == 0");
        }
        throw new IOException("TYPE_PRIORITY length: " + i10 + " != 5");
    }

    private final void s(c cVar, int i10, int i11, int i12) {
        int i13;
        if (i12 != 0) {
            if ((i11 & 8) != 0) {
                i13 = oe.d.d(this.f31581a.readByte(), KotlinVersion.MAX_COMPONENT_VALUE);
            } else {
                i13 = 0;
            }
            cVar.l(i12, this.f31581a.readInt() & Integer.MAX_VALUE, g(f31579e.b(i10 - 4, i11, i13), i13, i11, i12));
            return;
        }
        throw new IOException("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0");
    }

    private final void u(c cVar, int i10, int i11, int i12) {
        if (i10 == 4) {
            if (i12 != 0) {
                int readInt = this.f31581a.readInt();
                ve.b a10 = ve.b.f31421b.a(readInt);
                if (a10 != null) {
                    cVar.g(i12, a10);
                    return;
                }
                throw new IOException(kotlin.jvm.internal.m.l("TYPE_RST_STREAM unexpected error code: ", Integer.valueOf(readInt)));
            }
            throw new IOException("TYPE_RST_STREAM streamId == 0");
        }
        throw new IOException("TYPE_RST_STREAM length: " + i10 + " != 4");
    }

    private final void v(c cVar, int i10, int i11, int i12) {
        od.c k10;
        od.a i13;
        int readInt;
        if (i12 == 0) {
            if ((i11 & 1) != 0) {
                if (i10 == 0) {
                    cVar.a();
                    return;
                }
                throw new IOException("FRAME_SIZE_ERROR ack frame should be empty!");
            } else if (i10 % 6 == 0) {
                m mVar = new m();
                k10 = od.i.k(0, i10);
                i13 = od.i.i(k10, 6);
                int g10 = i13.g();
                int i14 = i13.i();
                int l10 = i13.l();
                if ((l10 > 0 && g10 <= i14) || (l10 < 0 && i14 <= g10)) {
                    while (true) {
                        int i15 = g10 + l10;
                        int e10 = oe.d.e(this.f31581a.readShort(), 65535);
                        readInt = this.f31581a.readInt();
                        if (e10 != 2) {
                            if (e10 != 3) {
                                if (e10 != 4) {
                                    if (e10 == 5 && (readInt < 16384 || readInt > 16777215)) {
                                        break;
                                    }
                                } else if (readInt >= 0) {
                                    e10 = 7;
                                } else {
                                    throw new IOException("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1");
                                }
                            } else {
                                e10 = 4;
                            }
                        } else if (readInt != 0 && readInt != 1) {
                            throw new IOException("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1");
                        }
                        mVar.h(e10, readInt);
                        if (g10 == i14) {
                            break;
                        }
                        g10 = i15;
                    }
                    throw new IOException(kotlin.jvm.internal.m.l("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: ", Integer.valueOf(readInt)));
                }
                cVar.k(false, mVar);
                return;
            } else {
                throw new IOException(kotlin.jvm.internal.m.l("TYPE_SETTINGS length % 6 != 0: ", Integer.valueOf(i10)));
            }
        }
        throw new IOException("TYPE_SETTINGS streamId != 0");
    }

    private final void w(c cVar, int i10, int i11, int i12) {
        if (i10 == 4) {
            long f10 = oe.d.f(this.f31581a.readInt(), 2147483647L);
            if (f10 != 0) {
                cVar.d(i12, f10);
                return;
            }
            throw new IOException("windowSizeIncrement was 0");
        }
        throw new IOException(kotlin.jvm.internal.m.l("TYPE_WINDOW_UPDATE length !=4: ", Integer.valueOf(i10)));
    }

    public final boolean b(boolean z10, c handler) {
        kotlin.jvm.internal.m.e(handler, "handler");
        try {
            this.f31581a.O0(9L);
            int I = oe.d.I(this.f31581a);
            if (I <= 16384) {
                int d10 = oe.d.d(this.f31581a.readByte(), KotlinVersion.MAX_COMPONENT_VALUE);
                int d11 = oe.d.d(this.f31581a.readByte(), KotlinVersion.MAX_COMPONENT_VALUE);
                int readInt = this.f31581a.readInt() & Integer.MAX_VALUE;
                Logger logger = f31580f;
                if (logger.isLoggable(Level.FINE)) {
                    logger.fine(e.f31469a.c(true, readInt, I, d10, d11));
                }
                if (z10 && d10 != 4) {
                    throw new IOException(kotlin.jvm.internal.m.l("Expected a SETTINGS frame but was ", e.f31469a.b(d10)));
                }
                switch (d10) {
                    case 0:
                        e(handler, I, d11, readInt);
                        return true;
                    case 1:
                        h(handler, I, d11, readInt);
                        return true;
                    case 2:
                        q(handler, I, d11, readInt);
                        return true;
                    case 3:
                        u(handler, I, d11, readInt);
                        return true;
                    case 4:
                        v(handler, I, d11, readInt);
                        return true;
                    case 5:
                        s(handler, I, d11, readInt);
                        return true;
                    case 6:
                        j(handler, I, d11, readInt);
                        return true;
                    case 7:
                        f(handler, I, d11, readInt);
                        return true;
                    case 8:
                        w(handler, I, d11, readInt);
                        return true;
                    default:
                        this.f31581a.skip(I);
                        return true;
                }
            }
            throw new IOException(kotlin.jvm.internal.m.l("FRAME_SIZE_ERROR: ", Integer.valueOf(I)));
        } catch (EOFException unused) {
            return false;
        }
    }

    public final void c(c handler) {
        kotlin.jvm.internal.m.e(handler, "handler");
        if (this.f31582b) {
            if (!b(true, handler)) {
                throw new IOException("Required SETTINGS preface not received");
            }
            return;
        }
        af.f fVar = this.f31581a;
        af.g gVar = e.f31470b;
        af.g D = fVar.D(gVar.size());
        Logger logger = f31580f;
        if (logger.isLoggable(Level.FINE)) {
            logger.fine(oe.d.s(kotlin.jvm.internal.m.l("<< CONNECTION ", D.p()), new Object[0]));
        }
        if (kotlin.jvm.internal.m.a(gVar, D)) {
            return;
        }
        throw new IOException(kotlin.jvm.internal.m.l("Expected a connection header but was ", D.H()));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f31581a.close();
    }
}
