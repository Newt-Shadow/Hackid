package p1;

import java.lang.reflect.Method;
import kotlin.jvm.internal.m;
import kotlin.jvm.internal.n;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private final ClassLoader f27693a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: p1.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0280a extends n implements id.a {
        C0280a() {
            super(0);
        }

        @Override // id.a
        /* renamed from: b */
        public final Class invoke() {
            Class<?> loadClass = a.this.f27693a.loadClass("androidx.window.extensions.WindowExtensionsProvider");
            m.d(loadClass, "loader.loadClass(WindowE…XTENSIONS_PROVIDER_CLASS)");
            return loadClass;
        }
    }

    /* loaded from: classes.dex */
    static final class b extends n implements id.a {
        b() {
            super(0);
        }

        @Override // id.a
        /* renamed from: b */
        public final Boolean invoke() {
            boolean z10 = false;
            Method getWindowExtensionsMethod = a.this.d().getDeclaredMethod("getWindowExtensions", new Class[0]);
            Class c10 = a.this.c();
            y1.a aVar = y1.a.f32815a;
            m.d(getWindowExtensionsMethod, "getWindowExtensionsMethod");
            if (aVar.b(getWindowExtensionsMethod, c10) && aVar.d(getWindowExtensionsMethod)) {
                z10 = true;
            }
            return Boolean.valueOf(z10);
        }
    }

    public a(ClassLoader loader) {
        m.e(loader, "loader");
        this.f27693a = loader;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Class d() {
        Class<?> loadClass = this.f27693a.loadClass("androidx.window.extensions.WindowExtensionsProvider");
        m.d(loadClass, "loader.loadClass(WindowE…XTENSIONS_PROVIDER_CLASS)");
        return loadClass;
    }

    private final boolean e() {
        return y1.a.f32815a.a(new C0280a());
    }

    public final Class c() {
        Class<?> loadClass = this.f27693a.loadClass("androidx.window.extensions.WindowExtensions");
        m.d(loadClass, "loader.loadClass(WindowE….WINDOW_EXTENSIONS_CLASS)");
        return loadClass;
    }

    public final boolean f() {
        if (e() && y1.a.e("WindowExtensionsProvider#getWindowExtensions is not valid", new b())) {
            return true;
        }
        return false;
    }
}
