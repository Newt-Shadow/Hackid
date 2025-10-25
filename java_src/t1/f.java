package t1;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import androidx.window.extensions.layout.WindowLayoutComponent;
import kotlin.jvm.internal.d0;
import v1.a;
/* loaded from: classes.dex */
public interface f {

    /* renamed from: a  reason: collision with root package name */
    public static final a f29819a = a.f29820a;

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: b  reason: collision with root package name */
        private static final boolean f29821b = false;

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ a f29820a = new a();

        /* renamed from: c  reason: collision with root package name */
        private static final String f29822c = d0.b(f.class).b();

        /* renamed from: d  reason: collision with root package name */
        private static final xc.d f29823d = xc.e.a(C0312a.f29825e);

        /* renamed from: e  reason: collision with root package name */
        private static g f29824e = b.f29795a;

        /* renamed from: t1.f$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        static final class C0312a extends kotlin.jvm.internal.n implements id.a {

            /* renamed from: e  reason: collision with root package name */
            public static final C0312a f29825e = new C0312a();

            C0312a() {
                super(0);
            }

            @Override // id.a
            /* renamed from: b */
            public final u1.a invoke() {
                e eVar;
                WindowLayoutComponent g10;
                try {
                    ClassLoader loader = f.class.getClassLoader();
                    if (loader != null) {
                        eVar = new e(loader, new q1.d(loader));
                    } else {
                        eVar = null;
                    }
                    if (eVar == null || (g10 = eVar.g()) == null) {
                        return null;
                    }
                    a.C0347a c0347a = v1.a.f31155a;
                    kotlin.jvm.internal.m.d(loader, "loader");
                    return c0347a.a(g10, new q1.d(loader));
                } catch (Throwable unused) {
                    if (!a.f29821b) {
                        return null;
                    }
                    Log.d(a.f29822c, "Failed to load WindowExtensions");
                    return null;
                }
            }
        }

        private a() {
        }

        public final u1.a c() {
            return (u1.a) f29823d.getValue();
        }

        public final f d(Context context) {
            kotlin.jvm.internal.m.e(context, "context");
            u1.a c10 = c();
            if (c10 == null) {
                c10 = androidx.window.layout.adapter.sidecar.b.f3653c.a(context);
            }
            return f29824e.a(new i(o.f29842b, c10));
        }
    }

    wd.d a(Activity activity);
}
