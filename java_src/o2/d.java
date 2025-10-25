package o2;

import java.util.List;
/* loaded from: classes.dex */
final class d extends n {

    /* renamed from: a  reason: collision with root package name */
    private final List f27030a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(List list) {
        if (list != null) {
            this.f27030a = list;
            return;
        }
        throw new NullPointerException("Null logRequests");
    }

    @Override // o2.n
    public List c() {
        return this.f27030a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof n) {
            return this.f27030a.equals(((n) obj).c());
        }
        return false;
    }

    public int hashCode() {
        return this.f27030a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "BatchedLogRequest{logRequests=" + this.f27030a + "}";
    }
}
