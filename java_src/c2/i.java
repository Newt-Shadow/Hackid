package c2;
/* loaded from: classes.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    private String f4800a;

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private String f4801a;

        /* synthetic */ a(i0 i0Var) {
        }

        public i a() {
            String str = this.f4801a;
            if (str != null) {
                i iVar = new i(null);
                iVar.f4800a = str;
                return iVar;
            }
            throw new IllegalArgumentException("Purchase token must be set");
        }

        public a b(String str) {
            this.f4801a = str;
            return this;
        }
    }

    /* synthetic */ i(j0 j0Var) {
    }

    public static a b() {
        return new a(null);
    }

    public String a() {
        return this.f4800a;
    }
}
