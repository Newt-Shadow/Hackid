package r9;

import java.util.Arrays;
import java.util.Map;
/* loaded from: classes.dex */
public abstract class k implements d9.l {
    /* JADX WARN: Removed duplicated region for block: B:41:0x007c A[Catch: m -> 0x00cc, TRY_LEAVE, TryCatch #0 {m -> 0x00cc, blocks: (B:39:0x0076, B:41:0x007c), top: B:66:0x0076 }] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x00cb A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private d9.n e(d9.c r22, java.util.Map r23) {
        /*
            Method dump skipped, instructions count: 238
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: r9.k.e(d9.c, java.util.Map):d9.n");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static float f(int[] iArr, int[] iArr2, float f10) {
        float f11;
        int length = iArr.length;
        int i10 = 0;
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12++) {
            i10 += iArr[i12];
            i11 += iArr2[i12];
        }
        if (i10 < i11) {
            return Float.POSITIVE_INFINITY;
        }
        float f12 = i10;
        float f13 = f12 / i11;
        float f14 = f10 * f13;
        float f15 = 0.0f;
        for (int i13 = 0; i13 < length; i13++) {
            float f16 = iArr2[i13] * f13;
            float f17 = iArr[i13];
            if (f17 > f16) {
                f11 = f17 - f16;
            } else {
                f11 = f16 - f17;
            }
            if (f11 > f14) {
                return Float.POSITIVE_INFINITY;
            }
            f15 += f11;
        }
        return f15 / f12;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void g(j9.a aVar, int i10, int[] iArr) {
        int length = iArr.length;
        int i11 = 0;
        Arrays.fill(iArr, 0, length, 0);
        int i12 = aVar.i();
        if (i10 < i12) {
            boolean z10 = !aVar.c(i10);
            while (i10 < i12) {
                if (aVar.c(i10) != z10) {
                    iArr[i11] = iArr[i11] + 1;
                } else {
                    i11++;
                    if (i11 == length) {
                        break;
                    }
                    iArr[i11] = 1;
                    z10 = !z10;
                }
                i10++;
            }
            if (i11 != length) {
                if (i11 != length - 1 || i10 != i12) {
                    throw d9.j.a();
                }
                return;
            }
            return;
        }
        throw d9.j.a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void h(j9.a aVar, int i10, int[] iArr) {
        int length = iArr.length;
        boolean c10 = aVar.c(i10);
        while (i10 > 0 && length >= 0) {
            i10--;
            if (aVar.c(i10) != c10) {
                length--;
                c10 = !c10;
            }
        }
        if (length < 0) {
            g(aVar, i10 + 1, iArr);
            return;
        }
        throw d9.j.a();
    }

    @Override // d9.l
    public void a() {
    }

    @Override // d9.l
    public d9.n b(d9.c cVar, Map map) {
        boolean z10;
        try {
            return e(cVar, map);
        } catch (d9.j e10) {
            if (map != null && map.containsKey(d9.e.TRY_HARDER)) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (z10 && cVar.e()) {
                d9.c f10 = cVar.f();
                d9.n e11 = e(f10, map);
                Map d10 = e11.d();
                int i10 = 270;
                if (d10 != null) {
                    d9.o oVar = d9.o.ORIENTATION;
                    if (d10.containsKey(oVar)) {
                        i10 = (((Integer) d10.get(oVar)).intValue() + 270) % 360;
                    }
                }
                e11.h(d9.o.ORIENTATION, Integer.valueOf(i10));
                d9.p[] e12 = e11.e();
                if (e12 != null) {
                    int c10 = f10.c();
                    for (int i11 = 0; i11 < e12.length; i11++) {
                        e12[i11] = new d9.p((c10 - e12[i11].d()) - 1.0f, e12[i11].c());
                    }
                }
                return e11;
            }
            throw e10;
        }
    }

    @Override // d9.l
    public d9.n c(d9.c cVar) {
        return b(cVar, null);
    }

    public abstract d9.n d(int i10, j9.a aVar, Map map);
}
