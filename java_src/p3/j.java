package p3;

import b3.e3;
import b3.x1;
import g3.e0;
import java.util.ArrayList;
import java.util.Arrays;
import kotlin.KotlinVersion;
import o6.q;
import p3.i;
/* loaded from: classes.dex */
final class j extends i {

    /* renamed from: n  reason: collision with root package name */
    private a f27850n;

    /* renamed from: o  reason: collision with root package name */
    private int f27851o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f27852p;

    /* renamed from: q  reason: collision with root package name */
    private e0.d f27853q;

    /* renamed from: r  reason: collision with root package name */
    private e0.b f27854r;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final e0.d f27855a;

        /* renamed from: b  reason: collision with root package name */
        public final e0.b f27856b;

        /* renamed from: c  reason: collision with root package name */
        public final byte[] f27857c;

        /* renamed from: d  reason: collision with root package name */
        public final e0.c[] f27858d;

        /* renamed from: e  reason: collision with root package name */
        public final int f27859e;

        public a(e0.d dVar, e0.b bVar, byte[] bArr, e0.c[] cVarArr, int i10) {
            this.f27855a = dVar;
            this.f27856b = bVar;
            this.f27857c = bArr;
            this.f27858d = cVarArr;
            this.f27859e = i10;
        }
    }

    static void n(y4.e0 e0Var, long j10) {
        if (e0Var.b() < e0Var.g() + 4) {
            e0Var.Q(Arrays.copyOf(e0Var.e(), e0Var.g() + 4));
        } else {
            e0Var.S(e0Var.g() + 4);
        }
        byte[] e10 = e0Var.e();
        e10[e0Var.g() - 4] = (byte) (j10 & 255);
        e10[e0Var.g() - 3] = (byte) ((j10 >>> 8) & 255);
        e10[e0Var.g() - 2] = (byte) ((j10 >>> 16) & 255);
        e10[e0Var.g() - 1] = (byte) ((j10 >>> 24) & 255);
    }

    private static int o(byte b10, a aVar) {
        if (!aVar.f27858d[p(b10, aVar.f27859e, 1)].f16188a) {
            return aVar.f27855a.f16198g;
        }
        return aVar.f27855a.f16199h;
    }

    static int p(byte b10, int i10, int i11) {
        return (b10 >> i11) & (KotlinVersion.MAX_COMPONENT_VALUE >>> (8 - i10));
    }

    public static boolean r(y4.e0 e0Var) {
        try {
            return e0.m(1, e0Var, true);
        } catch (e3 unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p3.i
    public void e(long j10) {
        boolean z10;
        super.e(j10);
        int i10 = 0;
        if (j10 != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.f27852p = z10;
        e0.d dVar = this.f27853q;
        if (dVar != null) {
            i10 = dVar.f16198g;
        }
        this.f27851o = i10;
    }

    @Override // p3.i
    protected long f(y4.e0 e0Var) {
        int i10 = 0;
        if ((e0Var.e()[0] & 1) == 1) {
            return -1L;
        }
        int o10 = o(e0Var.e()[0], (a) y4.a.h(this.f27850n));
        if (this.f27852p) {
            i10 = (this.f27851o + o10) / 4;
        }
        long j10 = i10;
        n(e0Var, j10);
        this.f27852p = true;
        this.f27851o = o10;
        return j10;
    }

    @Override // p3.i
    protected boolean i(y4.e0 e0Var, long j10, i.b bVar) {
        if (this.f27850n != null) {
            y4.a.e(bVar.f27848a);
            return false;
        }
        a q10 = q(e0Var);
        this.f27850n = q10;
        if (q10 == null) {
            return true;
        }
        e0.d dVar = q10.f27855a;
        ArrayList arrayList = new ArrayList();
        arrayList.add(dVar.f16201j);
        arrayList.add(q10.f27857c);
        bVar.f27848a = new x1.b().g0("audio/vorbis").I(dVar.f16196e).b0(dVar.f16195d).J(dVar.f16193b).h0(dVar.f16194c).V(arrayList).Z(e0.c(q.y(q10.f27856b.f16186b))).G();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p3.i
    public void l(boolean z10) {
        super.l(z10);
        if (z10) {
            this.f27850n = null;
            this.f27853q = null;
            this.f27854r = null;
        }
        this.f27851o = 0;
        this.f27852p = false;
    }

    a q(y4.e0 e0Var) {
        e0.d dVar = this.f27853q;
        if (dVar == null) {
            this.f27853q = e0.k(e0Var);
            return null;
        }
        e0.b bVar = this.f27854r;
        if (bVar == null) {
            this.f27854r = e0.i(e0Var);
            return null;
        }
        byte[] bArr = new byte[e0Var.g()];
        System.arraycopy(e0Var.e(), 0, bArr, 0, e0Var.g());
        e0.c[] l10 = e0.l(e0Var, dVar.f16193b);
        return new a(dVar, bVar, bArr, l10, e0.a(l10.length - 1));
    }
}
