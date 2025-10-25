package w4;

import b3.g4;
import b3.x1;
import d4.s0;
import d4.t;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import o6.q;
import w4.y;
import y4.q0;
/* loaded from: classes.dex */
public class a extends c {

    /* renamed from: h  reason: collision with root package name */
    private final x4.e f31735h;

    /* renamed from: i  reason: collision with root package name */
    private final long f31736i;

    /* renamed from: j  reason: collision with root package name */
    private final long f31737j;

    /* renamed from: k  reason: collision with root package name */
    private final long f31738k;

    /* renamed from: l  reason: collision with root package name */
    private final int f31739l;

    /* renamed from: m  reason: collision with root package name */
    private final int f31740m;

    /* renamed from: n  reason: collision with root package name */
    private final float f31741n;

    /* renamed from: o  reason: collision with root package name */
    private final float f31742o;

    /* renamed from: p  reason: collision with root package name */
    private final o6.q f31743p;

    /* renamed from: q  reason: collision with root package name */
    private final y4.d f31744q;

    /* renamed from: r  reason: collision with root package name */
    private float f31745r;

    /* renamed from: s  reason: collision with root package name */
    private int f31746s;

    /* renamed from: t  reason: collision with root package name */
    private int f31747t;

    /* renamed from: u  reason: collision with root package name */
    private long f31748u;

    /* renamed from: v  reason: collision with root package name */
    private f4.n f31749v;

    /* renamed from: w4.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0357a {

        /* renamed from: a  reason: collision with root package name */
        public final long f31750a;

        /* renamed from: b  reason: collision with root package name */
        public final long f31751b;

        public C0357a(long j10, long j11) {
            this.f31750a = j10;
            this.f31751b = j11;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0357a)) {
                return false;
            }
            C0357a c0357a = (C0357a) obj;
            if (this.f31750a == c0357a.f31750a && this.f31751b == c0357a.f31751b) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (((int) this.f31750a) * 31) + ((int) this.f31751b);
        }
    }

    /* loaded from: classes.dex */
    public static class b implements y.b {

        /* renamed from: a  reason: collision with root package name */
        private final int f31752a;

        /* renamed from: b  reason: collision with root package name */
        private final int f31753b;

        /* renamed from: c  reason: collision with root package name */
        private final int f31754c;

        /* renamed from: d  reason: collision with root package name */
        private final int f31755d;

        /* renamed from: e  reason: collision with root package name */
        private final int f31756e;

        /* renamed from: f  reason: collision with root package name */
        private final float f31757f;

        /* renamed from: g  reason: collision with root package name */
        private final float f31758g;

        /* renamed from: h  reason: collision with root package name */
        private final y4.d f31759h;

        public b() {
            this(10000, 25000, 25000, 0.7f);
        }

        @Override // w4.y.b
        public final y[] a(y.a[] aVarArr, x4.e eVar, t.b bVar, g4 g4Var) {
            y b10;
            o6.q B = a.B(aVarArr);
            y[] yVarArr = new y[aVarArr.length];
            for (int i10 = 0; i10 < aVarArr.length; i10++) {
                y.a aVar = aVarArr[i10];
                if (aVar != null) {
                    int[] iArr = aVar.f31929b;
                    if (iArr.length != 0) {
                        if (iArr.length == 1) {
                            b10 = new z(aVar.f31928a, iArr[0], aVar.f31930c);
                        } else {
                            b10 = b(aVar.f31928a, iArr, aVar.f31930c, eVar, (o6.q) B.get(i10));
                        }
                        yVarArr[i10] = b10;
                    }
                }
            }
            return yVarArr;
        }

        protected a b(s0 s0Var, int[] iArr, int i10, x4.e eVar, o6.q qVar) {
            return new a(s0Var, iArr, i10, eVar, this.f31752a, this.f31753b, this.f31754c, this.f31755d, this.f31756e, this.f31757f, this.f31758g, qVar, this.f31759h);
        }

        public b(int i10, int i11, int i12, float f10) {
            this(i10, i11, i12, 1279, 719, f10, 0.75f, y4.d.f32861a);
        }

        public b(int i10, int i11, int i12, int i13, int i14, float f10, float f11, y4.d dVar) {
            this.f31752a = i10;
            this.f31753b = i11;
            this.f31754c = i12;
            this.f31755d = i13;
            this.f31756e = i14;
            this.f31757f = f10;
            this.f31758g = f11;
            this.f31759h = dVar;
        }
    }

    protected a(s0 s0Var, int[] iArr, int i10, x4.e eVar, long j10, long j11, long j12, int i11, int i12, float f10, float f11, List list, y4.d dVar) {
        super(s0Var, iArr, i10);
        x4.e eVar2;
        long j13;
        if (j12 < j10) {
            y4.r.i("AdaptiveTrackSelection", "Adjusting minDurationToRetainAfterDiscardMs to be at least minDurationForQualityIncreaseMs");
            eVar2 = eVar;
            j13 = j10;
        } else {
            eVar2 = eVar;
            j13 = j12;
        }
        this.f31735h = eVar2;
        this.f31736i = j10 * 1000;
        this.f31737j = j11 * 1000;
        this.f31738k = j13 * 1000;
        this.f31739l = i11;
        this.f31740m = i12;
        this.f31741n = f10;
        this.f31742o = f11;
        this.f31743p = o6.q.t(list);
        this.f31744q = dVar;
        this.f31745r = 1.0f;
        this.f31747t = 0;
        this.f31748u = -9223372036854775807L;
    }

    private int A(long j10, long j11) {
        long C = C(j11);
        int i10 = 0;
        for (int i11 = 0; i11 < this.f31769b; i11++) {
            if (j10 == Long.MIN_VALUE || !d(i11, j10)) {
                x1 h10 = h(i11);
                if (z(h10, h10.f4510h, C)) {
                    return i11;
                }
                i10 = i11;
            }
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static o6.q B(y.a[] aVarArr) {
        o6.q k10;
        long j10;
        ArrayList arrayList = new ArrayList();
        for (y.a aVar : aVarArr) {
            if (aVar != null && aVar.f31929b.length > 1) {
                q.a r10 = o6.q.r();
                r10.a(new C0357a(0L, 0L));
                arrayList.add(r10);
            } else {
                arrayList.add(null);
            }
        }
        long[][] G = G(aVarArr);
        int[] iArr = new int[G.length];
        long[] jArr = new long[G.length];
        for (int i10 = 0; i10 < G.length; i10++) {
            long[] jArr2 = G[i10];
            if (jArr2.length == 0) {
                j10 = 0;
            } else {
                j10 = jArr2[0];
            }
            jArr[i10] = j10;
        }
        y(arrayList, jArr);
        o6.q H = H(G);
        for (int i11 = 0; i11 < H.size(); i11++) {
            int intValue = ((Integer) H.get(i11)).intValue();
            int i12 = iArr[intValue] + 1;
            iArr[intValue] = i12;
            jArr[intValue] = G[intValue][i12];
            y(arrayList, jArr);
        }
        for (int i13 = 0; i13 < aVarArr.length; i13++) {
            if (arrayList.get(i13) != null) {
                jArr[i13] = jArr[i13] * 2;
            }
        }
        y(arrayList, jArr);
        q.a r11 = o6.q.r();
        for (int i14 = 0; i14 < arrayList.size(); i14++) {
            q.a aVar2 = (q.a) arrayList.get(i14);
            if (aVar2 == null) {
                k10 = o6.q.D();
            } else {
                k10 = aVar2.k();
            }
            r11.a(k10);
        }
        return r11.k();
    }

    private long C(long j10) {
        long j11;
        long I = I(j10);
        if (this.f31743p.isEmpty()) {
            return I;
        }
        int i10 = 1;
        while (i10 < this.f31743p.size() - 1 && ((C0357a) this.f31743p.get(i10)).f31750a < I) {
            i10++;
        }
        C0357a c0357a = (C0357a) this.f31743p.get(i10 - 1);
        C0357a c0357a2 = (C0357a) this.f31743p.get(i10);
        long j12 = c0357a.f31750a;
        return c0357a.f31751b + ((((float) (I - j12)) / ((float) (c0357a2.f31750a - j12))) * ((float) (c0357a2.f31751b - j11)));
    }

    private long D(List list) {
        if (list.isEmpty()) {
            return -9223372036854775807L;
        }
        f4.n nVar = (f4.n) o6.t.c(list);
        long j10 = nVar.f15784g;
        if (j10 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        long j11 = nVar.f15785h;
        if (j11 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        return j11 - j10;
    }

    private long F(f4.o[] oVarArr, List list) {
        int i10 = this.f31746s;
        if (i10 < oVarArr.length && oVarArr[i10].next()) {
            f4.o oVar = oVarArr[this.f31746s];
            return oVar.b() - oVar.a();
        }
        for (f4.o oVar2 : oVarArr) {
            if (oVar2.next()) {
                return oVar2.b() - oVar2.a();
            }
        }
        return D(list);
    }

    private static long[][] G(y.a[] aVarArr) {
        long[][] jArr = new long[aVarArr.length];
        for (int i10 = 0; i10 < aVarArr.length; i10++) {
            y.a aVar = aVarArr[i10];
            if (aVar == null) {
                jArr[i10] = new long[0];
            } else {
                jArr[i10] = new long[aVar.f31929b.length];
                int i11 = 0;
                while (true) {
                    int[] iArr = aVar.f31929b;
                    if (i11 >= iArr.length) {
                        break;
                    }
                    long j10 = aVar.f31928a.b(iArr[i11]).f4510h;
                    long[] jArr2 = jArr[i10];
                    if (j10 == -1) {
                        j10 = 0;
                    }
                    jArr2[i11] = j10;
                    i11++;
                }
                Arrays.sort(jArr[i10]);
            }
        }
        return jArr;
    }

    private static o6.q H(long[][] jArr) {
        double d10;
        o6.v c10 = o6.b0.a().a().c();
        for (int i10 = 0; i10 < jArr.length; i10++) {
            long[] jArr2 = jArr[i10];
            if (jArr2.length > 1) {
                int length = jArr2.length;
                double[] dArr = new double[length];
                int i11 = 0;
                while (true) {
                    long[] jArr3 = jArr[i10];
                    double d11 = 0.0d;
                    if (i11 >= jArr3.length) {
                        break;
                    }
                    long j10 = jArr3[i11];
                    if (j10 != -1) {
                        d11 = Math.log(j10);
                    }
                    dArr[i11] = d11;
                    i11++;
                }
                int i12 = length - 1;
                double d12 = dArr[i12] - dArr[0];
                int i13 = 0;
                while (i13 < i12) {
                    double d13 = dArr[i13];
                    i13++;
                    double d14 = (d13 + dArr[i13]) * 0.5d;
                    if (d12 == 0.0d) {
                        d10 = 1.0d;
                    } else {
                        d10 = (d14 - dArr[0]) / d12;
                    }
                    c10.put(Double.valueOf(d10), Integer.valueOf(i10));
                }
            }
        }
        return o6.q.t(c10.values());
    }

    private long I(long j10) {
        long d10;
        long i10 = ((float) this.f31735h.i()) * this.f31741n;
        if (this.f31735h.d() != -9223372036854775807L && j10 != -9223372036854775807L) {
            float f10 = (float) j10;
            return (((float) i10) * Math.max((f10 / this.f31745r) - ((float) d10), 0.0f)) / f10;
        }
        return ((float) i10) / this.f31745r;
    }

    private long J(long j10, long j11) {
        if (j10 == -9223372036854775807L) {
            return this.f31736i;
        }
        if (j11 != -9223372036854775807L) {
            j10 -= j11;
        }
        return Math.min(((float) j10) * this.f31742o, this.f31736i);
    }

    private static void y(List list, long[] jArr) {
        long j10 = 0;
        for (long j11 : jArr) {
            j10 += j11;
        }
        for (int i10 = 0; i10 < list.size(); i10++) {
            q.a aVar = (q.a) list.get(i10);
            if (aVar != null) {
                aVar.a(new C0357a(j10, jArr[i10]));
            }
        }
    }

    protected long E() {
        return this.f31738k;
    }

    protected boolean K(long j10, List list) {
        long j11 = this.f31748u;
        if (j11 != -9223372036854775807L && j10 - j11 < 1000 && (list.isEmpty() || ((f4.n) o6.t.c(list)).equals(this.f31749v))) {
            return false;
        }
        return true;
    }

    @Override // w4.y
    public int b() {
        return this.f31746s;
    }

    @Override // w4.c, w4.y
    public void e() {
        this.f31749v = null;
    }

    @Override // w4.y
    public void g(long j10, long j11, long j12, List list, f4.o[] oVarArr) {
        int m10;
        long elapsedRealtime = this.f31744q.elapsedRealtime();
        long F = F(oVarArr, list);
        int i10 = this.f31747t;
        if (i10 == 0) {
            this.f31747t = 1;
            this.f31746s = A(elapsedRealtime, F);
            return;
        }
        int i11 = this.f31746s;
        if (list.isEmpty()) {
            m10 = -1;
        } else {
            m10 = m(((f4.n) o6.t.c(list)).f15781d);
        }
        if (m10 != -1) {
            i10 = ((f4.n) o6.t.c(list)).f15782e;
            i11 = m10;
        }
        int A = A(elapsedRealtime, F);
        if (!d(i11, elapsedRealtime)) {
            x1 h10 = h(i11);
            x1 h11 = h(A);
            long J = J(j12, F);
            int i12 = h11.f4510h;
            int i13 = h10.f4510h;
            if ((i12 > i13 && j11 < J) || (i12 < i13 && j11 >= this.f31737j)) {
                A = i11;
            }
        }
        if (A != i11) {
            i10 = 3;
        }
        this.f31747t = i10;
        this.f31746s = A;
    }

    @Override // w4.c, w4.y
    public void i() {
        this.f31748u = -9223372036854775807L;
        this.f31749v = null;
    }

    @Override // w4.c, w4.y
    public int k(long j10, List list) {
        f4.n nVar;
        int i10;
        int i11;
        long elapsedRealtime = this.f31744q.elapsedRealtime();
        if (!K(elapsedRealtime, list)) {
            return list.size();
        }
        this.f31748u = elapsedRealtime;
        if (list.isEmpty()) {
            nVar = null;
        } else {
            nVar = (f4.n) o6.t.c(list);
        }
        this.f31749v = nVar;
        if (list.isEmpty()) {
            return 0;
        }
        int size = list.size();
        long e02 = q0.e0(((f4.n) list.get(size - 1)).f15784g - j10, this.f31745r);
        long E = E();
        if (e02 < E) {
            return size;
        }
        x1 h10 = h(A(elapsedRealtime, D(list)));
        for (int i12 = 0; i12 < size; i12++) {
            f4.n nVar2 = (f4.n) list.get(i12);
            x1 x1Var = nVar2.f15781d;
            if (q0.e0(nVar2.f15784g - j10, this.f31745r) >= E && x1Var.f4510h < h10.f4510h && (i10 = x1Var.f4520r) != -1 && i10 <= this.f31740m && (i11 = x1Var.f4519q) != -1 && i11 <= this.f31739l && i10 < h10.f4520r) {
                return i12;
            }
        }
        return size;
    }

    @Override // w4.y
    public int o() {
        return this.f31747t;
    }

    @Override // w4.c, w4.y
    public void p(float f10) {
        this.f31745r = f10;
    }

    @Override // w4.y
    public Object q() {
        return null;
    }

    protected boolean z(x1 x1Var, int i10, long j10) {
        return ((long) i10) <= j10;
    }
}
