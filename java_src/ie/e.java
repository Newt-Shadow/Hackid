package ie;

import id.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public final class e {

    /* renamed from: e  reason: collision with root package name */
    private static final a f17416e = new a(null);

    /* renamed from: f  reason: collision with root package name */
    private static final long[] f17417f = new long[0];

    /* renamed from: a  reason: collision with root package name */
    private final ge.d f17418a;

    /* renamed from: b  reason: collision with root package name */
    private final Function2 f17419b;

    /* renamed from: c  reason: collision with root package name */
    private long f17420c;

    /* renamed from: d  reason: collision with root package name */
    private final long[] f17421d;

    /* loaded from: classes2.dex */
    private static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public e(ge.d descriptor, Function2 readIfAbsent) {
        kotlin.jvm.internal.m.e(descriptor, "descriptor");
        kotlin.jvm.internal.m.e(readIfAbsent, "readIfAbsent");
        this.f17418a = descriptor;
        this.f17419b = readIfAbsent;
        int f10 = descriptor.f();
        if (f10 <= 64) {
            this.f17420c = f10 != 64 ? (-1) << f10 : 0L;
            this.f17421d = f17417f;
            return;
        }
        this.f17420c = 0L;
        this.f17421d = e(f10);
    }

    private final void b(int i10) {
        int i11 = (i10 >>> 6) - 1;
        long[] jArr = this.f17421d;
        jArr[i11] = jArr[i11] | (1 << (i10 & 63));
    }

    private final int c() {
        int length = this.f17421d.length;
        int i10 = 0;
        while (i10 < length) {
            int i11 = i10 + 1;
            int i12 = i11 * 64;
            long j10 = this.f17421d[i10];
            while (j10 != -1) {
                int numberOfTrailingZeros = Long.numberOfTrailingZeros(~j10);
                j10 |= 1 << numberOfTrailingZeros;
                int i13 = numberOfTrailingZeros + i12;
                if (((Boolean) this.f17419b.invoke(this.f17418a, Integer.valueOf(i13))).booleanValue()) {
                    this.f17421d[i10] = j10;
                    return i13;
                }
            }
            this.f17421d[i10] = j10;
            i10 = i11;
        }
        return -1;
    }

    private final long[] e(int i10) {
        int y10;
        long[] jArr = new long[(i10 - 1) >>> 6];
        if ((i10 & 63) != 0) {
            y10 = yc.k.y(jArr);
            jArr[y10] = (-1) << i10;
        }
        return jArr;
    }

    public final void a(int i10) {
        if (i10 < 64) {
            this.f17420c |= 1 << i10;
        } else {
            b(i10);
        }
    }

    public final int d() {
        int numberOfTrailingZeros;
        int f10 = this.f17418a.f();
        do {
            long j10 = this.f17420c;
            if (j10 != -1) {
                numberOfTrailingZeros = Long.numberOfTrailingZeros(~j10);
                this.f17420c |= 1 << numberOfTrailingZeros;
            } else if (f10 > 64) {
                return c();
            } else {
                return -1;
            }
        } while (!((Boolean) this.f17419b.invoke(this.f17418a, Integer.valueOf(numberOfTrailingZeros))).booleanValue());
        return numberOfTrailingZeros;
    }
}
