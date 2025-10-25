package ce;

import yd.f0;
import yd.i0;
/* loaded from: classes2.dex */
public abstract class j {

    /* renamed from: a  reason: collision with root package name */
    private static final int f5191a;

    /* renamed from: b  reason: collision with root package name */
    private static final f0 f5192b;

    /* renamed from: c  reason: collision with root package name */
    private static final f0 f5193c;

    /* renamed from: d  reason: collision with root package name */
    private static final f0 f5194d;

    /* renamed from: e  reason: collision with root package name */
    private static final f0 f5195e;

    /* renamed from: f  reason: collision with root package name */
    private static final int f5196f;

    static {
        int e10;
        int e11;
        e10 = i0.e("kotlinx.coroutines.semaphore.maxSpinCycles", 100, 0, 0, 12, null);
        f5191a = e10;
        f5192b = new f0("PERMIT");
        f5193c = new f0("TAKEN");
        f5194d = new f0("BROKEN");
        f5195e = new f0("CANCELLED");
        e11 = i0.e("kotlinx.coroutines.semaphore.segmentSize", 16, 0, 0, 12, null);
        f5196f = e11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final k h(long j10, k kVar) {
        return new k(j10, kVar, 0);
    }
}
