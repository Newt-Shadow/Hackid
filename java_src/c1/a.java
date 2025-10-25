package c1;

import android.os.Build;
import android.os.ext.SdkExtensions;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final a f4792a = new a();

    /* renamed from: c1.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    private static final class C0086a {

        /* renamed from: a  reason: collision with root package name */
        public static final C0086a f4793a = new C0086a();

        private C0086a() {
        }

        public final int a() {
            int extensionVersion;
            extensionVersion = SdkExtensions.getExtensionVersion(31);
            return extensionVersion;
        }
    }

    /* loaded from: classes.dex */
    private static final class b {

        /* renamed from: a  reason: collision with root package name */
        public static final b f4794a = new b();

        private b() {
        }

        public final int a() {
            int extensionVersion;
            extensionVersion = SdkExtensions.getExtensionVersion(1000000);
            return extensionVersion;
        }
    }

    private a() {
    }

    public final int a() {
        if (Build.VERSION.SDK_INT >= 33) {
            return b.f4794a.a();
        }
        return 0;
    }

    public final int b() {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 != 31 && i10 != 32) {
            return 0;
        }
        return C0086a.f4793a.a();
    }
}
