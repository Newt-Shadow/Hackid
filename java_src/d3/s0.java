package d3;

import android.content.Context;
import android.media.AudioDeviceInfo;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import b3.l3;
import b3.t3;
import b3.u3;
import b3.x1;
import b3.y1;
import d3.v;
import d3.w;
import java.nio.ByteBuffer;
import java.util.List;
import org.apache.tika.mime.MimeTypesReaderMetKeys;
import s3.l;
/* loaded from: classes.dex */
public class s0 extends s3.u implements y4.t {
    private final Context S0;
    private final v.a T0;
    private final w U0;
    private int V0;
    private boolean W0;
    private x1 X0;
    private x1 Y0;
    private long Z0;

    /* renamed from: a1  reason: collision with root package name */
    private boolean f14584a1;

    /* renamed from: b1  reason: collision with root package name */
    private boolean f14585b1;

    /* renamed from: c1  reason: collision with root package name */
    private boolean f14586c1;

    /* renamed from: d1  reason: collision with root package name */
    private boolean f14587d1;

    /* renamed from: e1  reason: collision with root package name */
    private t3.a f14588e1;

    /* loaded from: classes.dex */
    private static final class b {
        public static void a(w wVar, Object obj) {
            wVar.h((AudioDeviceInfo) obj);
        }
    }

    /* loaded from: classes.dex */
    private final class c implements w.c {
        private c() {
        }

        @Override // d3.w.c
        public void a(Exception exc) {
            y4.r.d("MediaCodecAudioRenderer", "Audio sink error", exc);
            s0.this.T0.l(exc);
        }

        @Override // d3.w.c
        public void b(long j10) {
            s0.this.T0.B(j10);
        }

        @Override // d3.w.c
        public void c() {
            if (s0.this.f14588e1 != null) {
                s0.this.f14588e1.a();
            }
        }

        @Override // d3.w.c
        public void d(int i10, long j10, long j11) {
            s0.this.T0.D(i10, j10, j11);
        }

        @Override // d3.w.c
        public void e() {
            s0.this.G1();
        }

        @Override // d3.w.c
        public void f() {
            if (s0.this.f14588e1 != null) {
                s0.this.f14588e1.b();
            }
        }

        @Override // d3.w.c
        public void onSkipSilenceEnabledChanged(boolean z10) {
            s0.this.T0.C(z10);
        }
    }

    public s0(Context context, l.b bVar, s3.w wVar, boolean z10, Handler handler, v vVar, w wVar2) {
        super(1, bVar, wVar, z10, 44100.0f);
        this.S0 = context.getApplicationContext();
        this.U0 = wVar2;
        this.T0 = new v.a(handler, vVar);
        wVar2.o(new c());
    }

    private static boolean A1(String str) {
        if (y4.q0.f32946a < 24 && "OMX.SEC.aac.dec".equals(str) && "samsung".equals(y4.q0.f32948c)) {
            String str2 = y4.q0.f32947b;
            if (str2.startsWith("zeroflte") || str2.startsWith("herolte") || str2.startsWith("heroqlte")) {
                return true;
            }
        }
        return false;
    }

    private static boolean B1() {
        if (y4.q0.f32946a == 23) {
            String str = y4.q0.f32949d;
            if ("ZTE B2017G".equals(str) || "AXON 7 mini".equals(str)) {
                return true;
            }
        }
        return false;
    }

    private int C1(s3.s sVar, x1 x1Var) {
        int i10;
        if ("OMX.google.raw.decoder".equals(sVar.f29357a) && (i10 = y4.q0.f32946a) < 24 && (i10 != 23 || !y4.q0.w0(this.S0))) {
            return -1;
        }
        return x1Var.f4515m;
    }

    private static List E1(s3.w wVar, x1 x1Var, boolean z10, w wVar2) {
        s3.s v10;
        String str = x1Var.f4514l;
        if (str == null) {
            return o6.q.D();
        }
        if (wVar2.b(x1Var) && (v10 = s3.f0.v()) != null) {
            return o6.q.F(v10);
        }
        List a10 = wVar.a(str, z10, false);
        String m10 = s3.f0.m(x1Var);
        if (m10 == null) {
            return o6.q.t(a10);
        }
        return o6.q.r().j(a10).j(wVar.a(m10, z10, false)).k();
    }

    private void H1() {
        long m10 = this.U0.m(d());
        if (m10 != Long.MIN_VALUE) {
            if (!this.f14585b1) {
                m10 = Math.max(this.Z0, m10);
            }
            this.Z0 = m10;
            this.f14585b1 = false;
        }
    }

    @Override // s3.u
    protected List B0(s3.w wVar, x1 x1Var, boolean z10) {
        return s3.f0.u(E1(wVar, x1Var, z10, this.U0), x1Var);
    }

    @Override // s3.u
    protected l.a D0(s3.s sVar, x1 x1Var, MediaCrypto mediaCrypto, float f10) {
        boolean z10;
        x1 x1Var2;
        this.V0 = D1(sVar, x1Var, M());
        this.W0 = A1(sVar.f29357a);
        MediaFormat F1 = F1(x1Var, sVar.f29359c, this.V0, f10);
        if ("audio/raw".equals(sVar.f29358b) && !"audio/raw".equals(x1Var.f4514l)) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            x1Var2 = x1Var;
        } else {
            x1Var2 = null;
        }
        this.Y0 = x1Var2;
        return l.a.a(sVar, F1, x1Var, mediaCrypto);
    }

    protected int D1(s3.s sVar, x1 x1Var, x1[] x1VarArr) {
        int C1 = C1(sVar, x1Var);
        if (x1VarArr.length == 1) {
            return C1;
        }
        for (x1 x1Var2 : x1VarArr) {
            if (sVar.f(x1Var, x1Var2).f15302d != 0) {
                C1 = Math.max(C1, C1(sVar, x1Var2));
            }
        }
        return C1;
    }

    @Override // b3.o, b3.t3
    public y4.t E() {
        return this;
    }

    protected MediaFormat F1(x1 x1Var, String str, int i10, float f10) {
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str);
        mediaFormat.setInteger("channel-count", x1Var.f4527y);
        mediaFormat.setInteger("sample-rate", x1Var.f4528z);
        y4.u.e(mediaFormat, x1Var.f4516n);
        y4.u.d(mediaFormat, "max-input-size", i10);
        int i11 = y4.q0.f32946a;
        if (i11 >= 23) {
            mediaFormat.setInteger(MimeTypesReaderMetKeys.MAGIC_PRIORITY_ATTR, 0);
            if (f10 != -1.0f && !B1()) {
                mediaFormat.setFloat("operating-rate", f10);
            }
        }
        if (i11 <= 28 && "audio/ac4".equals(x1Var.f4514l)) {
            mediaFormat.setInteger("ac4-is-sync", 1);
        }
        if (i11 >= 24 && this.U0.v(y4.q0.c0(4, x1Var.f4527y, x1Var.f4528z)) == 2) {
            mediaFormat.setInteger("pcm-encoding", 4);
        }
        if (i11 >= 32) {
            mediaFormat.setInteger("max-output-channel-count", 99);
        }
        return mediaFormat;
    }

    protected void G1() {
        this.f14585b1 = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // s3.u, b3.o
    public void O() {
        this.f14586c1 = true;
        this.X0 = null;
        try {
            this.U0.flush();
            try {
                super.O();
            } finally {
            }
        } catch (Throwable th) {
            try {
                super.O();
                throw th;
            } finally {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // s3.u, b3.o
    public void P(boolean z10, boolean z11) {
        super.P(z10, z11);
        this.T0.p(this.N0);
        if (I().f4475a) {
            this.U0.t();
        } else {
            this.U0.n();
        }
        this.U0.p(L());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // s3.u, b3.o
    public void Q(long j10, boolean z10) {
        super.Q(j10, z10);
        if (this.f14587d1) {
            this.U0.x();
        } else {
            this.U0.flush();
        }
        this.Z0 = j10;
        this.f14584a1 = true;
        this.f14585b1 = true;
    }

    @Override // s3.u
    protected void Q0(Exception exc) {
        y4.r.d("MediaCodecAudioRenderer", "Audio codec error", exc);
        this.T0.k(exc);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // s3.u, b3.o
    public void R() {
        try {
            super.R();
        } finally {
            if (this.f14586c1) {
                this.f14586c1 = false;
                this.U0.a();
            }
        }
    }

    @Override // s3.u
    protected void R0(String str, l.a aVar, long j10, long j11) {
        this.T0.m(str, j10, j11);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // s3.u, b3.o
    public void S() {
        super.S();
        this.U0.u();
    }

    @Override // s3.u
    protected void S0(String str) {
        this.T0.n(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // s3.u, b3.o
    public void T() {
        H1();
        this.U0.pause();
        super.T();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // s3.u
    public e3.i T0(y1 y1Var) {
        this.X0 = (x1) y4.a.e(y1Var.f4575b);
        e3.i T0 = super.T0(y1Var);
        this.T0.q(this.X0, T0);
        return T0;
    }

    @Override // s3.u
    protected void U0(x1 x1Var, MediaFormat mediaFormat) {
        int i10;
        int i11;
        x1 x1Var2 = this.Y0;
        int[] iArr = null;
        if (x1Var2 != null) {
            x1Var = x1Var2;
        } else if (w0() != null) {
            if ("audio/raw".equals(x1Var.f4514l)) {
                i10 = x1Var.A;
            } else if (y4.q0.f32946a >= 24 && mediaFormat.containsKey("pcm-encoding")) {
                i10 = mediaFormat.getInteger("pcm-encoding");
            } else if (mediaFormat.containsKey("v-bits-per-sample")) {
                i10 = y4.q0.b0(mediaFormat.getInteger("v-bits-per-sample"));
            } else {
                i10 = 2;
            }
            x1 G = new x1.b().g0("audio/raw").a0(i10).P(x1Var.B).Q(x1Var.C).J(mediaFormat.getInteger("channel-count")).h0(mediaFormat.getInteger("sample-rate")).G();
            if (this.W0 && G.f4527y == 6 && (i11 = x1Var.f4527y) < 6) {
                iArr = new int[i11];
                for (int i12 = 0; i12 < x1Var.f4527y; i12++) {
                    iArr[i12] = i12;
                }
            }
            x1Var = G;
        }
        try {
            this.U0.z(x1Var, 0, iArr);
        } catch (w.a e10) {
            throw G(e10, e10.f14612a, 5001);
        }
    }

    @Override // s3.u
    protected void V0(long j10) {
        this.U0.q(j10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // s3.u
    public void X0() {
        super.X0();
        this.U0.s();
    }

    @Override // s3.u
    protected void Y0(e3.g gVar) {
        if (this.f14584a1 && !gVar.p()) {
            if (Math.abs(gVar.f15291e - this.Z0) > 500000) {
                this.Z0 = gVar.f15291e;
            }
            this.f14584a1 = false;
        }
    }

    @Override // s3.u
    protected e3.i a0(s3.s sVar, x1 x1Var, x1 x1Var2) {
        int i10;
        e3.i f10 = sVar.f(x1Var, x1Var2);
        int i11 = f10.f15303e;
        if (C1(sVar, x1Var2) > this.V0) {
            i11 |= 64;
        }
        int i12 = i11;
        String str = sVar.f29357a;
        if (i12 != 0) {
            i10 = 0;
        } else {
            i10 = f10.f15302d;
        }
        return new e3.i(str, x1Var, x1Var2, i10, i12);
    }

    @Override // s3.u
    protected boolean a1(long j10, long j11, s3.l lVar, ByteBuffer byteBuffer, int i10, int i11, int i12, long j12, boolean z10, boolean z11, x1 x1Var) {
        y4.a.e(byteBuffer);
        if (this.Y0 != null && (i11 & 2) != 0) {
            ((s3.l) y4.a.e(lVar)).g(i10, false);
            return true;
        } else if (z10) {
            if (lVar != null) {
                lVar.g(i10, false);
            }
            this.N0.f15281f += i12;
            this.U0.s();
            return true;
        } else {
            try {
                if (!this.U0.w(byteBuffer, j12, i12)) {
                    return false;
                }
                if (lVar != null) {
                    lVar.g(i10, false);
                }
                this.N0.f15280e += i12;
                return true;
            } catch (w.b e10) {
                throw H(e10, this.X0, e10.f14614b, 5001);
            } catch (w.e e11) {
                throw H(e11, x1Var, e11.f14619b, 5002);
            }
        }
    }

    @Override // y4.t
    public void c(l3 l3Var) {
        this.U0.c(l3Var);
    }

    @Override // s3.u, b3.t3
    public boolean d() {
        if (super.d() && this.U0.d()) {
            return true;
        }
        return false;
    }

    @Override // s3.u
    protected void f1() {
        try {
            this.U0.i();
        } catch (w.e e10) {
            throw H(e10, e10.f14620c, e10.f14619b, 5002);
        }
    }

    @Override // y4.t
    public l3 g() {
        return this.U0.g();
    }

    @Override // b3.t3, b3.u3
    public String getName() {
        return "MediaCodecAudioRenderer";
    }

    @Override // s3.u, b3.t3
    public boolean isReady() {
        if (!this.U0.j() && !super.isReady()) {
            return false;
        }
        return true;
    }

    @Override // y4.t
    public long s() {
        if (getState() == 2) {
            H1();
        }
        return this.Z0;
    }

    @Override // s3.u
    protected boolean s1(x1 x1Var) {
        return this.U0.b(x1Var);
    }

    @Override // s3.u
    protected int t1(s3.w wVar, x1 x1Var) {
        int i10;
        boolean z10;
        boolean z11;
        int i11;
        int i12 = 0;
        if (!y4.v.o(x1Var.f4514l)) {
            return u3.v(0);
        }
        if (y4.q0.f32946a >= 21) {
            i10 = 32;
        } else {
            i10 = 0;
        }
        boolean z12 = true;
        if (x1Var.G != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        boolean u12 = s3.u.u1(x1Var);
        int i13 = 8;
        int i14 = 4;
        if (u12 && this.U0.b(x1Var) && (!z10 || s3.f0.v() != null)) {
            return u3.r(4, 8, i10);
        }
        if ("audio/raw".equals(x1Var.f4514l) && !this.U0.b(x1Var)) {
            return u3.v(1);
        }
        if (!this.U0.b(y4.q0.c0(2, x1Var.f4527y, x1Var.f4528z))) {
            return u3.v(1);
        }
        List E1 = E1(wVar, x1Var, false, this.U0);
        if (E1.isEmpty()) {
            return u3.v(1);
        }
        if (!u12) {
            return u3.v(2);
        }
        s3.s sVar = (s3.s) E1.get(0);
        boolean o10 = sVar.o(x1Var);
        if (!o10) {
            for (int i15 = 1; i15 < E1.size(); i15++) {
                s3.s sVar2 = (s3.s) E1.get(i15);
                if (sVar2.o(x1Var)) {
                    z11 = false;
                    sVar = sVar2;
                    break;
                }
            }
        }
        z11 = true;
        z12 = o10;
        if (!z12) {
            i14 = 3;
        }
        if (z12 && sVar.r(x1Var)) {
            i13 = 16;
        }
        if (sVar.f29364h) {
            i11 = 64;
        } else {
            i11 = 0;
        }
        if (z11) {
            i12 = 128;
        }
        return u3.n(i14, i13, i10, i11, i12);
    }

    @Override // b3.o, b3.p3.b
    public void y(int i10, Object obj) {
        if (i10 != 2) {
            if (i10 != 3) {
                if (i10 != 6) {
                    switch (i10) {
                        case 9:
                            this.U0.y(((Boolean) obj).booleanValue());
                            return;
                        case 10:
                            this.U0.l(((Integer) obj).intValue());
                            return;
                        case 11:
                            this.f14588e1 = (t3.a) obj;
                            return;
                        case 12:
                            if (y4.q0.f32946a >= 23) {
                                b.a(this.U0, obj);
                                return;
                            }
                            return;
                        default:
                            super.y(i10, obj);
                            return;
                    }
                }
                this.U0.r((z) obj);
                return;
            }
            this.U0.k((e) obj);
            return;
        }
        this.U0.e(((Float) obj).floatValue());
    }

    @Override // s3.u
    protected float z0(float f10, x1 x1Var, x1[] x1VarArr) {
        int i10 = -1;
        for (x1 x1Var2 : x1VarArr) {
            int i11 = x1Var2.f4528z;
            if (i11 != -1) {
                i10 = Math.max(i10, i11);
            }
        }
        if (i10 == -1) {
            return -1.0f;
        }
        return f10 * i10;
    }
}
