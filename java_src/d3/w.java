package d3;

import android.media.AudioDeviceInfo;
import b3.l3;
import b3.x1;
import c3.t3;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public interface w {

    /* loaded from: classes.dex */
    public static final class b extends Exception {

        /* renamed from: a  reason: collision with root package name */
        public final int f14613a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f14614b;

        /* renamed from: c  reason: collision with root package name */
        public final x1 f14615c;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public b(int r4, int r5, int r6, int r7, b3.x1 r8, boolean r9, java.lang.Exception r10) {
            /*
                r3 = this;
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r0.<init>()
                java.lang.String r1 = "AudioTrack init failed "
                r0.append(r1)
                r0.append(r4)
                java.lang.String r1 = " "
                r0.append(r1)
                java.lang.String r2 = "Config("
                r0.append(r2)
                r0.append(r5)
                java.lang.String r5 = ", "
                r0.append(r5)
                r0.append(r6)
                r0.append(r5)
                r0.append(r7)
                java.lang.String r5 = ")"
                r0.append(r5)
                r0.append(r1)
                r0.append(r8)
                if (r9 == 0) goto L38
                java.lang.String r5 = " (recoverable)"
                goto L3a
            L38:
                java.lang.String r5 = ""
            L3a:
                r0.append(r5)
                java.lang.String r5 = r0.toString()
                r3.<init>(r5, r10)
                r3.f14613a = r4
                r3.f14614b = r9
                r3.f14615c = r8
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: d3.w.b.<init>(int, int, int, int, b3.x1, boolean, java.lang.Exception):void");
        }
    }

    /* loaded from: classes.dex */
    public interface c {
        void a(Exception exc);

        void b(long j10);

        void c();

        void d(int i10, long j10, long j11);

        void e();

        void f();

        void onSkipSilenceEnabledChanged(boolean z10);
    }

    /* loaded from: classes.dex */
    public static final class d extends Exception {

        /* renamed from: a  reason: collision with root package name */
        public final long f14616a;

        /* renamed from: b  reason: collision with root package name */
        public final long f14617b;

        public d(long j10, long j11) {
            super("Unexpected audio track timestamp discontinuity: expected " + j11 + ", got " + j10);
            this.f14616a = j10;
            this.f14617b = j11;
        }
    }

    /* loaded from: classes.dex */
    public static final class e extends Exception {

        /* renamed from: a  reason: collision with root package name */
        public final int f14618a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f14619b;

        /* renamed from: c  reason: collision with root package name */
        public final x1 f14620c;

        public e(int i10, x1 x1Var, boolean z10) {
            super("AudioTrack write failed: " + i10);
            this.f14619b = z10;
            this.f14618a = i10;
            this.f14620c = x1Var;
        }
    }

    void a();

    boolean b(x1 x1Var);

    void c(l3 l3Var);

    boolean d();

    void e(float f10);

    void flush();

    l3 g();

    void h(AudioDeviceInfo audioDeviceInfo);

    void i();

    boolean j();

    void k(d3.e eVar);

    void l(int i10);

    long m(boolean z10);

    void n();

    void o(c cVar);

    void p(t3 t3Var);

    void pause();

    default void q(long j10) {
    }

    void r(z zVar);

    void s();

    void t();

    void u();

    int v(x1 x1Var);

    boolean w(ByteBuffer byteBuffer, long j10, int i10);

    void x();

    void y(boolean z10);

    void z(x1 x1Var, int i10, int[] iArr);

    /* loaded from: classes.dex */
    public static final class a extends Exception {

        /* renamed from: a  reason: collision with root package name */
        public final x1 f14612a;

        public a(Throwable th, x1 x1Var) {
            super(th);
            this.f14612a = x1Var;
        }

        public a(String str, x1 x1Var) {
            super(str);
            this.f14612a = x1Var;
        }
    }
}
