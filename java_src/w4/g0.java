package w4;

import android.os.SystemClock;
import b3.l4;
import d4.s0;
import d4.u0;
import java.util.Arrays;
import java.util.List;
import o6.q;
import w4.a0;
import x4.d0;
/* loaded from: classes.dex */
public abstract class g0 {
    public static l4 a(a0.a aVar, List[] listArr) {
        boolean z10;
        boolean z11;
        q.a aVar2 = new q.a();
        for (int i10 = 0; i10 < aVar.d(); i10++) {
            u0 f10 = aVar.f(i10);
            List list = listArr[i10];
            for (int i11 = 0; i11 < f10.f14962a; i11++) {
                s0 b10 = f10.b(i11);
                if (aVar.a(i10, i11, false) != 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                int i12 = b10.f14950a;
                int[] iArr = new int[i12];
                boolean[] zArr = new boolean[i12];
                for (int i13 = 0; i13 < b10.f14950a; i13++) {
                    iArr[i13] = aVar.g(i10, i11, i13);
                    int i14 = 0;
                    while (true) {
                        if (i14 < list.size()) {
                            b0 b0Var = (b0) list.get(i14);
                            if (b0Var.a().equals(b10) && b0Var.u(i13) != -1) {
                                z11 = true;
                                break;
                            }
                            i14++;
                        } else {
                            z11 = false;
                            break;
                        }
                    }
                    zArr[i13] = z11;
                }
                aVar2.a(new l4.a(b10, z10, iArr, zArr));
            }
        }
        u0 h10 = aVar.h();
        for (int i15 = 0; i15 < h10.f14962a; i15++) {
            s0 b11 = h10.b(i15);
            int[] iArr2 = new int[b11.f14950a];
            Arrays.fill(iArr2, 0);
            aVar2.a(new l4.a(b11, false, iArr2, new boolean[b11.f14950a]));
        }
        return new l4(aVar2.k());
    }

    public static l4 b(a0.a aVar, b0[] b0VarArr) {
        o6.q D;
        List[] listArr = new List[b0VarArr.length];
        for (int i10 = 0; i10 < b0VarArr.length; i10++) {
            b0 b0Var = b0VarArr[i10];
            if (b0Var != null) {
                D = o6.q.F(b0Var);
            } else {
                D = o6.q.D();
            }
            listArr[i10] = D;
        }
        return a(aVar, listArr);
    }

    public static d0.a c(y yVar) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        int length = yVar.length();
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            if (yVar.d(i11, elapsedRealtime)) {
                i10++;
            }
        }
        return new d0.a(1, 0, length, i10);
    }
}
