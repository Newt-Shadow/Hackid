package k7;
/* loaded from: classes.dex */
public class w implements k8.b {

    /* renamed from: c  reason: collision with root package name */
    private static final Object f24853c = new Object();

    /* renamed from: a  reason: collision with root package name */
    private volatile Object f24854a = f24853c;

    /* renamed from: b  reason: collision with root package name */
    private volatile k8.b f24855b;

    public w(k8.b bVar) {
        this.f24855b = bVar;
    }

    @Override // k8.b
    public Object get() {
        Object obj = this.f24854a;
        Object obj2 = f24853c;
        if (obj == obj2) {
            synchronized (this) {
                obj = this.f24854a;
                if (obj == obj2) {
                    obj = this.f24855b.get();
                    this.f24854a = obj;
                    this.f24855b = null;
                }
            }
        }
        return obj;
    }
}
