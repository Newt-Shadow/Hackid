package od;

import kotlin.jvm.internal.DefaultConstructorMarker;
import yc.b0;
/* loaded from: classes2.dex */
public class a implements Iterable, jd.a {

    /* renamed from: d  reason: collision with root package name */
    public static final C0279a f27559d = new C0279a(null);

    /* renamed from: a  reason: collision with root package name */
    private final int f27560a;

    /* renamed from: b  reason: collision with root package name */
    private final int f27561b;

    /* renamed from: c  reason: collision with root package name */
    private final int f27562c;

    /* renamed from: od.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0279a {
        private C0279a() {
        }

        public /* synthetic */ C0279a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final a a(int i10, int i11, int i12) {
            return new a(i10, i11, i12);
        }
    }

    public a(int i10, int i11, int i12) {
        if (i12 != 0) {
            if (i12 != Integer.MIN_VALUE) {
                this.f27560a = i10;
                this.f27561b = dd.c.c(i10, i11, i12);
                this.f27562c = i12;
                return;
            }
            throw new IllegalArgumentException("Step must be greater than Int.MIN_VALUE to avoid overflow on negation.");
        }
        throw new IllegalArgumentException("Step must be non-zero.");
    }

    public boolean equals(Object obj) {
        if (obj instanceof a) {
            if (!isEmpty() || !((a) obj).isEmpty()) {
                a aVar = (a) obj;
                if (this.f27560a != aVar.f27560a || this.f27561b != aVar.f27561b || this.f27562c != aVar.f27562c) {
                }
            }
            return true;
        }
        return false;
    }

    public final int g() {
        return this.f27560a;
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (((this.f27560a * 31) + this.f27561b) * 31) + this.f27562c;
    }

    public final int i() {
        return this.f27561b;
    }

    public boolean isEmpty() {
        if (this.f27562c > 0) {
            if (this.f27560a > this.f27561b) {
                return true;
            }
        } else if (this.f27560a < this.f27561b) {
            return true;
        }
        return false;
    }

    public final int l() {
        return this.f27562c;
    }

    @Override // java.lang.Iterable
    /* renamed from: m */
    public b0 iterator() {
        return new b(this.f27560a, this.f27561b, this.f27562c);
    }

    public String toString() {
        StringBuilder sb2;
        int i10;
        if (this.f27562c > 0) {
            sb2 = new StringBuilder();
            sb2.append(this.f27560a);
            sb2.append("..");
            sb2.append(this.f27561b);
            sb2.append(" step ");
            i10 = this.f27562c;
        } else {
            sb2 = new StringBuilder();
            sb2.append(this.f27560a);
            sb2.append(" downTo ");
            sb2.append(this.f27561b);
            sb2.append(" step ");
            i10 = -this.f27562c;
        }
        sb2.append(i10);
        return sb2.toString();
    }
}
