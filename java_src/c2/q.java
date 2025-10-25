package c2;
/* loaded from: classes.dex */
public final class q {

    /* renamed from: a  reason: collision with root package name */
    private final String f4805a;

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private String f4806a;

        /* synthetic */ a(x0 x0Var) {
        }

        public q a() {
            if (this.f4806a != null) {
                return new q(this, null);
            }
            throw new IllegalArgumentException("Product type must be set");
        }

        public a b(String str) {
            this.f4806a = str;
            return this;
        }
    }

    /* synthetic */ q(a aVar, y0 y0Var) {
        this.f4805a = aVar.f4806a;
    }

    public static a a() {
        return new a(null);
    }

    public final String b() {
        return this.f4805a;
    }
}
