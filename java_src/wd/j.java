package wd;

import td.t1;
import xd.k;
/* loaded from: classes2.dex */
public abstract /* synthetic */ class j {
    public static final d a(d dVar, int i10, vd.a aVar) {
        boolean z10;
        int i11;
        vd.a aVar2;
        boolean z11 = true;
        if (i10 < 0 && i10 != -2 && i10 != -1) {
            z10 = false;
        } else {
            z10 = true;
        }
        if (z10) {
            if (i10 == -1 && aVar != vd.a.f31354a) {
                z11 = false;
            }
            if (z11) {
                if (i10 == -1) {
                    aVar2 = vd.a.f31355b;
                    i11 = 0;
                } else {
                    i11 = i10;
                    aVar2 = aVar;
                }
                if (dVar instanceof xd.k) {
                    return k.a.a((xd.k) dVar, null, i11, aVar2, 1, null);
                }
                return new xd.h(dVar, null, i11, aVar2, 2, null);
            }
            throw new IllegalArgumentException("CONFLATED capacity cannot be used with non-default onBufferOverflow".toString());
        }
        throw new IllegalArgumentException(("Buffer size should be non-negative, BUFFERED, or CONFLATED, but was " + i10).toString());
    }

    public static /* synthetic */ d b(d dVar, int i10, vd.a aVar, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = -2;
        }
        if ((i11 & 2) != 0) {
            aVar = vd.a.f31354a;
        }
        return f.b(dVar, i10, aVar);
    }

    private static final void c(ad.i iVar) {
        boolean z10;
        if (iVar.a(t1.f30695t0) == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            return;
        }
        throw new IllegalArgumentException(("Flow context cannot contain job in it. Had " + iVar).toString());
    }

    public static final d d(d dVar) {
        d b10;
        b10 = b(dVar, -1, null, 2, null);
        return b10;
    }

    public static final d e(d dVar, ad.i iVar) {
        c(iVar);
        if (!kotlin.jvm.internal.m.a(iVar, ad.j.f295a)) {
            if (dVar instanceof xd.k) {
                return k.a.a((xd.k) dVar, iVar, 0, null, 6, null);
            }
            return new xd.h(dVar, iVar, 0, null, 12, null);
        }
        return dVar;
    }
}
