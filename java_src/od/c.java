package od;

import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public final class c extends od.a {

    /* renamed from: e  reason: collision with root package name */
    public static final a f27567e = new a(null);

    /* renamed from: f  reason: collision with root package name */
    private static final c f27568f = new c(1, 0);

    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final c a() {
            return c.f27568f;
        }
    }

    public c(int i10, int i11) {
        super(i10, i11, 1);
    }

    @Override // od.a
    public boolean equals(Object obj) {
        if (obj instanceof c) {
            if (!isEmpty() || !((c) obj).isEmpty()) {
                c cVar = (c) obj;
                if (g() != cVar.g() || i() != cVar.i()) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // od.a
    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (g() * 31) + i();
    }

    @Override // od.a
    public boolean isEmpty() {
        if (g() > i()) {
            return true;
        }
        return false;
    }

    public Integer o() {
        return Integer.valueOf(i());
    }

    public Integer p() {
        return Integer.valueOf(g());
    }

    @Override // od.a
    public String toString() {
        return g() + ".." + i();
    }
}
