package androidx.datastore.preferences.protobuf;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class f0 {

    /* renamed from: a  reason: collision with root package name */
    private static final d0 f2134a = c();

    /* renamed from: b  reason: collision with root package name */
    private static final d0 f2135b = new e0();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static d0 a() {
        return f2134a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static d0 b() {
        return f2135b;
    }

    private static d0 c() {
        if (a1.f2118d) {
            return null;
        }
        try {
            return (d0) Class.forName("androidx.datastore.preferences.protobuf.ListFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }
}
