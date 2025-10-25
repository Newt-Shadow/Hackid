package xd;
/* loaded from: classes2.dex */
public interface k extends wd.d {

    /* loaded from: classes2.dex */
    public static final class a {
        public static /* synthetic */ wd.d a(k kVar, ad.i iVar, int i10, vd.a aVar, int i11, Object obj) {
            if (obj == null) {
                if ((i11 & 1) != 0) {
                    iVar = ad.j.f295a;
                }
                if ((i11 & 2) != 0) {
                    i10 = -3;
                }
                if ((i11 & 4) != 0) {
                    aVar = vd.a.f31354a;
                }
                return kVar.a(iVar, i10, aVar);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fuse");
        }
    }

    wd.d a(ad.i iVar, int i10, vd.a aVar);
}
