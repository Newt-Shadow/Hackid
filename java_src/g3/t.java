package g3;

import b3.x1;
import java.util.Collections;
import java.util.List;
import y4.q0;
/* loaded from: classes.dex */
public final class t {

    /* renamed from: a  reason: collision with root package name */
    public final int f16228a;

    /* renamed from: b  reason: collision with root package name */
    public final int f16229b;

    /* renamed from: c  reason: collision with root package name */
    public final int f16230c;

    /* renamed from: d  reason: collision with root package name */
    public final int f16231d;

    /* renamed from: e  reason: collision with root package name */
    public final int f16232e;

    /* renamed from: f  reason: collision with root package name */
    public final int f16233f;

    /* renamed from: g  reason: collision with root package name */
    public final int f16234g;

    /* renamed from: h  reason: collision with root package name */
    public final int f16235h;

    /* renamed from: i  reason: collision with root package name */
    public final int f16236i;

    /* renamed from: j  reason: collision with root package name */
    public final long f16237j;

    /* renamed from: k  reason: collision with root package name */
    public final a f16238k;

    /* renamed from: l  reason: collision with root package name */
    private final t3.a f16239l;

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final long[] f16240a;

        /* renamed from: b  reason: collision with root package name */
        public final long[] f16241b;

        public a(long[] jArr, long[] jArr2) {
            this.f16240a = jArr;
            this.f16241b = jArr2;
        }
    }

    public t(byte[] bArr, int i10) {
        y4.d0 d0Var = new y4.d0(bArr);
        d0Var.p(i10 * 8);
        this.f16228a = d0Var.h(16);
        this.f16229b = d0Var.h(16);
        this.f16230c = d0Var.h(24);
        this.f16231d = d0Var.h(24);
        int h10 = d0Var.h(20);
        this.f16232e = h10;
        this.f16233f = j(h10);
        this.f16234g = d0Var.h(3) + 1;
        int h11 = d0Var.h(5) + 1;
        this.f16235h = h11;
        this.f16236i = e(h11);
        this.f16237j = d0Var.j(36);
        this.f16238k = null;
        this.f16239l = null;
    }

    private static int e(int i10) {
        if (i10 != 8) {
            if (i10 != 12) {
                if (i10 != 16) {
                    if (i10 != 20) {
                        return i10 != 24 ? -1 : 6;
                    }
                    return 5;
                }
                return 4;
            }
            return 2;
        }
        return 1;
    }

    private static int j(int i10) {
        switch (i10) {
            case 8000:
                return 4;
            case 16000:
                return 5;
            case 22050:
                return 6;
            case 24000:
                return 7;
            case 32000:
                return 8;
            case 44100:
                return 9;
            case 48000:
                return 10;
            case 88200:
                return 1;
            case 96000:
                return 11;
            case 176400:
                return 2;
            case 192000:
                return 3;
            default:
                return -1;
        }
    }

    public t a(List list) {
        return new t(this.f16228a, this.f16229b, this.f16230c, this.f16231d, this.f16232e, this.f16234g, this.f16235h, this.f16237j, this.f16238k, h(new t3.a(list)));
    }

    public t b(a aVar) {
        return new t(this.f16228a, this.f16229b, this.f16230c, this.f16231d, this.f16232e, this.f16234g, this.f16235h, this.f16237j, aVar, this.f16239l);
    }

    public t c(List list) {
        return new t(this.f16228a, this.f16229b, this.f16230c, this.f16231d, this.f16232e, this.f16234g, this.f16235h, this.f16237j, this.f16238k, h(e0.c(list)));
    }

    public long d() {
        long j10;
        long j11;
        long j12;
        int i10 = this.f16231d;
        if (i10 > 0) {
            j11 = (i10 + this.f16230c) / 2;
            j12 = 1;
        } else {
            int i11 = this.f16228a;
            if (i11 == this.f16229b && i11 > 0) {
                j10 = i11;
            } else {
                j10 = 4096;
            }
            j11 = ((j10 * this.f16234g) * this.f16235h) / 8;
            j12 = 64;
        }
        return j11 + j12;
    }

    public long f() {
        long j10 = this.f16237j;
        if (j10 == 0) {
            return -9223372036854775807L;
        }
        return (j10 * 1000000) / this.f16232e;
    }

    public x1 g(byte[] bArr, t3.a aVar) {
        bArr[4] = Byte.MIN_VALUE;
        int i10 = this.f16231d;
        if (i10 <= 0) {
            i10 = -1;
        }
        return new x1.b().g0("audio/flac").Y(i10).J(this.f16234g).h0(this.f16232e).V(Collections.singletonList(bArr)).Z(h(aVar)).G();
    }

    public t3.a h(t3.a aVar) {
        t3.a aVar2 = this.f16239l;
        if (aVar2 != null) {
            return aVar2.b(aVar);
        }
        return aVar;
    }

    public long i(long j10) {
        return q0.r((j10 * this.f16232e) / 1000000, 0L, this.f16237j - 1);
    }

    private t(int i10, int i11, int i12, int i13, int i14, int i15, int i16, long j10, a aVar, t3.a aVar2) {
        this.f16228a = i10;
        this.f16229b = i11;
        this.f16230c = i12;
        this.f16231d = i13;
        this.f16232e = i14;
        this.f16233f = j(i14);
        this.f16234g = i15;
        this.f16235h = i16;
        this.f16236i = e(i16);
        this.f16237j = j10;
        this.f16238k = aVar;
        this.f16239l = aVar2;
    }
}
