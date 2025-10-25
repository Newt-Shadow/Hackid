package d4;

import d4.l0;
import g3.b0;
import java.io.EOFException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import x4.b;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class j0 {

    /* renamed from: a  reason: collision with root package name */
    private final x4.b f14839a;

    /* renamed from: b  reason: collision with root package name */
    private final int f14840b;

    /* renamed from: c  reason: collision with root package name */
    private final y4.e0 f14841c;

    /* renamed from: d  reason: collision with root package name */
    private a f14842d;

    /* renamed from: e  reason: collision with root package name */
    private a f14843e;

    /* renamed from: f  reason: collision with root package name */
    private a f14844f;

    /* renamed from: g  reason: collision with root package name */
    private long f14845g;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a implements b.a {

        /* renamed from: a  reason: collision with root package name */
        public long f14846a;

        /* renamed from: b  reason: collision with root package name */
        public long f14847b;

        /* renamed from: c  reason: collision with root package name */
        public x4.a f14848c;

        /* renamed from: d  reason: collision with root package name */
        public a f14849d;

        public a(long j10, int i10) {
            d(j10, i10);
        }

        @Override // x4.b.a
        public x4.a a() {
            return (x4.a) y4.a.e(this.f14848c);
        }

        public a b() {
            this.f14848c = null;
            a aVar = this.f14849d;
            this.f14849d = null;
            return aVar;
        }

        public void c(x4.a aVar, a aVar2) {
            this.f14848c = aVar;
            this.f14849d = aVar2;
        }

        public void d(long j10, int i10) {
            boolean z10;
            if (this.f14848c == null) {
                z10 = true;
            } else {
                z10 = false;
            }
            y4.a.f(z10);
            this.f14846a = j10;
            this.f14847b = j10 + i10;
        }

        public int e(long j10) {
            return ((int) (j10 - this.f14846a)) + this.f14848c.f32269b;
        }

        @Override // x4.b.a
        public b.a next() {
            a aVar = this.f14849d;
            if (aVar != null && aVar.f14848c != null) {
                return aVar;
            }
            return null;
        }
    }

    public j0(x4.b bVar) {
        this.f14839a = bVar;
        int e10 = bVar.e();
        this.f14840b = e10;
        this.f14841c = new y4.e0(32);
        a aVar = new a(0L, e10);
        this.f14842d = aVar;
        this.f14843e = aVar;
        this.f14844f = aVar;
    }

    private void a(a aVar) {
        if (aVar.f14848c == null) {
            return;
        }
        this.f14839a.d(aVar);
        aVar.b();
    }

    private static a d(a aVar, long j10) {
        while (j10 >= aVar.f14847b) {
            aVar = aVar.f14849d;
        }
        return aVar;
    }

    private void g(int i10) {
        long j10 = this.f14845g + i10;
        this.f14845g = j10;
        a aVar = this.f14844f;
        if (j10 == aVar.f14847b) {
            this.f14844f = aVar.f14849d;
        }
    }

    private int h(int i10) {
        a aVar = this.f14844f;
        if (aVar.f14848c == null) {
            aVar.c(this.f14839a.a(), new a(this.f14844f.f14847b, this.f14840b));
        }
        return Math.min(i10, (int) (this.f14844f.f14847b - this.f14845g));
    }

    private static a i(a aVar, long j10, ByteBuffer byteBuffer, int i10) {
        a d10 = d(aVar, j10);
        while (i10 > 0) {
            int min = Math.min(i10, (int) (d10.f14847b - j10));
            byteBuffer.put(d10.f14848c.f32268a, d10.e(j10), min);
            i10 -= min;
            j10 += min;
            if (j10 == d10.f14847b) {
                d10 = d10.f14849d;
            }
        }
        return d10;
    }

    private static a j(a aVar, long j10, byte[] bArr, int i10) {
        a d10 = d(aVar, j10);
        int i11 = i10;
        while (i11 > 0) {
            int min = Math.min(i11, (int) (d10.f14847b - j10));
            System.arraycopy(d10.f14848c.f32268a, d10.e(j10), bArr, i10 - i11, min);
            i11 -= min;
            j10 += min;
            if (j10 == d10.f14847b) {
                d10 = d10.f14849d;
            }
        }
        return d10;
    }

    private static a k(a aVar, e3.g gVar, l0.b bVar, y4.e0 e0Var) {
        boolean z10;
        long j10 = bVar.f14878b;
        int i10 = 1;
        e0Var.P(1);
        a j11 = j(aVar, j10, e0Var.e(), 1);
        long j12 = j10 + 1;
        byte b10 = e0Var.e()[0];
        if ((b10 & 128) != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        int i11 = b10 & Byte.MAX_VALUE;
        e3.c cVar = gVar.f15288b;
        byte[] bArr = cVar.f15264a;
        if (bArr == null) {
            cVar.f15264a = new byte[16];
        } else {
            Arrays.fill(bArr, (byte) 0);
        }
        a j13 = j(j11, j12, cVar.f15264a, i11);
        long j14 = j12 + i11;
        if (z10) {
            e0Var.P(2);
            j13 = j(j13, j14, e0Var.e(), 2);
            j14 += 2;
            i10 = e0Var.M();
        }
        int i12 = i10;
        int[] iArr = cVar.f15267d;
        if (iArr == null || iArr.length < i12) {
            iArr = new int[i12];
        }
        int[] iArr2 = iArr;
        int[] iArr3 = cVar.f15268e;
        if (iArr3 == null || iArr3.length < i12) {
            iArr3 = new int[i12];
        }
        int[] iArr4 = iArr3;
        if (z10) {
            int i13 = i12 * 6;
            e0Var.P(i13);
            j13 = j(j13, j14, e0Var.e(), i13);
            j14 += i13;
            e0Var.T(0);
            for (int i14 = 0; i14 < i12; i14++) {
                iArr2[i14] = e0Var.M();
                iArr4[i14] = e0Var.K();
            }
        } else {
            iArr2[0] = 0;
            iArr4[0] = bVar.f14877a - ((int) (j14 - bVar.f14878b));
        }
        b0.a aVar2 = (b0.a) y4.q0.j(bVar.f14879c);
        cVar.c(i12, iArr2, iArr4, aVar2.f16146b, cVar.f15264a, aVar2.f16145a, aVar2.f16147c, aVar2.f16148d);
        long j15 = bVar.f14878b;
        int i15 = (int) (j14 - j15);
        bVar.f14878b = j15 + i15;
        bVar.f14877a -= i15;
        return j13;
    }

    private static a l(a aVar, e3.g gVar, l0.b bVar, y4.e0 e0Var) {
        if (gVar.y()) {
            aVar = k(aVar, gVar, bVar, e0Var);
        }
        if (gVar.o()) {
            e0Var.P(4);
            a j10 = j(aVar, bVar.f14878b, e0Var.e(), 4);
            int K = e0Var.K();
            bVar.f14878b += 4;
            bVar.f14877a -= 4;
            gVar.w(K);
            a i10 = i(j10, bVar.f14878b, gVar.f15289c, K);
            bVar.f14878b += K;
            int i11 = bVar.f14877a - K;
            bVar.f14877a = i11;
            gVar.A(i11);
            return i(i10, bVar.f14878b, gVar.f15292f, bVar.f14877a);
        }
        gVar.w(bVar.f14877a);
        return i(aVar, bVar.f14878b, gVar.f15289c, bVar.f14877a);
    }

    public void b(long j10) {
        a aVar;
        if (j10 == -1) {
            return;
        }
        while (true) {
            aVar = this.f14842d;
            if (j10 < aVar.f14847b) {
                break;
            }
            this.f14839a.b(aVar.f14848c);
            this.f14842d = this.f14842d.b();
        }
        if (this.f14843e.f14846a < aVar.f14846a) {
            this.f14843e = aVar;
        }
    }

    public void c(long j10) {
        boolean z10;
        if (j10 <= this.f14845g) {
            z10 = true;
        } else {
            z10 = false;
        }
        y4.a.a(z10);
        this.f14845g = j10;
        if (j10 != 0) {
            a aVar = this.f14842d;
            if (j10 != aVar.f14846a) {
                while (this.f14845g > aVar.f14847b) {
                    aVar = aVar.f14849d;
                }
                a aVar2 = (a) y4.a.e(aVar.f14849d);
                a(aVar2);
                a aVar3 = new a(aVar.f14847b, this.f14840b);
                aVar.f14849d = aVar3;
                if (this.f14845g == aVar.f14847b) {
                    aVar = aVar3;
                }
                this.f14844f = aVar;
                if (this.f14843e == aVar2) {
                    this.f14843e = aVar3;
                    return;
                }
                return;
            }
        }
        a(this.f14842d);
        a aVar4 = new a(this.f14845g, this.f14840b);
        this.f14842d = aVar4;
        this.f14843e = aVar4;
        this.f14844f = aVar4;
    }

    public long e() {
        return this.f14845g;
    }

    public void f(e3.g gVar, l0.b bVar) {
        l(this.f14843e, gVar, bVar, this.f14841c);
    }

    public void m(e3.g gVar, l0.b bVar) {
        this.f14843e = l(this.f14843e, gVar, bVar, this.f14841c);
    }

    public void n() {
        a(this.f14842d);
        this.f14842d.d(0L, this.f14840b);
        a aVar = this.f14842d;
        this.f14843e = aVar;
        this.f14844f = aVar;
        this.f14845g = 0L;
        this.f14839a.c();
    }

    public void o() {
        this.f14843e = this.f14842d;
    }

    public int p(x4.h hVar, int i10, boolean z10) {
        int h10 = h(i10);
        a aVar = this.f14844f;
        int read = hVar.read(aVar.f14848c.f32268a, aVar.e(this.f14845g), h10);
        if (read == -1) {
            if (z10) {
                return -1;
            }
            throw new EOFException();
        }
        g(read);
        return read;
    }

    public void q(y4.e0 e0Var, int i10) {
        while (i10 > 0) {
            int h10 = h(i10);
            a aVar = this.f14844f;
            e0Var.l(aVar.f14848c.f32268a, aVar.e(this.f14845g), h10);
            i10 -= h10;
            g(h10);
        }
    }
}
