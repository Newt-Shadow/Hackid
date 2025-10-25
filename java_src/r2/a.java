package r2;
/* loaded from: classes.dex */
public final class a implements wc.a {

    /* renamed from: c  reason: collision with root package name */
    private static final Object f28878c = new Object();

    /* renamed from: a  reason: collision with root package name */
    private volatile wc.a f28879a;

    /* renamed from: b  reason: collision with root package name */
    private volatile Object f28880b = f28878c;

    private a(wc.a aVar) {
        this.f28879a = aVar;
    }

    public static wc.a a(wc.a aVar) {
        d.b(aVar);
        if (aVar instanceof a) {
            return aVar;
        }
        return new a(aVar);
    }

    private static Object b(Object obj, Object obj2) {
        boolean z10;
        if (obj != f28878c) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10 && obj != obj2) {
            throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj + " & " + obj2 + ". This is likely due to a circular dependency.");
        }
        return obj2;
    }

    @Override // wc.a
    public Object get() {
        Object obj = this.f28880b;
        Object obj2 = f28878c;
        if (obj == obj2) {
            synchronized (this) {
                obj = this.f28880b;
                if (obj == obj2) {
                    obj = this.f28879a.get();
                    this.f28880b = b(this.f28880b, obj);
                    this.f28879a = null;
                }
            }
        }
        return obj;
    }
}
