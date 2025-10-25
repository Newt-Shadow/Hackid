package d3;

import android.media.AudioTrack;
import android.os.SystemClock;
import io.flutter.embedding.android.KeyboardMap;
import java.lang.reflect.Method;
/* loaded from: classes.dex */
final class y {
    private long A;
    private long B;
    private long C;
    private long D;
    private boolean E;
    private long F;
    private long G;

    /* renamed from: a  reason: collision with root package name */
    private final a f14666a;

    /* renamed from: b  reason: collision with root package name */
    private final long[] f14667b;

    /* renamed from: c  reason: collision with root package name */
    private AudioTrack f14668c;

    /* renamed from: d  reason: collision with root package name */
    private int f14669d;

    /* renamed from: e  reason: collision with root package name */
    private int f14670e;

    /* renamed from: f  reason: collision with root package name */
    private x f14671f;

    /* renamed from: g  reason: collision with root package name */
    private int f14672g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f14673h;

    /* renamed from: i  reason: collision with root package name */
    private long f14674i;

    /* renamed from: j  reason: collision with root package name */
    private float f14675j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f14676k;

    /* renamed from: l  reason: collision with root package name */
    private long f14677l;

    /* renamed from: m  reason: collision with root package name */
    private long f14678m;

    /* renamed from: n  reason: collision with root package name */
    private Method f14679n;

    /* renamed from: o  reason: collision with root package name */
    private long f14680o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f14681p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f14682q;

    /* renamed from: r  reason: collision with root package name */
    private long f14683r;

    /* renamed from: s  reason: collision with root package name */
    private long f14684s;

    /* renamed from: t  reason: collision with root package name */
    private long f14685t;

    /* renamed from: u  reason: collision with root package name */
    private long f14686u;

    /* renamed from: v  reason: collision with root package name */
    private long f14687v;

    /* renamed from: w  reason: collision with root package name */
    private int f14688w;

    /* renamed from: x  reason: collision with root package name */
    private int f14689x;

    /* renamed from: y  reason: collision with root package name */
    private long f14690y;

    /* renamed from: z  reason: collision with root package name */
    private long f14691z;

    /* loaded from: classes.dex */
    public interface a {
        void a(int i10, long j10);

        void b(long j10);

        void c(long j10);

        void d(long j10, long j11, long j12, long j13);

        void e(long j10, long j11, long j12, long j13);
    }

    public y(a aVar) {
        this.f14666a = (a) y4.a.e(aVar);
        if (y4.q0.f32946a >= 18) {
            try {
                this.f14679n = AudioTrack.class.getMethod("getLatency", null);
            } catch (NoSuchMethodException unused) {
            }
        }
        this.f14667b = new long[10];
    }

    private boolean a() {
        if (this.f14673h && ((AudioTrack) y4.a.e(this.f14668c)).getPlayState() == 2 && e() == 0) {
            return true;
        }
        return false;
    }

    private long b(long j10) {
        return (j10 * 1000000) / this.f14672g;
    }

    private long e() {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long j10 = this.f14690y;
        if (j10 != -9223372036854775807L) {
            return Math.min(this.B, this.A + ((y4.q0.Z((elapsedRealtime * 1000) - j10, this.f14675j) * this.f14672g) / 1000000));
        }
        if (elapsedRealtime - this.f14684s >= 5) {
            v(elapsedRealtime);
            this.f14684s = elapsedRealtime;
        }
        return this.f14685t + (this.f14686u << 32);
    }

    private long f() {
        return b(e());
    }

    private void l(long j10) {
        x xVar = (x) y4.a.e(this.f14671f);
        if (!xVar.e(j10)) {
            return;
        }
        long c10 = xVar.c();
        long b10 = xVar.b();
        long f10 = f();
        if (Math.abs(c10 - j10) > 5000000) {
            this.f14666a.e(b10, c10, j10, f10);
            xVar.f();
        } else if (Math.abs(b(b10) - f10) > 5000000) {
            this.f14666a.d(b10, c10, j10, f10);
            xVar.f();
        } else {
            xVar.a();
        }
    }

    private void m() {
        long nanoTime = System.nanoTime() / 1000;
        if (nanoTime - this.f14678m >= 30000) {
            long f10 = f();
            if (f10 == 0) {
                return;
            }
            this.f14667b[this.f14688w] = y4.q0.e0(f10, this.f14675j) - nanoTime;
            this.f14688w = (this.f14688w + 1) % 10;
            int i10 = this.f14689x;
            if (i10 < 10) {
                this.f14689x = i10 + 1;
            }
            this.f14678m = nanoTime;
            this.f14677l = 0L;
            int i11 = 0;
            while (true) {
                int i12 = this.f14689x;
                if (i11 >= i12) {
                    break;
                }
                this.f14677l += this.f14667b[i11] / i12;
                i11++;
            }
        }
        if (this.f14673h) {
            return;
        }
        l(nanoTime);
        n(nanoTime);
    }

    private void n(long j10) {
        Method method;
        if (this.f14682q && (method = this.f14679n) != null && j10 - this.f14683r >= 500000) {
            try {
                long intValue = (((Integer) y4.q0.j((Integer) method.invoke(y4.a.e(this.f14668c), new Object[0]))).intValue() * 1000) - this.f14674i;
                this.f14680o = intValue;
                long max = Math.max(intValue, 0L);
                this.f14680o = max;
                if (max > 5000000) {
                    this.f14666a.c(max);
                    this.f14680o = 0L;
                }
            } catch (Exception unused) {
                this.f14679n = null;
            }
            this.f14683r = j10;
        }
    }

    private static boolean o(int i10) {
        if (y4.q0.f32946a < 23 && (i10 == 5 || i10 == 6)) {
            return true;
        }
        return false;
    }

    private void r() {
        this.f14677l = 0L;
        this.f14689x = 0;
        this.f14688w = 0;
        this.f14678m = 0L;
        this.D = 0L;
        this.G = 0L;
        this.f14676k = false;
    }

    private void v(long j10) {
        AudioTrack audioTrack;
        int playState = ((AudioTrack) y4.a.e(this.f14668c)).getPlayState();
        if (playState == 1) {
            return;
        }
        long playbackHeadPosition = audioTrack.getPlaybackHeadPosition() & KeyboardMap.kValueMask;
        if (this.f14673h) {
            if (playState == 2 && playbackHeadPosition == 0) {
                this.f14687v = this.f14685t;
            }
            playbackHeadPosition += this.f14687v;
        }
        if (y4.q0.f32946a <= 29) {
            if (playbackHeadPosition == 0 && this.f14685t > 0 && playState == 3) {
                if (this.f14691z == -9223372036854775807L) {
                    this.f14691z = j10;
                    return;
                }
                return;
            }
            this.f14691z = -9223372036854775807L;
        }
        if (this.f14685t > playbackHeadPosition) {
            this.f14686u++;
        }
        this.f14685t = playbackHeadPosition;
    }

    public int c(long j10) {
        return this.f14670e - ((int) (j10 - (e() * this.f14669d)));
    }

    public long d(boolean z10) {
        long Z;
        if (((AudioTrack) y4.a.e(this.f14668c)).getPlayState() == 3) {
            m();
        }
        long nanoTime = System.nanoTime() / 1000;
        x xVar = (x) y4.a.e(this.f14671f);
        boolean d10 = xVar.d();
        if (d10) {
            Z = b(xVar.b()) + y4.q0.Z(nanoTime - xVar.c(), this.f14675j);
        } else {
            if (this.f14689x == 0) {
                Z = f();
            } else {
                Z = y4.q0.Z(this.f14677l + nanoTime, this.f14675j);
            }
            if (!z10) {
                Z = Math.max(0L, Z - this.f14680o);
            }
        }
        if (this.E != d10) {
            this.G = this.D;
            this.F = this.C;
        }
        long j10 = nanoTime - this.G;
        if (j10 < 1000000) {
            long j11 = (j10 * 1000) / 1000000;
            Z = ((Z * j11) + ((1000 - j11) * (this.F + y4.q0.Z(j10, this.f14675j)))) / 1000;
        }
        if (!this.f14676k) {
            long j12 = this.C;
            if (Z > j12) {
                this.f14676k = true;
                this.f14666a.b(System.currentTimeMillis() - y4.q0.X0(y4.q0.e0(y4.q0.X0(Z - j12), this.f14675j)));
            }
        }
        this.D = nanoTime;
        this.C = Z;
        this.E = d10;
        return Z;
    }

    public void g(long j10) {
        this.A = e();
        this.f14690y = SystemClock.elapsedRealtime() * 1000;
        this.B = j10;
    }

    public boolean h(long j10) {
        if (j10 <= e() && !a()) {
            return false;
        }
        return true;
    }

    public boolean i() {
        if (((AudioTrack) y4.a.e(this.f14668c)).getPlayState() == 3) {
            return true;
        }
        return false;
    }

    public boolean j(long j10) {
        if (this.f14691z != -9223372036854775807L && j10 > 0 && SystemClock.elapsedRealtime() - this.f14691z >= 200) {
            return true;
        }
        return false;
    }

    public boolean k(long j10) {
        int playState = ((AudioTrack) y4.a.e(this.f14668c)).getPlayState();
        if (this.f14673h) {
            if (playState == 2) {
                this.f14681p = false;
                return false;
            } else if (playState == 1 && e() == 0) {
                return false;
            }
        }
        boolean z10 = this.f14681p;
        boolean h10 = h(j10);
        this.f14681p = h10;
        if (z10 && !h10 && playState != 1) {
            this.f14666a.a(this.f14670e, y4.q0.X0(this.f14674i));
        }
        return true;
    }

    public boolean p() {
        r();
        if (this.f14690y == -9223372036854775807L) {
            ((x) y4.a.e(this.f14671f)).g();
            return true;
        }
        return false;
    }

    public void q() {
        r();
        this.f14668c = null;
        this.f14671f = null;
    }

    public void s(AudioTrack audioTrack, boolean z10, int i10, int i11, int i12) {
        boolean z11;
        long j10;
        this.f14668c = audioTrack;
        this.f14669d = i11;
        this.f14670e = i12;
        this.f14671f = new x(audioTrack);
        this.f14672g = audioTrack.getSampleRate();
        if (z10 && o(i10)) {
            z11 = true;
        } else {
            z11 = false;
        }
        this.f14673h = z11;
        boolean t02 = y4.q0.t0(i10);
        this.f14682q = t02;
        if (t02) {
            j10 = b(i12 / i11);
        } else {
            j10 = -9223372036854775807L;
        }
        this.f14674i = j10;
        this.f14685t = 0L;
        this.f14686u = 0L;
        this.f14687v = 0L;
        this.f14681p = false;
        this.f14690y = -9223372036854775807L;
        this.f14691z = -9223372036854775807L;
        this.f14683r = 0L;
        this.f14680o = 0L;
        this.f14675j = 1.0f;
    }

    public void t(float f10) {
        this.f14675j = f10;
        x xVar = this.f14671f;
        if (xVar != null) {
            xVar.g();
        }
        r();
    }

    public void u() {
        ((x) y4.a.e(this.f14671f)).g();
    }
}
