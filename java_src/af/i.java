package af;

import java.io.Closeable;
import java.util.concurrent.locks.ReentrantLock;
/* loaded from: classes2.dex */
public abstract class i implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f395a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f396b;

    /* renamed from: c  reason: collision with root package name */
    private int f397c;

    /* renamed from: d  reason: collision with root package name */
    private final ReentrantLock f398d = e1.b();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class a implements y0 {

        /* renamed from: a  reason: collision with root package name */
        private final i f399a;

        /* renamed from: b  reason: collision with root package name */
        private long f400b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f401c;

        public a(i fileHandle, long j10) {
            kotlin.jvm.internal.m.e(fileHandle, "fileHandle");
            this.f399a = fileHandle;
            this.f400b = j10;
        }

        @Override // af.y0
        public void c0(d source, long j10) {
            kotlin.jvm.internal.m.e(source, "source");
            if (!this.f401c) {
                this.f399a.E(this.f400b, source, j10);
                this.f400b += j10;
                return;
            }
            throw new IllegalStateException("closed".toString());
        }

        @Override // af.y0, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.f401c) {
                return;
            }
            this.f401c = true;
            ReentrantLock g10 = this.f399a.g();
            g10.lock();
            try {
                i iVar = this.f399a;
                iVar.f397c--;
                if (this.f399a.f397c == 0 && this.f399a.f396b) {
                    xc.t tVar = xc.t.f32733a;
                    g10.unlock();
                    this.f399a.h();
                }
            } finally {
                g10.unlock();
            }
        }

        @Override // af.y0, java.io.Flushable
        public void flush() {
            if (!this.f401c) {
                this.f399a.j();
                return;
            }
            throw new IllegalStateException("closed".toString());
        }

        @Override // af.y0
        public b1 n() {
            return b1.f354e;
        }
    }

    /* loaded from: classes2.dex */
    private static final class b implements a1 {

        /* renamed from: a  reason: collision with root package name */
        private final i f402a;

        /* renamed from: b  reason: collision with root package name */
        private long f403b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f404c;

        public b(i fileHandle, long j10) {
            kotlin.jvm.internal.m.e(fileHandle, "fileHandle");
            this.f402a = fileHandle;
            this.f403b = j10;
        }

        @Override // af.a1
        public long L0(d sink, long j10) {
            kotlin.jvm.internal.m.e(sink, "sink");
            if (!this.f404c) {
                long u10 = this.f402a.u(this.f403b, sink, j10);
                if (u10 != -1) {
                    this.f403b += u10;
                }
                return u10;
            }
            throw new IllegalStateException("closed".toString());
        }

        @Override // af.a1, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.f404c) {
                return;
            }
            this.f404c = true;
            ReentrantLock g10 = this.f402a.g();
            g10.lock();
            try {
                i iVar = this.f402a;
                iVar.f397c--;
                if (this.f402a.f397c == 0 && this.f402a.f396b) {
                    xc.t tVar = xc.t.f32733a;
                    g10.unlock();
                    this.f402a.h();
                }
            } finally {
                g10.unlock();
            }
        }

        @Override // af.a1
        public b1 n() {
            return b1.f354e;
        }
    }

    public i(boolean z10) {
        this.f395a = z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void E(long j10, d dVar, long j11) {
        af.b.b(dVar.k0(), 0L, j11);
        long j12 = j11 + j10;
        while (j10 < j12) {
            v0 v0Var = dVar.f371a;
            kotlin.jvm.internal.m.b(v0Var);
            int min = (int) Math.min(j12 - j10, v0Var.f457c - v0Var.f456b);
            s(j10, v0Var.f455a, v0Var.f456b, min);
            v0Var.f456b += min;
            long j13 = min;
            j10 += j13;
            dVar.d0(dVar.k0() - j13);
            if (v0Var.f456b == v0Var.f457c) {
                dVar.f371a = v0Var.b();
                w0.b(v0Var);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long u(long j10, d dVar, long j11) {
        boolean z10;
        int i10;
        if (j11 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            long j12 = j10 + j11;
            long j13 = j10;
            while (true) {
                if (j13 >= j12) {
                    break;
                }
                v0 J0 = dVar.J0(1);
                int k10 = k(j13, J0.f455a, J0.f457c, (int) Math.min(j12 - j13, 8192 - i10));
                if (k10 == -1) {
                    if (J0.f456b == J0.f457c) {
                        dVar.f371a = J0.b();
                        w0.b(J0);
                    }
                    if (j10 == j13) {
                        return -1L;
                    }
                } else {
                    J0.f457c += k10;
                    long j14 = k10;
                    j13 += j14;
                    dVar.d0(dVar.k0() + j14);
                }
            }
            return j13 - j10;
        }
        throw new IllegalArgumentException(("byteCount < 0: " + j11).toString());
    }

    public static /* synthetic */ y0 w(i iVar, long j10, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 1) != 0) {
                j10 = 0;
            }
            return iVar.v(j10);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: sink");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        ReentrantLock reentrantLock = this.f398d;
        reentrantLock.lock();
        try {
            if (this.f396b) {
                return;
            }
            this.f396b = true;
            if (this.f397c != 0) {
                return;
            }
            xc.t tVar = xc.t.f32733a;
            reentrantLock.unlock();
            h();
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void flush() {
        if (this.f395a) {
            ReentrantLock reentrantLock = this.f398d;
            reentrantLock.lock();
            try {
                if (!this.f396b) {
                    xc.t tVar = xc.t.f32733a;
                    reentrantLock.unlock();
                    j();
                    return;
                }
                throw new IllegalStateException("closed".toString());
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
        throw new IllegalStateException("file handle is read-only".toString());
    }

    public final ReentrantLock g() {
        return this.f398d;
    }

    protected abstract void h();

    protected abstract void j();

    protected abstract int k(long j10, byte[] bArr, int i10, int i11);

    protected abstract long q();

    protected abstract void s(long j10, byte[] bArr, int i10, int i11);

    public final y0 v(long j10) {
        if (this.f395a) {
            ReentrantLock reentrantLock = this.f398d;
            reentrantLock.lock();
            try {
                if (!this.f396b) {
                    this.f397c++;
                    reentrantLock.unlock();
                    return new a(this, j10);
                }
                throw new IllegalStateException("closed".toString());
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
        throw new IllegalStateException("file handle is read-only".toString());
    }

    public final long x() {
        ReentrantLock reentrantLock = this.f398d;
        reentrantLock.lock();
        try {
            if (!this.f396b) {
                xc.t tVar = xc.t.f32733a;
                reentrantLock.unlock();
                return q();
            }
            throw new IllegalStateException("closed".toString());
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public final a1 z(long j10) {
        ReentrantLock reentrantLock = this.f398d;
        reentrantLock.lock();
        try {
            if (!this.f396b) {
                this.f397c++;
                reentrantLock.unlock();
                return new b(this, j10);
            }
            throw new IllegalStateException("closed".toString());
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }
}
