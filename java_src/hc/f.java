package hc;

import android.util.Log;
import id.l;
import java.lang.reflect.Field;
import java.util.ArrayList;
import kotlin.jvm.internal.m;
import kotlin.jvm.internal.n;
import xc.h;
/* loaded from: classes2.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    private static final xc.d f17051a;

    /* renamed from: b  reason: collision with root package name */
    private static final xc.d f17052b;

    /* renamed from: c  reason: collision with root package name */
    private static final xc.d f17053c;

    /* renamed from: d  reason: collision with root package name */
    public static final f f17054d = new f();

    /* loaded from: classes2.dex */
    static final class a extends n implements id.a {

        /* renamed from: e  reason: collision with root package name */
        public static final a f17055e = new a();

        a() {
            super(0);
        }

        @Override // id.a
        /* renamed from: b */
        public final Field invoke() {
            Class c10 = f.f17054d.c();
            if (c10 != null) {
                Field declaredField = c10.getDeclaredField("mViews");
                declaredField.setAccessible(true);
                return declaredField;
            }
            return null;
        }
    }

    /* loaded from: classes2.dex */
    static final class b extends n implements id.a {

        /* renamed from: e  reason: collision with root package name */
        public static final b f17056e = new b();

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
    static final class c extends n implements id.a {

        /* renamed from: e  reason: collision with root package name */
        public static final c f17057e = new c();

        c() {
            super(0);
        }

        @Override // id.a
        public final Object invoke() {
            Class c10 = f.f17054d.c();
            if (c10 == null) {
                return null;
            }
            return c10.getMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        }
    }

    static {
        xc.d b10;
        xc.d b11;
        xc.d b12;
        h hVar = h.f32713c;
        b10 = xc.f.b(hVar, b.f17056e);
        f17051a = b10;
        b11 = xc.f.b(hVar, c.f17057e);
        f17052b = b11;
        b12 = xc.f.b(hVar, a.f17055e);
        f17053c = b12;
    }

    private f() {
    }

    private final Field b() {
        return (Field) f17053c.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Class c() {
        return (Class) f17051a.getValue();
    }

    private final Object d() {
        return f17052b.getValue();
    }

    public final void e(l swap) {
        Field b10;
        m.e(swap, "swap");
        try {
            Object d10 = d();
            if (d10 != null && (b10 = f17054d.b()) != null) {
                Object obj = b10.get(d10);
                if (obj != null) {
                    b10.set(d10, swap.invoke((ArrayList) obj));
                    return;
                }
                throw new NullPointerException("null cannot be cast to non-null type kotlin.collections.ArrayList<android.view.View> /* = java.util.ArrayList<android.view.View> */");
            }
        } catch (Throwable th) {
            Log.w("WindowManagerSpy", th);
        }
    }
}
