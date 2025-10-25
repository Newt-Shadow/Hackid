package vd;
/* loaded from: classes2.dex */
public abstract class j {
    public static final g a(int i10, a aVar, id.l lVar) {
        g sVar;
        if (i10 != -2) {
            boolean z10 = false;
            if (i10 != -1) {
                if (i10 != 0) {
                    if (i10 != Integer.MAX_VALUE) {
                        if (aVar == a.f31354a) {
                            return new e(i10, lVar);
                        }
                        return new s(i10, aVar, lVar);
                    }
                    return new e(Integer.MAX_VALUE, lVar);
                } else if (aVar == a.f31354a) {
                    sVar = new e(0, lVar);
                } else {
                    sVar = new s(1, aVar, lVar);
                }
            } else {
                if (aVar == a.f31354a) {
                    z10 = true;
                }
                if (z10) {
                    return new s(1, a.f31355b, lVar);
                }
                throw new IllegalArgumentException("CONFLATED capacity cannot be used with non-default onBufferOverflow".toString());
            }
        } else if (aVar == a.f31354a) {
            sVar = new e(g.f31399u0.a(), lVar);
        } else {
            sVar = new s(1, aVar, lVar);
        }
        return sVar;
    }

    public static /* synthetic */ g b(int i10, a aVar, id.l lVar, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 0;
        }
        if ((i11 & 2) != 0) {
            aVar = a.f31354a;
        }
        if ((i11 & 4) != 0) {
            lVar = null;
        }
        return a(i10, aVar, lVar);
    }
}
