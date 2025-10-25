package com.google.android.gms.internal.measurement;

import java.util.Iterator;
/* loaded from: classes.dex */
public final class i0 extends w {
    /* JADX INFO: Access modifiers changed from: protected */
    public i0() {
        this.f6857a.add(m0.FOR_IN);
        this.f6857a.add(m0.FOR_IN_CONST);
        this.f6857a.add(m0.FOR_IN_LET);
        this.f6857a.add(m0.FOR_LET);
        this.f6857a.add(m0.FOR_OF);
        this.f6857a.add(m0.FOR_OF_CONST);
        this.f6857a.add(m0.FOR_OF_LET);
        this.f6857a.add(m0.WHILE);
    }

    private static p c(g0 g0Var, p pVar, p pVar2) {
        return e(g0Var, pVar.i(), pVar2);
    }

    private static p d(g0 g0Var, p pVar, p pVar2) {
        if (pVar instanceof Iterable) {
            return e(g0Var, ((Iterable) pVar).iterator(), pVar2);
        }
        throw new IllegalArgumentException("Non-iterable type in for...of loop.");
    }

    private static p e(g0 g0Var, Iterator it, p pVar) {
        if (it != null) {
            while (it.hasNext()) {
                p b10 = g0Var.a((p) it.next()).b((f) pVar);
                if (b10 instanceof h) {
                    h hVar = (h) b10;
                    if ("break".equals(hVar.b())) {
                        return p.f6622j0;
                    }
                    if ("return".equals(hVar.b())) {
                        return hVar;
                    }
                }
            }
        }
        return p.f6622j0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:69:0x02b2, code lost:
        if ("return".equals(r1.b()) != false) goto L85;
     */
    @Override // com.google.android.gms.internal.measurement.w
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.measurement.p a(java.lang.String r11, com.google.android.gms.internal.measurement.z4 r12, java.util.List r13) {
        /*
            Method dump skipped, instructions count: 770
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.i0.a(java.lang.String, com.google.android.gms.internal.measurement.z4, java.util.List):com.google.android.gms.internal.measurement.p");
    }
}
