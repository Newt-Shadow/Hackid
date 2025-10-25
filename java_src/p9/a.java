package p9;

import d9.j;
import d9.l;
import d9.n;
import d9.o;
import d9.p;
import j9.b;
import j9.e;
import java.util.Map;
import q9.c;
/* loaded from: classes.dex */
public final class a implements l {

    /* renamed from: b  reason: collision with root package name */
    private static final p[] f27900b = new p[0];

    /* renamed from: a  reason: collision with root package name */
    private final c f27901a = new c();

    private static b d(b bVar) {
        int[] i10 = bVar.i();
        if (i10 != null) {
            int i11 = i10[0];
            int i12 = i10[1];
            int i13 = i10[2];
            int i14 = i10[3];
            b bVar2 = new b(30, 33);
            for (int i15 = 0; i15 < 33; i15++) {
                int min = Math.min((((i15 * i14) + (i14 / 2)) / 33) + i12, i14 - 1);
                for (int i16 = 0; i16 < 30; i16++) {
                    if (bVar.e(Math.min((((i16 * i13) + (i13 / 2)) + (((i15 & 1) * i13) / 2)) / 30, i13 - 1) + i11, min)) {
                        bVar2.q(i16, i15);
                    }
                }
            }
            return bVar2;
        }
        throw j.a();
    }

    @Override // d9.l
    public void a() {
    }

    @Override // d9.l
    public n b(d9.c cVar, Map map) {
        e b10 = this.f27901a.b(d(cVar.a()), map);
        n nVar = new n(b10.k(), b10.g(), f27900b, d9.a.MAXICODE);
        nVar.h(o.ERRORS_CORRECTED, b10.d());
        String b11 = b10.b();
        if (b11 != null) {
            nVar.h(o.ERROR_CORRECTION_LEVEL, b11);
        }
        return nVar;
    }

    @Override // d9.l
    public n c(d9.c cVar) {
        return b(cVar, null);
    }
}
