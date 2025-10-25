package androidx.datastore.preferences.protobuf;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class r {

    /* renamed from: a  reason: collision with root package name */
    private static final p f2297a = new q();

    /* renamed from: b  reason: collision with root package name */
    private static final p f2298b = c();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static p a() {
        p pVar = f2298b;
        if (pVar != null) {
            return pVar;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static p b() {
        return f2297a;
    }

    private static p c() {
        if (a1.f2118d) {
            return null;
        }
        try {
            return (p) Class.forName("androidx.datastore.preferences.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }
}
