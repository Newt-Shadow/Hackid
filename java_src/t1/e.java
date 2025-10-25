package t1;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import androidx.window.extensions.WindowExtensionsProvider;
import androidx.window.extensions.core.util.function.Consumer;
import androidx.window.extensions.layout.WindowLayoutComponent;
import java.lang.reflect.Method;
import kotlin.jvm.internal.d0;
/* loaded from: classes.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private final ClassLoader f29812a;

    /* renamed from: b  reason: collision with root package name */
    private final q1.d f29813b;

    /* renamed from: c  reason: collision with root package name */
    private final p1.a f29814c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class a extends kotlin.jvm.internal.n implements id.a {
        a() {
            super(0);
        }

        @Override // id.a
        /* renamed from: b */
        public final Boolean invoke() {
            Class f10 = e.this.f();
            boolean z10 = false;
            Method getBoundsMethod = f10.getMethod("getBounds", new Class[0]);
            Method getTypeMethod = f10.getMethod("getType", new Class[0]);
            Method getStateMethod = f10.getMethod("getState", new Class[0]);
            y1.a aVar = y1.a.f32815a;
            kotlin.jvm.internal.m.d(getBoundsMethod, "getBoundsMethod");
            if (aVar.c(getBoundsMethod, d0.b(Rect.class)) && aVar.d(getBoundsMethod)) {
                kotlin.jvm.internal.m.d(getTypeMethod, "getTypeMethod");
                Class cls = Integer.TYPE;
                if (aVar.c(getTypeMethod, d0.b(cls)) && aVar.d(getTypeMethod)) {
                    kotlin.jvm.internal.m.d(getStateMethod, "getStateMethod");
                    if (aVar.c(getStateMethod, d0.b(cls)) && aVar.d(getStateMethod)) {
                        z10 = true;
                    }
                }
            }
            return Boolean.valueOf(z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class b extends kotlin.jvm.internal.n implements id.a {
        b() {
            super(0);
        }

        @Override // id.a
        /* renamed from: b */
        public final Boolean invoke() {
            boolean z10;
            Class b10 = e.this.f29813b.b();
            if (b10 != null) {
                Class h10 = e.this.h();
                Method addListenerMethod = h10.getMethod("addWindowLayoutInfoListener", Activity.class, b10);
                Method removeListenerMethod = h10.getMethod("removeWindowLayoutInfoListener", b10);
                y1.a aVar = y1.a.f32815a;
                kotlin.jvm.internal.m.d(addListenerMethod, "addListenerMethod");
                if (aVar.d(addListenerMethod)) {
                    kotlin.jvm.internal.m.d(removeListenerMethod, "removeListenerMethod");
                    if (aVar.d(removeListenerMethod)) {
                        z10 = true;
                        return Boolean.valueOf(z10);
                    }
                }
                z10 = false;
                return Boolean.valueOf(z10);
            }
            return Boolean.FALSE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class c extends kotlin.jvm.internal.n implements id.a {
        c() {
            super(0);
        }

        @Override // id.a
        /* renamed from: b */
        public final Boolean invoke() {
            boolean z10;
            Class h10 = e.this.h();
            Method addListenerMethod = h10.getMethod("addWindowLayoutInfoListener", Context.class, Consumer.class);
            Method removeListenerMethod = h10.getMethod("removeWindowLayoutInfoListener", Consumer.class);
            y1.a aVar = y1.a.f32815a;
            kotlin.jvm.internal.m.d(addListenerMethod, "addListenerMethod");
            if (aVar.d(addListenerMethod)) {
                kotlin.jvm.internal.m.d(removeListenerMethod, "removeListenerMethod");
                if (aVar.d(removeListenerMethod)) {
                    z10 = true;
                    return Boolean.valueOf(z10);
                }
            }
            z10 = false;
            return Boolean.valueOf(z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class d extends kotlin.jvm.internal.n implements id.a {
        d() {
            super(0);
        }

        @Override // id.a
        /* renamed from: b */
        public final Boolean invoke() {
            boolean z10 = false;
            Method getWindowLayoutComponentMethod = e.this.f29814c.c().getMethod("getWindowLayoutComponent", new Class[0]);
            Class h10 = e.this.h();
            y1.a aVar = y1.a.f32815a;
            kotlin.jvm.internal.m.d(getWindowLayoutComponentMethod, "getWindowLayoutComponentMethod");
            if (aVar.d(getWindowLayoutComponentMethod) && aVar.b(getWindowLayoutComponentMethod, h10)) {
                z10 = true;
            }
            return Boolean.valueOf(z10);
        }
    }

    public e(ClassLoader loader, q1.d consumerAdapter) {
        kotlin.jvm.internal.m.e(loader, "loader");
        kotlin.jvm.internal.m.e(consumerAdapter, "consumerAdapter");
        this.f29812a = loader;
        this.f29813b = consumerAdapter;
        this.f29814c = new p1.a(loader);
    }

    private final boolean e() {
        if (!n()) {
            return false;
        }
        int a10 = q1.e.f27955a.a();
        boolean z10 = true;
        if (a10 == 1) {
            return i();
        }
        if (2 > a10 || a10 > Integer.MAX_VALUE) {
            z10 = false;
        }
        if (!z10) {
            return false;
        }
        return j();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Class f() {
        Class<?> loadClass = this.f29812a.loadClass("androidx.window.extensions.layout.FoldingFeature");
        kotlin.jvm.internal.m.d(loadClass, "loader.loadClass(FOLDING_FEATURE_CLASS)");
        return loadClass;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Class h() {
        Class<?> loadClass = this.f29812a.loadClass("androidx.window.extensions.layout.WindowLayoutComponent");
        kotlin.jvm.internal.m.d(loadClass, "loader.loadClass(WINDOW_LAYOUT_COMPONENT_CLASS)");
        return loadClass;
    }

    private final boolean k() {
        return y1.a.e("FoldingFeature class is not valid", new a());
    }

    private final boolean l() {
        return y1.a.e("WindowLayoutComponent#addWindowLayoutInfoListener(" + Activity.class.getName() + ", java.util.function.Consumer) is not valid", new b());
    }

    private final boolean m() {
        return y1.a.e("WindowLayoutComponent#addWindowLayoutInfoListener(" + Context.class.getName() + ", androidx.window.extensions.core.util.function.Consumer) is not valid", new c());
    }

    private final boolean o() {
        return y1.a.e("WindowExtensions#getWindowLayoutComponent is not valid", new d());
    }

    public final WindowLayoutComponent g() {
        if (!e()) {
            return null;
        }
        try {
            return WindowExtensionsProvider.getWindowExtensions().getWindowLayoutComponent();
        } catch (UnsupportedOperationException unused) {
            return null;
        }
    }

    public final boolean i() {
        return l();
    }

    public final boolean j() {
        if (i() && m()) {
            return true;
        }
        return false;
    }

    public final boolean n() {
        if (this.f29814c.f() && o() && k()) {
            return true;
        }
        return false;
    }
}
