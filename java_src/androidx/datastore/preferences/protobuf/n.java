package androidx.datastore.preferences.protobuf;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class n {

    /* renamed from: a  reason: collision with root package name */
    static final Class f2230a = c();

    public static o a() {
        o b10 = b("getEmptyRegistry");
        if (b10 == null) {
            return o.f2232c;
        }
        return b10;
    }

    private static final o b(String str) {
        Class cls = f2230a;
        if (cls == null) {
            return null;
        }
        try {
            return (o) cls.getDeclaredMethod(str, new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }

    static Class c() {
        try {
            return Class.forName("androidx.datastore.preferences.protobuf.ExtensionRegistry");
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }
}
