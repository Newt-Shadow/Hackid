package r3;

import android.util.Pair;
import b3.e3;
import g3.l;
import y4.e0;
import y4.q0;
import y4.r;
/* loaded from: classes.dex */
abstract class d {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f28920a;

        /* renamed from: b  reason: collision with root package name */
        public final long f28921b;

        private a(int i10, long j10) {
            this.f28920a = i10;
            this.f28921b = j10;
        }

        public static a a(l lVar, e0 e0Var) {
            lVar.p(e0Var.e(), 0, 8);
            e0Var.T(0);
            return new a(e0Var.p(), e0Var.w());
        }
    }

    public static boolean a(l lVar) {
        e0 e0Var = new e0(8);
        int i10 = a.a(lVar, e0Var).f28920a;
        if (i10 != 1380533830 && i10 != 1380333108) {
            return false;
        }
        lVar.p(e0Var.e(), 0, 4);
        e0Var.T(0);
        int p10 = e0Var.p();
        if (p10 != 1463899717) {
            r.c("WavHeaderReader", "Unsupported form type: " + p10);
            return false;
        }
        return true;
    }

    public static c b(l lVar) {
        boolean z10;
        byte[] bArr;
        e0 e0Var = new e0(16);
        a d10 = d(1718449184, lVar, e0Var);
        if (d10.f28921b >= 16) {
            z10 = true;
        } else {
            z10 = false;
        }
        y4.a.f(z10);
        lVar.p(e0Var.e(), 0, 16);
        e0Var.T(0);
        int y10 = e0Var.y();
        int y11 = e0Var.y();
        int x10 = e0Var.x();
        int x11 = e0Var.x();
        int y12 = e0Var.y();
        int y13 = e0Var.y();
        int i10 = ((int) d10.f28921b) - 16;
        if (i10 > 0) {
            byte[] bArr2 = new byte[i10];
            lVar.p(bArr2, 0, i10);
            bArr = bArr2;
        } else {
            bArr = q0.f32951f;
        }
        lVar.m((int) (lVar.g() - lVar.c()));
        return new c(y10, y11, x10, x11, y12, y13, bArr);
    }

    public static long c(l lVar) {
        e0 e0Var = new e0(8);
        a a10 = a.a(lVar, e0Var);
        if (a10.f28920a != 1685272116) {
            lVar.l();
            return -1L;
        }
        lVar.h(8);
        e0Var.T(0);
        lVar.p(e0Var.e(), 0, 8);
        long u10 = e0Var.u();
        lVar.m(((int) a10.f28921b) + 8);
        return u10;
    }

    private static a d(int i10, l lVar, e0 e0Var) {
        a a10 = a.a(lVar, e0Var);
        while (a10.f28920a != i10) {
            r.i("WavHeaderReader", "Ignoring unknown WAV chunk: " + a10.f28920a);
            long j10 = a10.f28921b + 8;
            if (j10 <= 2147483647L) {
                lVar.m((int) j10);
                a10 = a.a(lVar, e0Var);
            } else {
                throw e3.d("Chunk is too large (~2GB+) to skip; id: " + a10.f28920a);
            }
        }
        return a10;
    }

    public static Pair e(l lVar) {
        lVar.l();
        a d10 = d(1684108385, lVar, new e0(8));
        lVar.m(8);
        return Pair.create(Long.valueOf(lVar.c()), Long.valueOf(d10.f28921b));
    }
}
