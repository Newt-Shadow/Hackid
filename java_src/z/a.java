package z;

import android.os.Build;
import android.os.ext.SdkExtensions;
import java.util.Locale;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final a f33312a = new a();

    /* renamed from: b  reason: collision with root package name */
    public static final int f33313b;

    /* renamed from: c  reason: collision with root package name */
    public static final int f33314c;

    /* renamed from: d  reason: collision with root package name */
    public static final int f33315d;

    /* renamed from: e  reason: collision with root package name */
    public static final int f33316e;

    /* renamed from: z.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    private static final class C0382a {

        /* renamed from: a  reason: collision with root package name */
        public static final C0382a f33317a = new C0382a();

        private C0382a() {
        }

        public final int a(int i10) {
            return SdkExtensions.getExtensionVersion(i10);
        }
    }

    static {
        int i10;
        int i11;
        int i12;
        int i13 = Build.VERSION.SDK_INT;
        int i14 = 0;
        if (i13 >= 30) {
            i10 = C0382a.f33317a.a(30);
        } else {
            i10 = 0;
        }
        f33313b = i10;
        if (i13 >= 30) {
            i11 = C0382a.f33317a.a(31);
        } else {
            i11 = 0;
        }
        f33314c = i11;
        if (i13 >= 30) {
            i12 = C0382a.f33317a.a(33);
        } else {
            i12 = 0;
        }
        f33315d = i12;
        if (i13 >= 30) {
            i14 = C0382a.f33317a.a(1000000);
        }
        f33316e = i14;
    }

    private a() {
    }

    public static final boolean a(String codename, String buildCodename) {
        kotlin.jvm.internal.m.e(codename, "codename");
        kotlin.jvm.internal.m.e(buildCodename, "buildCodename");
        if (kotlin.jvm.internal.m.a("REL", buildCodename)) {
            return false;
        }
        Locale locale = Locale.ROOT;
        String upperCase = buildCodename.toUpperCase(locale);
        kotlin.jvm.internal.m.d(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
        String upperCase2 = codename.toUpperCase(locale);
        kotlin.jvm.internal.m.d(upperCase2, "this as java.lang.String).toUpperCase(Locale.ROOT)");
        if (upperCase.compareTo(upperCase2) < 0) {
            return false;
        }
        return true;
    }

    public static final boolean b() {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 33) {
            if (i10 >= 32) {
                String CODENAME = Build.VERSION.CODENAME;
                kotlin.jvm.internal.m.d(CODENAME, "CODENAME");
                if (a("Tiramisu", CODENAME)) {
                }
            }
            return false;
        }
        return true;
    }

    public static final boolean c() {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 35) {
            if (i10 >= 34) {
                String CODENAME = Build.VERSION.CODENAME;
                kotlin.jvm.internal.m.d(CODENAME, "CODENAME");
                if (a("VanillaIceCream", CODENAME)) {
                }
            }
            return false;
        }
        return true;
    }
}
