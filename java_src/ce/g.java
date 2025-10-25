package ce;

import yd.f0;
/* loaded from: classes2.dex */
public abstract class g {

    /* renamed from: a  reason: collision with root package name */
    private static final f0 f5179a = new f0("NO_OWNER");

    /* renamed from: b  reason: collision with root package name */
    private static final f0 f5180b = new f0("ALREADY_LOCKED_BY_OWNER");

    public static final a a(boolean z10) {
        return new f(z10);
    }

    public static /* synthetic */ a b(boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        return a(z10);
    }
}
