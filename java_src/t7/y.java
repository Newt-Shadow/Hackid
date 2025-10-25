package t7;

import java.util.List;
import t7.f0;
/* loaded from: classes.dex */
final class y extends f0.e.d.f {

    /* renamed from: a  reason: collision with root package name */
    private final List f30475a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class b extends f0.e.d.f.a {

        /* renamed from: a  reason: collision with root package name */
        private List f30476a;

        @Override // t7.f0.e.d.f.a
        public f0.e.d.f a() {
            List list = this.f30476a;
            if (list != null) {
                return new y(list);
            }
            throw new IllegalStateException("Missing required properties: rolloutAssignments");
        }

        @Override // t7.f0.e.d.f.a
        public f0.e.d.f.a b(List list) {
            if (list != null) {
                this.f30476a = list;
                return this;
            }
            throw new NullPointerException("Null rolloutAssignments");
        }
    }

    @Override // t7.f0.e.d.f
    public List b() {
        return this.f30475a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof f0.e.d.f) {
            return this.f30475a.equals(((f0.e.d.f) obj).b());
        }
        return false;
    }

    public int hashCode() {
        return this.f30475a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "RolloutsState{rolloutAssignments=" + this.f30475a + "}";
    }

    private y(List list) {
        this.f30475a = list;
    }
}
