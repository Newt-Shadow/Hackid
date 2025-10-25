package ve;

import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.KotlinVersion;
import kotlin.jvm.internal.DefaultConstructorMarker;
import ve.d;
/* loaded from: classes2.dex */
public final class j implements Closeable {

    /* renamed from: g  reason: collision with root package name */
    public static final a f31619g = new a(null);

    /* renamed from: h  reason: collision with root package name */
    private static final Logger f31620h = Logger.getLogger(e.class.getName());

    /* renamed from: a  reason: collision with root package name */
    private final af.e f31621a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f31622b;

    /* renamed from: c  reason: collision with root package name */
    private final af.d f31623c;

    /* renamed from: d  reason: collision with root package name */
    private int f31624d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f31625e;

    /* renamed from: f  reason: collision with root package name */
    private final d.b f31626f;

    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public j(af.e sink, boolean z10) {
        kotlin.jvm.internal.m.e(sink, "sink");
        this.f31621a = sink;
        this.f31622b = z10;
        af.d dVar = new af.d();
        this.f31623c = dVar;
        this.f31624d = 16384;
        this.f31626f = new d.b(0, false, dVar, 3, null);
    }

    private final void w(int i10, long j10) {
        int i11;
        while (j10 > 0) {
            long min = Math.min(this.f31624d, j10);
            j10 -= min;
            int i12 = (int) min;
            if (j10 == 0) {
                i11 = 4;
            } else {
                i11 = 0;
            }
            f(i10, i12, 9, i11);
            this.f31621a.c0(this.f31623c, min);
        }
    }

    public final synchronized void a(m peerSettings) {
        kotlin.jvm.internal.m.e(peerSettings, "peerSettings");
        if (!this.f31625e) {
            this.f31624d = peerSettings.e(this.f31624d);
            if (peerSettings.b() != -1) {
                this.f31626f.e(peerSettings.b());
            }
            f(0, 0, 4, 1);
            this.f31621a.flush();
        } else {
            throw new IOException("closed");
        }
    }

    public final synchronized void b() {
        if (!this.f31625e) {
            if (!this.f31622b) {
                return;
            }
            Logger logger = f31620h;
            if (logger.isLoggable(Level.FINE)) {
                logger.fine(oe.d.s(kotlin.jvm.internal.m.l(">> CONNECTION ", e.f31470b.p()), new Object[0]));
            }
            this.f31621a.s0(e.f31470b);
            this.f31621a.flush();
            return;
        }
        throw new IOException("closed");
    }

    public final synchronized void c(boolean z10, int i10, af.d dVar, int i11) {
        if (!this.f31625e) {
            e(i10, z10 ? 1 : 0, dVar, i11);
        } else {
            throw new IOException("closed");
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        this.f31625e = true;
        this.f31621a.close();
    }

    public final void e(int i10, int i11, af.d dVar, int i12) {
        f(i10, i12, 0, i11);
        if (i12 > 0) {
            af.e eVar = this.f31621a;
            kotlin.jvm.internal.m.b(dVar);
            eVar.c0(dVar, i12);
        }
    }

    public final void f(int i10, int i11, int i12, int i13) {
        boolean z10;
        Logger logger = f31620h;
        if (logger.isLoggable(Level.FINE)) {
            logger.fine(e.f31469a.c(false, i10, i11, i12, i13));
        }
        boolean z11 = true;
        if (i11 <= this.f31624d) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            if ((Integer.MIN_VALUE & i10) != 0) {
                z11 = false;
            }
            if (z11) {
                oe.d.Y(this.f31621a, i11);
                this.f31621a.O(i12 & KotlinVersion.MAX_COMPONENT_VALUE);
                this.f31621a.O(i13 & KotlinVersion.MAX_COMPONENT_VALUE);
                this.f31621a.K(i10 & Integer.MAX_VALUE);
                return;
            }
            throw new IllegalArgumentException(kotlin.jvm.internal.m.l("reserved bit set: ", Integer.valueOf(i10)).toString());
        }
        throw new IllegalArgumentException(("FRAME_SIZE_ERROR length > " + this.f31624d + ": " + i11).toString());
    }

    public final synchronized void flush() {
        if (!this.f31625e) {
            this.f31621a.flush();
        } else {
            throw new IOException("closed");
        }
    }

    public final synchronized void g(int i10, b errorCode, byte[] debugData) {
        boolean z10;
        kotlin.jvm.internal.m.e(errorCode, "errorCode");
        kotlin.jvm.internal.m.e(debugData, "debugData");
        if (!this.f31625e) {
            boolean z11 = false;
            if (errorCode.b() != -1) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (z10) {
                f(0, debugData.length + 8, 7, 0);
                this.f31621a.K(i10);
                this.f31621a.K(errorCode.b());
                if (debugData.length == 0) {
                    z11 = true;
                }
                if (!z11) {
                    this.f31621a.C0(debugData);
                }
                this.f31621a.flush();
            } else {
                throw new IllegalArgumentException("errorCode.httpCode == -1".toString());
            }
        } else {
            throw new IOException("closed");
        }
    }

    public final synchronized void h(boolean z10, int i10, List headerBlock) {
        int i11;
        kotlin.jvm.internal.m.e(headerBlock, "headerBlock");
        if (!this.f31625e) {
            this.f31626f.g(headerBlock);
            long k02 = this.f31623c.k0();
            long min = Math.min(this.f31624d, k02);
            int i12 = (k02 > min ? 1 : (k02 == min ? 0 : -1));
            if (i12 == 0) {
                i11 = 4;
            } else {
                i11 = 0;
            }
            if (z10) {
                i11 |= 1;
            }
            f(i10, (int) min, 1, i11);
            this.f31621a.c0(this.f31623c, min);
            if (i12 > 0) {
                w(i10, k02 - min);
            }
        } else {
            throw new IOException("closed");
        }
    }

    public final int j() {
        return this.f31624d;
    }

    public final synchronized void k(boolean z10, int i10, int i11) {
        int i12;
        if (!this.f31625e) {
            if (z10) {
                i12 = 1;
            } else {
                i12 = 0;
            }
            f(0, 8, 6, i12);
            this.f31621a.K(i10);
            this.f31621a.K(i11);
            this.f31621a.flush();
        } else {
            throw new IOException("closed");
        }
    }

    public final synchronized void q(int i10, int i11, List requestHeaders) {
        int i12;
        kotlin.jvm.internal.m.e(requestHeaders, "requestHeaders");
        if (!this.f31625e) {
            this.f31626f.g(requestHeaders);
            long k02 = this.f31623c.k0();
            int min = (int) Math.min(this.f31624d - 4, k02);
            int i13 = min + 4;
            long j10 = min;
            int i14 = (k02 > j10 ? 1 : (k02 == j10 ? 0 : -1));
            if (i14 == 0) {
                i12 = 4;
            } else {
                i12 = 0;
            }
            f(i10, i13, 5, i12);
            this.f31621a.K(i11 & Integer.MAX_VALUE);
            this.f31621a.c0(this.f31623c, j10);
            if (i14 > 0) {
                w(i10, k02 - j10);
            }
        } else {
            throw new IOException("closed");
        }
    }

    public final synchronized void s(int i10, b errorCode) {
        boolean z10;
        kotlin.jvm.internal.m.e(errorCode, "errorCode");
        if (!this.f31625e) {
            if (errorCode.b() != -1) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (z10) {
                f(i10, 4, 3, 0);
                this.f31621a.K(errorCode.b());
                this.f31621a.flush();
            } else {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
        } else {
            throw new IOException("closed");
        }
    }

    public final synchronized void u(m settings) {
        int i10;
        kotlin.jvm.internal.m.e(settings, "settings");
        if (!this.f31625e) {
            int i11 = 0;
            f(0, settings.i() * 6, 4, 0);
            while (i11 < 10) {
                int i12 = i11 + 1;
                if (settings.f(i11)) {
                    if (i11 != 4) {
                        if (i11 != 7) {
                            i10 = i11;
                        } else {
                            i10 = 4;
                        }
                    } else {
                        i10 = 3;
                    }
                    this.f31621a.F(i10);
                    this.f31621a.K(settings.a(i11));
                }
                i11 = i12;
            }
            this.f31621a.flush();
        } else {
            throw new IOException("closed");
        }
    }

    public final synchronized void v(int i10, long j10) {
        boolean z10;
        if (!this.f31625e) {
            if (j10 != 0 && j10 <= 2147483647L) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (z10) {
                f(i10, 4, 8, 0);
                this.f31621a.K((int) j10);
                this.f31621a.flush();
            } else {
                throw new IllegalArgumentException(kotlin.jvm.internal.m.l("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: ", Long.valueOf(j10)).toString());
            }
        } else {
            throw new IOException("closed");
        }
    }
}
