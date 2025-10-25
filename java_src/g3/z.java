package g3;
/* loaded from: classes.dex */
public interface z {

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final a0 f16252a;

        /* renamed from: b  reason: collision with root package name */
        public final a0 f16253b;

        public a(a0 a0Var) {
            this(a0Var, a0Var);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            if (this.f16252a.equals(aVar.f16252a) && this.f16253b.equals(aVar.f16253b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (this.f16252a.hashCode() * 31) + this.f16253b.hashCode();
        }

        public String toString() {
            String str;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("[");
            sb2.append(this.f16252a);
            if (this.f16252a.equals(this.f16253b)) {
                str = "";
            } else {
                str = ", " + this.f16253b;
            }
            sb2.append(str);
            sb2.append("]");
            return sb2.toString();
        }

        public a(a0 a0Var, a0 a0Var2) {
            this.f16252a = (a0) y4.a.e(a0Var);
            this.f16253b = (a0) y4.a.e(a0Var2);
        }
    }

    /* loaded from: classes.dex */
    public static class b implements z {

        /* renamed from: a  reason: collision with root package name */
        private final long f16254a;

        /* renamed from: b  reason: collision with root package name */
        private final a f16255b;

        public b(long j10) {
            this(j10, 0L);
        }

        @Override // g3.z
        public boolean e() {
            return false;
        }

        @Override // g3.z
        public a h(long j10) {
            return this.f16255b;
        }

        @Override // g3.z
        public long i() {
            return this.f16254a;
        }

        public b(long j10, long j11) {
            this.f16254a = j10;
            this.f16255b = new a(j11 == 0 ? a0.f16142c : new a0(0L, j11));
        }
    }

    boolean e();

    a h(long j10);

    long i();
}
