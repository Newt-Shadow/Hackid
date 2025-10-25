package m9;

import d9.c;
import d9.j;
import d9.l;
import d9.n;
import d9.o;
import d9.p;
import j9.b;
import j9.e;
import j9.g;
import java.util.List;
import java.util.Map;
import n9.d;
/* loaded from: classes.dex */
public final class a implements l {

    /* renamed from: b  reason: collision with root package name */
    private static final p[] f26011b = new p[0];

    /* renamed from: a  reason: collision with root package name */
    private final d f26012a = new d();

    private static b d(b bVar) {
        int[] l10 = bVar.l();
        int[] f10 = bVar.f();
        if (l10 != null && f10 != null) {
            int e10 = e(l10, bVar);
            int i10 = l10[1];
            int i11 = f10[1];
            int i12 = l10[0];
            int i13 = ((f10[0] - i12) + 1) / e10;
            int i14 = ((i11 - i10) + 1) / e10;
            if (i13 > 0 && i14 > 0) {
                int i15 = e10 / 2;
                int i16 = i10 + i15;
                int i17 = i12 + i15;
                b bVar2 = new b(i13, i14);
                for (int i18 = 0; i18 < i14; i18++) {
                    int i19 = (i18 * e10) + i16;
                    for (int i20 = 0; i20 < i13; i20++) {
                        if (bVar.e((i20 * e10) + i17, i19)) {
                            bVar2.q(i20, i18);
                        }
                    }
                }
                return bVar2;
            }
            throw j.a();
        }
        throw j.a();
    }

    private static int e(int[] iArr, b bVar) {
        int m10 = bVar.m();
        int i10 = iArr[0];
        int i11 = iArr[1];
        while (i10 < m10 && bVar.e(i10, i11)) {
            i10++;
        }
        if (i10 != m10) {
            int i12 = i10 - iArr[0];
            if (i12 != 0) {
                return i12;
            }
            throw j.a();
        }
        throw j.a();
    }

    @Override // d9.l
    public void a() {
    }

    @Override // d9.l
    public n b(c cVar, Map map) {
        p[] b10;
        e eVar;
        if (map != null && map.containsKey(d9.e.PURE_BARCODE)) {
            eVar = this.f26012a.b(d(cVar.a()));
            b10 = f26011b;
        } else {
            g b11 = new o9.a(cVar.a()).b();
            e b12 = this.f26012a.b(b11.a());
            b10 = b11.b();
            eVar = b12;
        }
        n nVar = new n(eVar.k(), eVar.g(), b10, d9.a.DATA_MATRIX);
        List a10 = eVar.a();
        if (a10 != null) {
            nVar.h(o.BYTE_SEGMENTS, a10);
        }
        String b13 = eVar.b();
        if (b13 != null) {
            nVar.h(o.ERROR_CORRECTION_LEVEL, b13);
        }
        nVar.h(o.ERRORS_CORRECTED, eVar.d());
        o oVar = o.SYMBOLOGY_IDENTIFIER;
        nVar.h(oVar, "]d" + eVar.j());
        return nVar;
    }

    @Override // d9.l
    public n c(c cVar) {
        return b(cVar, null);
    }
}
