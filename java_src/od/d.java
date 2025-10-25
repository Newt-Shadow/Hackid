package od;

import kotlin.jvm.internal.DefaultConstructorMarker;
import yc.c0;
/* loaded from: classes2.dex */
public class d implements Iterable, jd.a {

    /* renamed from: d  reason: collision with root package name */
    public static final a f27569d = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final long f27570a;

    /* renamed from: b  reason: collision with root package name */
    private final long f27571b;

    /* renamed from: c  reason: collision with root package name */
    private final long f27572c;

    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final d a(long j10, long j11, long j12) {
            return new d(j10, j11, j12);
        }
    }

    public d(long j10, long j11, long j12) {
        if (j12 != 0) {
            if (j12 != Long.MIN_VALUE) {
                this.f27570a = j10;
                this.f27571b = dd.c.d(j10, j11, j12);
                this.f27572c = j12;
                return;
            }
            throw new IllegalArgumentException("Step must be greater than Long.MIN_VALUE to avoid overflow on negation.");
        }
        throw new IllegalArgumentException("Step must be non-zero.");
    }

    public boolean equals(Object obj) {
        if (obj instanceof d) {
            if (!isEmpty() || !((d) obj).isEmpty()) {
                d dVar = (d) obj;
                if (this.f27570a != dVar.f27570a || this.f27571b != dVar.f27571b || this.f27572c != dVar.f27572c) {
                }
            }
            return true;
        }
        return false;
    }

    public final long g() {
        return this.f27570a;
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        long j10 = 31;
        long j11 = this.f27570a;
        long j12 = this.f27571b;
        long j13 = j10 * (((j11 ^ (j11 >>> 32)) * j10) + (j12 ^ (j12 >>> 32)));
        long j14 = this.f27572c;
        return (int) (j13 + (j14 ^ (j14 >>> 32)));
    }

    public final long i() {
        return this.f27571b;
    }

    public boolean isEmpty() {
        int i10 = (this.f27572c > 0L ? 1 : (this.f27572c == 0L ? 0 : -1));
        long j10 = this.f27570a;
        long j11 = this.f27571b;
        if (i10 > 0) {
            if (j10 > j11) {
                return true;
            }
        } else if (j10 < j11) {
            return true;
        }
        return false;
    }

    public final long l() {
        return this.f27572c;
    }

    @Override // java.lang.Iterable
    /* renamed from: m */
    public c0 iterator() {
        return new e(this.f27570a, this.f27571b, this.f27572c);
    }

    public String toString() {
        StringBuilder sb2;
        long j10;
        if (this.f27572c > 0) {
            sb2 = new StringBuilder();
            sb2.append(this.f27570a);
            sb2.append("..");
            sb2.append(this.f27571b);
            sb2.append(" step ");
            j10 = this.f27572c;
        } else {
            sb2 = new StringBuilder();
            sb2.append(this.f27570a);
            sb2.append(" downTo ");
            sb2.append(this.f27571b);
            sb2.append(" step ");
            j10 = -this.f27572c;
        }
        sb2.append(j10);
        return sb2.toString();
    }
}
