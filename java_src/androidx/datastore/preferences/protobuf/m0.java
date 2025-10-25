package androidx.datastore.preferences.protobuf;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class m0 {

    /* renamed from: a  reason: collision with root package name */
    private static final k0 f2222a = c();

    /* renamed from: b  reason: collision with root package name */
    private static final k0 f2223b = new l0();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static k0 a() {
        return f2222a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static k0 b() {
        return f2223b;
    }

    private static k0 c() {
        if (a1.f2118d) {
            return null;
        }
        try {
            return (k0) Class.forName("androidx.datastore.preferences.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }
}
