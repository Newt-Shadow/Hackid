package androidx.datastore.preferences.protobuf;
/* loaded from: classes.dex */
abstract class d {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f2131a;

    /* renamed from: b  reason: collision with root package name */
    private static final Class f2132b = a("libcore.io.Memory");

    /* renamed from: c  reason: collision with root package name */
    private static final boolean f2133c;

    static {
        boolean z10;
        if (!f2131a && a("org.robolectric.Robolectric") != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        f2133c = z10;
    }

    private static Class a(String str) {
        try {
            return Class.forName(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Class b() {
        return f2132b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean c() {
        if (!f2131a && (f2132b == null || f2133c)) {
            return false;
        }
        return true;
    }
}
