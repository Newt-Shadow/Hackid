package io.sentry.android.replay;

import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public final class w {

    /* renamed from: a  reason: collision with root package name */
    public static final w f22862a = new w();

    /* renamed from: b  reason: collision with root package name */
    private static final xc.d f22863b;

    /* renamed from: c  reason: collision with root package name */
    private static final xc.d f22864c;

    /* renamed from: d  reason: collision with root package name */
    private static final xc.d f22865d;

    /* loaded from: classes2.dex */
    static final class a extends kotlin.jvm.internal.n implements id.a {

        /* renamed from: e  reason: collision with root package name */
        public static final a f22866e = new a();

        a() {
            super(0);
        }

        @Override // id.a
        /* renamed from: b */
        public final Field invoke() {
            Class c10 = w.f22862a.c();
            if (c10 != null) {
                Field declaredField = c10.getDeclaredField("mViews");
                declaredField.setAccessible(true);
                return declaredField;
            }
            return null;
        }
    }

    /* loaded from: classes2.dex */
    static final class b extends kotlin.jvm.internal.n implements id.a {

        /* renamed from: e  reason: collision with root package name */
        public static final b f22867e = new b();

        b() {
            super(0);
        }

        @Override // id.a
        /* renamed from: b */
        public final Class invoke() {
            try {
                return Class.forName("android.view.WindowManagerGlobal");
            } catch (Throwable th) {
                Log.w("WindowManagerSpy", th);
                return null;
            }
        }
    }

    /* loaded from: classes2.dex */
    static final class c extends kotlin.jvm.internal.n implements id.a {

        /* renamed from: e  reason: collision with root package name */
        public static final c f22868e = new c();

        c() {
            super(0);
        }

        @Override // id.a
        public final Object invoke() {
            Method method;
            Class c10 = w.f22862a.c();
            if (c10 == null || (method = c10.getMethod("getInstance", new Class[0])) == null) {
                return null;
            }
            return method.invoke(null, new Object[0]);
        }
    }

    static {
        xc.d b10;
        xc.d b11;
        xc.d b12;
        xc.h hVar = xc.h.f32713c;
        b10 = xc.f.b(hVar, b.f22867e);
        f22863b = b10;
        b11 = xc.f.b(hVar, c.f22868e);
        f22864c = b11;
        b12 = xc.f.b(hVar, a.f22866e);
        f22865d = b12;
    }

    private w() {
    }

    private final Field b() {
        return (Field) f22865d.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Class c() {
        return (Class) f22863b.getValue();
    }

    private final Object d() {
        return f22864c.getValue();
    }

    public final void e(id.l swap) {
        Field b10;
        kotlin.jvm.internal.m.e(swap, "swap");
        try {
            Object d10 = d();
            if (d10 != null && (b10 = f22862a.b()) != null) {
                Object obj = b10.get(d10);
                kotlin.jvm.internal.m.c(obj, "null cannot be cast to non-null type java.util.ArrayList<android.view.View>{ kotlin.collections.TypeAliasesKt.ArrayList<android.view.View> }");
                b10.set(d10, swap.invoke((ArrayList) obj));
            }
        } catch (Throwable th) {
            Log.w("WindowManagerSpy", th);
        }
    }
}
