package c2;
/* loaded from: classes.dex */
public final class p {

    /* renamed from: a  reason: collision with root package name */
    private final String f4803a;

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private String f4804a;

        /* synthetic */ a(v0 v0Var) {
        }

        public p a() {
            if (this.f4804a != null) {
                return new p(this, null);
            }
            throw new IllegalArgumentException("Product type must be set");
        }

        public a b(String str) {
            this.f4804a = str;
            return this;
        }
    }

    /* synthetic */ p(a aVar, w0 w0Var) {
        this.f4803a = aVar.f4804a;
    }

    public static a a() {
        return new a(null);
    }

    public final String b() {
        return this.f4803a;
    }
}
