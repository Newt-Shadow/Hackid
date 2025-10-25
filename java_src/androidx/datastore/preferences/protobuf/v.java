package androidx.datastore.preferences.protobuf;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class v implements o0 {

    /* renamed from: a  reason: collision with root package name */
    private static final v f2373a = new v();

    private v() {
    }

    public static v c() {
        return f2373a;
    }

    @Override // androidx.datastore.preferences.protobuf.o0
    public n0 a(Class cls) {
        if (w.class.isAssignableFrom(cls)) {
            try {
                return (n0) w.u(cls.asSubclass(w.class)).i();
            } catch (Exception e10) {
                throw new RuntimeException("Unable to get message info for " + cls.getName(), e10);
            }
        }
        throw new IllegalArgumentException("Unsupported message type: " + cls.getName());
    }

    @Override // androidx.datastore.preferences.protobuf.o0
    public boolean b(Class cls) {
        return w.class.isAssignableFrom(cls);
    }
}
