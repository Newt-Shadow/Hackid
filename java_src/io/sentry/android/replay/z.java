package io.sentry.android.replay;

import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.Window;
import java.lang.reflect.Field;
/* loaded from: classes2.dex */
public final class z {

    /* renamed from: a  reason: collision with root package name */
    public static final z f22884a = new z();

    /* renamed from: b  reason: collision with root package name */
    private static final xc.d f22885b;

    /* renamed from: c  reason: collision with root package name */
    private static final xc.d f22886c;

    /* loaded from: classes2.dex */
    static final class a extends kotlin.jvm.internal.n implements id.a {

        /* renamed from: e  reason: collision with root package name */
        public static final a f22887e = new a();

        a() {
            super(0);
        }

        @Override // id.a
        /* renamed from: b */
        public final Class invoke() {
            try {
                return Class.forName("com.android.internal.policy.DecorView");
            } catch (Throwable th) {
                Log.d("WindowSpy", "Unexpected exception loading DecorView on API " + Build.VERSION.SDK_INT, th);
                return null;
            }
        }
    }

    /* loaded from: classes2.dex */
    static final class b extends kotlin.jvm.internal.n implements id.a {

        /* renamed from: e  reason: collision with root package name */
        public static final b f22888e = new b();

        b() {
            super(0);
        }

        @Override // id.a
        /* renamed from: b */
        public final Field invoke() {
            Class b10 = z.f22884a.b();
            if (b10 == null) {
                return null;
            }
            try {
                Field declaredField = b10.getDeclaredField("mWindow");
                declaredField.setAccessible(true);
                return declaredField;
            } catch (NoSuchFieldException e10) {
                Log.d("WindowSpy", "Unexpected exception retrieving " + b10 + "#mWindow on API " + Build.VERSION.SDK_INT, e10);
                return null;
            }
        }
    }

    static {
        xc.d b10;
        xc.d b11;
        xc.h hVar = xc.h.f32713c;
        b10 = xc.f.b(hVar, a.f22887e);
        f22885b = b10;
        b11 = xc.f.b(hVar, b.f22888e);
        f22886c = b11;
    }

    private z() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Class b() {
        return (Class) f22885b.getValue();
    }

    private final Field c() {
        return (Field) f22886c.getValue();
    }

    public final Window d(View maybeDecorView) {
        Field c10;
        kotlin.jvm.internal.m.e(maybeDecorView, "maybeDecorView");
        Class b10 = b();
        if (b10 == null || !b10.isInstance(maybeDecorView) || (c10 = f22884a.c()) == null) {
            return null;
        }
        Object obj = c10.get(maybeDecorView);
        kotlin.jvm.internal.m.c(obj, "null cannot be cast to non-null type android.view.Window");
        return (Window) obj;
    }
}
