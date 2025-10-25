package b3;

import com.arthenica.ffmpegkit.AbstractSession;
import com.google.android.play.core.review.model.ReviewErrorCode;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
/* loaded from: classes.dex */
public class u implements d2 {

    /* renamed from: a  reason: collision with root package name */
    private final x4.o f4443a;

    /* renamed from: b  reason: collision with root package name */
    private final long f4444b;

    /* renamed from: c  reason: collision with root package name */
    private final long f4445c;

    /* renamed from: d  reason: collision with root package name */
    private final long f4446d;

    /* renamed from: e  reason: collision with root package name */
    private final long f4447e;

    /* renamed from: f  reason: collision with root package name */
    private final int f4448f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f4449g;

    /* renamed from: h  reason: collision with root package name */
    private final long f4450h;

    /* renamed from: i  reason: collision with root package name */
    private final boolean f4451i;

    /* renamed from: j  reason: collision with root package name */
    private int f4452j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f4453k;

    public u() {
        this(new x4.o(true, 65536), 50000, 50000, 2500, AbstractSession.DEFAULT_TIMEOUT_FOR_ASYNCHRONOUS_MESSAGES_IN_TRANSMIT, -1, false, 0, false);
    }

    private static void j(int i10, int i11, String str, String str2) {
        boolean z10;
        if (i10 >= i11) {
            z10 = true;
        } else {
            z10 = false;
        }
        y4.a.b(z10, str + " cannot be less than " + str2);
    }

    private static int l(int i10) {
        switch (i10) {
            case ReviewErrorCode.INVALID_REQUEST /* -2 */:
                return 0;
            case -1:
            default:
                throw new IllegalArgumentException();
            case 0:
                return 144310272;
            case 1:
                return 13107200;
            case 2:
                return 131072000;
            case 3:
            case 4:
            case 5:
            case 6:
                return 131072;
        }
    }

    private void m(boolean z10) {
        int i10 = this.f4448f;
        if (i10 == -1) {
            i10 = 13107200;
        }
        this.f4452j = i10;
        this.f4453k = false;
        if (z10) {
            this.f4443a.g();
        }
    }

    @Override // b3.d2
    public void a() {
        m(false);
    }

    @Override // b3.d2
    public boolean b() {
        return this.f4451i;
    }

    @Override // b3.d2
    public long c() {
        return this.f4450h;
    }

    @Override // b3.d2
    public void d() {
        m(true);
    }

    @Override // b3.d2
    public boolean e(long j10, float f10, boolean z10, long j11) {
        long j12;
        long e02 = y4.q0.e0(j10, f10);
        if (z10) {
            j12 = this.f4447e;
        } else {
            j12 = this.f4446d;
        }
        if (j11 != -9223372036854775807L) {
            j12 = Math.min(j11 / 2, j12);
        }
        if (j12 > 0 && e02 < j12 && (this.f4449g || this.f4443a.f() < this.f4452j)) {
            return false;
        }
        return true;
    }

    @Override // b3.d2
    public void f(t3[] t3VarArr, d4.u0 u0Var, w4.y[] yVarArr) {
        int i10 = this.f4448f;
        if (i10 == -1) {
            i10 = k(t3VarArr, yVarArr);
        }
        this.f4452j = i10;
        this.f4443a.h(i10);
    }

    @Override // b3.d2
    public boolean g(long j10, long j11, float f10) {
        boolean z10;
        boolean z11 = true;
        if (this.f4443a.f() >= this.f4452j) {
            z10 = true;
        } else {
            z10 = false;
        }
        long j12 = this.f4444b;
        if (f10 > 1.0f) {
            j12 = Math.min(y4.q0.Z(j12, f10), this.f4445c);
        }
        if (j11 < Math.max(j12, 500000L)) {
            if (!this.f4449g && z10) {
                z11 = false;
            }
            this.f4453k = z11;
            if (!z11 && j11 < 500000) {
                y4.r.i("DefaultLoadControl", "Target buffer size reached with less than 500ms of buffered media data.");
            }
        } else if (j11 >= this.f4445c || z10) {
            this.f4453k = false;
        }
        return this.f4453k;
    }

    @Override // b3.d2
    public x4.b h() {
        return this.f4443a;
    }

    @Override // b3.d2
    public void i() {
        m(true);
    }

    protected int k(t3[] t3VarArr, w4.y[] yVarArr) {
        int i10 = 0;
        for (int i11 = 0; i11 < t3VarArr.length; i11++) {
            if (yVarArr[i11] != null) {
                i10 += l(t3VarArr[i11].h());
            }
        }
        return Math.max(13107200, i10);
    }

    protected u(x4.o oVar, int i10, int i11, int i12, int i13, int i14, boolean z10, int i15, boolean z11) {
        j(i12, 0, "bufferForPlaybackMs", CommonUrlParts.Values.FALSE_INTEGER);
        j(i13, 0, "bufferForPlaybackAfterRebufferMs", CommonUrlParts.Values.FALSE_INTEGER);
        j(i10, i12, "minBufferMs", "bufferForPlaybackMs");
        j(i10, i13, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
        j(i11, i10, "maxBufferMs", "minBufferMs");
        j(i15, 0, "backBufferDurationMs", CommonUrlParts.Values.FALSE_INTEGER);
        this.f4443a = oVar;
        this.f4444b = y4.q0.A0(i10);
        this.f4445c = y4.q0.A0(i11);
        this.f4446d = y4.q0.A0(i12);
        this.f4447e = y4.q0.A0(i13);
        this.f4448f = i14;
        this.f4452j = i14 == -1 ? 13107200 : i14;
        this.f4449g = z10;
        this.f4450h = y4.q0.A0(i15);
        this.f4451i = z11;
    }
}
