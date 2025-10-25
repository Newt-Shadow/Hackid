package d3;

import b3.x1;
import java.nio.ByteBuffer;
import kotlin.KotlinVersion;
import org.apache.tika.fork.ForkServer;
/* loaded from: classes.dex */
public abstract class c {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f14441a = {2002, 2000, 1920, 1601, 1600, 1001, 1000, 960, 800, 800, 480, 400, 400, 2048};

    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f14442a;

        /* renamed from: b  reason: collision with root package name */
        public final int f14443b;

        /* renamed from: c  reason: collision with root package name */
        public final int f14444c;

        /* renamed from: d  reason: collision with root package name */
        public final int f14445d;

        /* renamed from: e  reason: collision with root package name */
        public final int f14446e;

        private b(int i10, int i11, int i12, int i13, int i14) {
            this.f14442a = i10;
            this.f14444c = i11;
            this.f14443b = i12;
            this.f14445d = i13;
            this.f14446e = i14;
        }
    }

    public static void a(int i10, y4.e0 e0Var) {
        e0Var.P(7);
        byte[] e10 = e0Var.e();
        e10[0] = -84;
        e10[1] = 64;
        e10[2] = -1;
        e10[3] = -1;
        e10[4] = (byte) ((i10 >> 16) & KotlinVersion.MAX_COMPONENT_VALUE);
        e10[5] = (byte) ((i10 >> 8) & KotlinVersion.MAX_COMPONENT_VALUE);
        e10[6] = (byte) (i10 & KotlinVersion.MAX_COMPONENT_VALUE);
    }

    public static x1 b(y4.e0 e0Var, String str, String str2, f3.m mVar) {
        int i10;
        e0Var.U(1);
        if (((e0Var.G() & 32) >> 5) == 1) {
            i10 = 48000;
        } else {
            i10 = 44100;
        }
        return new x1.b().U(str).g0("audio/ac4").J(2).h0(i10).O(mVar).X(str2).G();
    }

    public static int c(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[16];
        int position = byteBuffer.position();
        byteBuffer.get(bArr);
        byteBuffer.position(position);
        return d(new y4.d0(bArr)).f14446e;
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x0080, code lost:
        if (r11 != 11) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0085, code lost:
        if (r11 != 11) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x008a, code lost:
        if (r11 != 8) goto L39;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static d3.c.b d(y4.d0 r11) {
        /*
            r0 = 16
            int r1 = r11.h(r0)
            int r0 = r11.h(r0)
            r2 = 65535(0xffff, float:9.1834E-41)
            r3 = 4
            if (r0 != r2) goto L18
            r0 = 24
            int r0 = r11.h(r0)
            r2 = 7
            goto L19
        L18:
            r2 = r3
        L19:
            int r0 = r0 + r2
            r2 = 44097(0xac41, float:6.1793E-41)
            if (r1 != r2) goto L21
            int r0 = r0 + 2
        L21:
            r8 = r0
            r0 = 2
            int r1 = r11.h(r0)
            r2 = 3
            if (r1 != r2) goto L2f
            int r4 = f(r11, r0)
            int r1 = r1 + r4
        L2f:
            r5 = r1
            r1 = 10
            int r1 = r11.h(r1)
            boolean r4 = r11.g()
            if (r4 == 0) goto L45
            int r4 = r11.h(r2)
            if (r4 <= 0) goto L45
            r11.r(r0)
        L45:
            boolean r4 = r11.g()
            r6 = 48000(0xbb80, float:6.7262E-41)
            r7 = 44100(0xac44, float:6.1797E-41)
            if (r4 == 0) goto L53
            r9 = r6
            goto L54
        L53:
            r9 = r7
        L54:
            int r11 = r11.h(r3)
            if (r9 != r7) goto L63
            r4 = 13
            if (r11 != r4) goto L63
            int[] r0 = d3.c.f14441a
            r11 = r0[r11]
            goto L93
        L63:
            if (r9 != r6) goto L92
            int[] r4 = d3.c.f14441a
            int r6 = r4.length
            if (r11 >= r6) goto L92
            r4 = r4[r11]
            int r1 = r1 % 5
            r6 = 8
            r7 = 1
            if (r1 == r7) goto L88
            r7 = 11
            if (r1 == r0) goto L83
            if (r1 == r2) goto L88
            if (r1 == r3) goto L7c
            goto L8d
        L7c:
            if (r11 == r2) goto L8f
            if (r11 == r6) goto L8f
            if (r11 != r7) goto L8d
            goto L8f
        L83:
            if (r11 == r6) goto L8f
            if (r11 != r7) goto L8d
            goto L8f
        L88:
            if (r11 == r2) goto L8f
            if (r11 != r6) goto L8d
            goto L8f
        L8d:
            r11 = r4
            goto L93
        L8f:
            int r4 = r4 + 1
            goto L8d
        L92:
            r11 = 0
        L93:
            d3.c$b r0 = new d3.c$b
            r6 = 2
            r10 = 0
            r4 = r0
            r7 = r9
            r9 = r11
            r4.<init>(r5, r6, r7, r8, r9)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: d3.c.d(y4.d0):d3.c$b");
    }

    public static int e(byte[] bArr, int i10) {
        int i11 = 7;
        if (bArr.length < 7) {
            return -1;
        }
        int i12 = ((bArr[2] & ForkServer.ERROR) << 8) | (bArr[3] & ForkServer.ERROR);
        if (i12 == 65535) {
            i12 = ((bArr[4] & ForkServer.ERROR) << 16) | ((bArr[5] & ForkServer.ERROR) << 8) | (bArr[6] & ForkServer.ERROR);
        } else {
            i11 = 4;
        }
        if (i10 == 44097) {
            i11 += 2;
        }
        return i12 + i11;
    }

    private static int f(y4.d0 d0Var, int i10) {
        int i11 = 0;
        while (true) {
            int h10 = i11 + d0Var.h(i10);
            if (!d0Var.g()) {
                return h10;
            }
            i11 = (h10 + 1) << i10;
        }
    }
}
