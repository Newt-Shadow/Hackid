package hc;

import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.Window;
import java.lang.reflect.Field;
import kotlin.jvm.internal.m;
import kotlin.jvm.internal.n;
import xc.h;
/* loaded from: classes2.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    private static final xc.d f17058a;

    /* renamed from: b  reason: collision with root package name */
    private static final xc.d f17059b;

    /* renamed from: c  reason: collision with root package name */
    public static final g f17060c = new g();

    /* loaded from: classes2.dex */
    static final class a extends n implements id.a {

        /* renamed from: e  reason: collision with root package name */
        public static final a f17061e = new a();

        a() {
            super(0);
        }

        @Override // id.a
        /* renamed from: b */
        public final Class invoke() {
            int i10 = Build.VERSION.SDK_INT;
            try {
                return Class.forName("com.android.internal.policy.DecorView");
            } catch (Throwable th) {
                Log.d("WindowSpy", "Unexpected exception loading com.android.internal.policy.DecorView on API " + i10, th);
                return null;
            }
        }
    }

    /* loaded from: classes2.dex */
    static final class b extends n implements id.a {

        /* renamed from: e  reason: collision with root package name */
        public static final b f17062e = new b();

        b() {
            super(0);
        }

        @Override // id.a
        /* renamed from: b */
        public final Field invoke() {
            Class b10 = g.f17060c.b();
            if (b10 == null) {
                return null;
            }
            int i10 = Build.VERSION.SDK_INT;
            try {
                Field declaredField = b10.getDeclaredField("mWindow");
                declaredField.setAccessible(true);
                return declaredField;
            } catch (NoSuchFieldException e10) {
                Log.d("WindowSpy", "Unexpected exception retrieving " + b10 + "#mWindow on API " + i10, e10);
                return null;
            }
        }
    }

    static {
        xc.d b10;
        xc.d b11;
        h hVar = h.f32713c;
        b10 = xc.f.b(hVar, a.f17061e);
        f17058a = b10;
        b11 = xc.f.b(hVar, b.f17062e);
        f17059b = b11;
    }

    private g() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Class b() {
        return (Class) f17058a.getValue();
    }

    private final Field c() {
        return (Field) f17059b.getValue();
    }

    public final Window d(View maybeDecorView) {
        Field c10;
        m.e(maybeDecorView, "maybeDecorView");
        Class b10 = b();
        if (b10 == null || !b10.isInstance(maybeDecorView) || (c10 = f17060c.c()) == null) {
            return null;
        }
        Object obj = c10.get(maybeDecorView);
        if (obj != null) {
            return (Window) obj;
        }
        throw new NullPointerException("null cannot be cast to non-null type android.view.Window");
    }
}
