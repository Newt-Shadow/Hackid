package w8;
/* loaded from: classes.dex */
public final class a implements e {

    /* renamed from: c  reason: collision with root package name */
    private static final Object f31955c = new Object();

    /* renamed from: a  reason: collision with root package name */
    private volatile e f31956a;

    /* renamed from: b  reason: collision with root package name */
    private volatile Object f31957b = f31955c;

    private a(e eVar) {
        this.f31956a = eVar;
    }

    public static e a(e eVar) {
        d.b(eVar);
        if (eVar instanceof a) {
            return eVar;
        }
        return new a(eVar);
    }

    private static Object b(Object obj, Object obj2) {
        boolean z10;
        if (obj != f31955c) {
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
        Object obj = this.f31957b;
        Object obj2 = f31955c;
        if (obj == obj2) {
            synchronized (this) {
                obj = this.f31957b;
                if (obj == obj2) {
                    obj = this.f31956a.get();
                    this.f31957b = b(this.f31957b, obj);
                    this.f31956a = null;
                }
            }
        }
        return obj;
    }
}
