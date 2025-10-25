package od;

import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public final class f extends d {

    /* renamed from: e  reason: collision with root package name */
    public static final a f27577e = new a(null);

    /* renamed from: f  reason: collision with root package name */
    private static final f f27578f = new f(1, 0);

    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final f a() {
            return f.f27578f;
        }
    }

    public f(long j10, long j11) {
        super(j10, j11, 1L);
    }

    @Override // od.d
    public boolean equals(Object obj) {
        if (obj instanceof f) {
            if (!isEmpty() || !((f) obj).isEmpty()) {
                f fVar = (f) obj;
                if (g() != fVar.g() || i() != fVar.i()) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // od.d
    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (int) ((31 * (g() ^ (g() >>> 32))) + (i() ^ (i() >>> 32)));
    }

    @Override // od.d
    public boolean isEmpty() {
        if (g() > i()) {
            return true;
        }
        return false;
    }

    @Override // od.d
    public String toString() {
        return g() + ".." + i();
    }
}
