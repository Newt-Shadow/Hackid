package td;
/* loaded from: classes2.dex */
public abstract class h1 {

    /* renamed from: a  reason: collision with root package name */
    private static final yd.f0 f30651a = new yd.f0("REMOVED_TASK");

    /* renamed from: b  reason: collision with root package name */
    private static final yd.f0 f30652b = new yd.f0("CLOSED_EMPTY");

    public static final long c(long j10) {
        if (j10 <= 0) {
            return 0L;
        }
        if (j10 >= 9223372036854L) {
            return Long.MAX_VALUE;
        }
        return 1000000 * j10;
    }
}
