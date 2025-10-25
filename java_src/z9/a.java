package z9;

import aa.e;
import aa.i;
import d9.c;
import d9.j;
import d9.l;
import d9.n;
import d9.o;
import d9.p;
import j9.b;
import j9.g;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class a implements l {

    /* renamed from: b  reason: collision with root package name */
    private static final p[] f33588b = new p[0];

    /* renamed from: a  reason: collision with root package name */
    private final e f33589a = new e();

    private static b d(b bVar) {
        int[] l10 = bVar.l();
        int[] f10 = bVar.f();
        if (l10 != null && f10 != null) {
            float e10 = e(l10, bVar);
            int i10 = l10[1];
            int i11 = f10[1];
            int i12 = l10[0];
            int i13 = f10[0];
            if (i12 < i13 && i10 < i11) {
                int i14 = i11 - i10;
                if (i14 != i13 - i12 && (i13 = i12 + i14) >= bVar.m()) {
                    throw j.a();
                }
                int round = Math.round(((i13 - i12) + 1) / e10);
                int round2 = Math.round((i14 + 1) / e10);
                if (round > 0 && round2 > 0) {
                    if (round2 == round) {
                        int i15 = (int) (e10 / 2.0f);
                        int i16 = i10 + i15;
                        int i17 = i12 + i15;
                        int i18 = (((int) ((round - 1) * e10)) + i17) - i13;
                        if (i18 > 0) {
                            if (i18 <= i15) {
                                i17 -= i18;
                            } else {
                                throw j.a();
                            }
                        }
                        int i19 = (((int) ((round2 - 1) * e10)) + i16) - i11;
                        if (i19 > 0) {
                            if (i19 <= i15) {
                                i16 -= i19;
                            } else {
                                throw j.a();
                            }
                        }
                        b bVar2 = new b(round, round2);
                        for (int i20 = 0; i20 < round2; i20++) {
                            int i21 = ((int) (i20 * e10)) + i16;
                            for (int i22 = 0; i22 < round; i22++) {
                                if (bVar.e(((int) (i22 * e10)) + i17, i21)) {
                                    bVar2.q(i22, i20);
                                }
                            }
                        }
                        return bVar2;
                    }
                    throw j.a();
                }
                throw j.a();
            }
            throw j.a();
        }
        throw j.a();
    }

    private static float e(int[] iArr, b bVar) {
        int j10 = bVar.j();
        int m10 = bVar.m();
        int i10 = iArr[0];
        boolean z10 = true;
        int i11 = iArr[1];
        int i12 = 0;
        while (i10 < m10 && i11 < j10) {
            if (z10 != bVar.e(i10, i11)) {
                i12++;
                if (i12 == 5) {
                    break;
                }
                z10 = !z10;
            }
            i10++;
            i11++;
        }
        if (i10 != m10 && i11 != j10) {
            return (i10 - iArr[0]) / 7.0f;
        }
        throw j.a();
    }

    @Override // d9.l
    public void a() {
    }

    @Override // d9.l
    public final n b(c cVar, Map map) {
        p[] b10;
        j9.e eVar;
        if (map != null && map.containsKey(d9.e.PURE_BARCODE)) {
            eVar = this.f33589a.c(d(cVar.a()), map);
            b10 = f33588b;
        } else {
            g e10 = new ba.c(cVar.a()).e(map);
            j9.e c10 = this.f33589a.c(e10.a(), map);
            b10 = e10.b();
            eVar = c10;
        }
        if (eVar.f() instanceof i) {
            ((i) eVar.f()).a(b10);
        }
        n nVar = new n(eVar.k(), eVar.g(), b10, d9.a.QR_CODE);
        List a10 = eVar.a();
        if (a10 != null) {
            nVar.h(o.BYTE_SEGMENTS, a10);
        }
        String b11 = eVar.b();
        if (b11 != null) {
            nVar.h(o.ERROR_CORRECTION_LEVEL, b11);
        }
        if (eVar.l()) {
            nVar.h(o.STRUCTURED_APPEND_SEQUENCE, Integer.valueOf(eVar.i()));
            nVar.h(o.STRUCTURED_APPEND_PARITY, Integer.valueOf(eVar.h()));
        }
        nVar.h(o.ERRORS_CORRECTED, eVar.d());
        o oVar = o.SYMBOLOGY_IDENTIFIER;
        nVar.h(oVar, "]Q" + eVar.j());
        return nVar;
    }

    @Override // d9.l
    public n c(c cVar) {
        return b(cVar, null);
    }
}
