package c2;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private String f4796a;

    /* renamed from: c2.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0087a {

        /* renamed from: a  reason: collision with root package name */
        private String f4797a;

        /* synthetic */ C0087a(t tVar) {
        }

        public a a() {
            String str = this.f4797a;
            if (str != null) {
                a aVar = new a(null);
                aVar.f4796a = str;
                return aVar;
            }
            throw new IllegalArgumentException("Purchase token must be set");
        }

        public C0087a b(String str) {
            this.f4797a = str;
            return this;
        }
    }

    /* synthetic */ a(w wVar) {
    }

    public static C0087a b() {
        return new C0087a(null);
    }

    public String a() {
        return this.f4796a;
    }
}
