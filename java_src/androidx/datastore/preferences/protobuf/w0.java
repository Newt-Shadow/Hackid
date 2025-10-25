package androidx.datastore.preferences.protobuf;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class w0 {

    /* renamed from: a  reason: collision with root package name */
    private static final u0 f2385a = c();

    /* renamed from: b  reason: collision with root package name */
    private static final u0 f2386b = new v0();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static u0 a() {
        return f2385a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static u0 b() {
        return f2386b;
    }

    private static u0 c() {
        if (a1.f2118d) {
            return null;
        }
        try {
            return (u0) Class.forName("androidx.datastore.preferences.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }
}
