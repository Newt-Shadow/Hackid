package of;
/* loaded from: classes2.dex */
public abstract class q {

    /* renamed from: a  reason: collision with root package name */
    private static b f27626a = null;

    /* renamed from: b  reason: collision with root package name */
    private static boolean f27627b = false;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class b extends SecurityManager {
        private b() {
        }

        @Override // java.lang.SecurityManager
        protected Class[] getClassContext() {
            return super.getClassContext();
        }
    }

    public static Class a() {
        int i10;
        b b10 = b();
        if (b10 == null) {
            return null;
        }
        Class[] classContext = b10.getClassContext();
        String name = q.class.getName();
        int i11 = 0;
        while (i11 < classContext.length && !name.equals(classContext[i11].getName())) {
            i11++;
        }
        if (i11 < classContext.length && (i10 = i11 + 2) < classContext.length) {
            return classContext[i10];
        }
        throw new IllegalStateException("Failed to find org.slf4j.helpers.Util or its caller in the stack; this should not happen");
    }

    private static b b() {
        b bVar = f27626a;
        if (bVar != null) {
            return bVar;
        }
        if (f27627b) {
            return null;
        }
        b c10 = c();
        f27626a = c10;
        f27627b = true;
        return c10;
    }

    private static b c() {
        try {
            return new b();
        } catch (SecurityException unused) {
            return null;
        }
    }

    public static boolean d(String str) {
        String e10 = e(str);
        if (e10 == null) {
            return false;
        }
        return e10.equalsIgnoreCase("true");
    }

    public static String e(String str) {
        if (str != null) {
            try {
                return System.getProperty(str);
            } catch (SecurityException unused) {
                return null;
            }
        }
        throw new IllegalArgumentException("null input");
    }
}
