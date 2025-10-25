package androidx.lifecycle;

import android.app.Application;
import java.lang.reflect.InvocationTargetException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import x0.a;
import y0.d;
/* loaded from: classes.dex */
public class k0 {

    /* renamed from: b  reason: collision with root package name */
    public static final b f2983b = new b(null);

    /* renamed from: c  reason: collision with root package name */
    public static final a.b f2984c = d.a.f32814a;

    /* renamed from: a  reason: collision with root package name */
    private final x0.d f2985a;

    /* loaded from: classes.dex */
    public static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* loaded from: classes.dex */
    public interface c {

        /* renamed from: a  reason: collision with root package name */
        public static final a f2990a = a.f2991a;

        /* loaded from: classes.dex */
        public static final class a {

            /* renamed from: a  reason: collision with root package name */
            static final /* synthetic */ a f2991a = new a();

            private a() {
            }
        }

        default j0 a(Class modelClass) {
            kotlin.jvm.internal.m.e(modelClass, "modelClass");
            return y0.d.f32813a.c();
        }

        default j0 b(Class modelClass, x0.a extras) {
            kotlin.jvm.internal.m.e(modelClass, "modelClass");
            kotlin.jvm.internal.m.e(extras, "extras");
            return a(modelClass);
        }

        default j0 c(pd.c modelClass, x0.a extras) {
            kotlin.jvm.internal.m.e(modelClass, "modelClass");
            kotlin.jvm.internal.m.e(extras, "extras");
            return b(hd.a.a(modelClass), extras);
        }
    }

    /* loaded from: classes.dex */
    public static class d implements c {

        /* renamed from: c  reason: collision with root package name */
        private static d f2993c;

        /* renamed from: b  reason: collision with root package name */
        public static final a f2992b = new a(null);

        /* renamed from: d  reason: collision with root package name */
        public static final a.b f2994d = d.a.f32814a;

        /* loaded from: classes.dex */
        public static final class a {
            private a() {
            }

            public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final d a() {
                if (d.f2993c == null) {
                    d.f2993c = new d();
                }
                d dVar = d.f2993c;
                kotlin.jvm.internal.m.b(dVar);
                return dVar;
            }
        }

        @Override // androidx.lifecycle.k0.c
        public j0 a(Class modelClass) {
            kotlin.jvm.internal.m.e(modelClass, "modelClass");
            return y0.a.f32808a.a(modelClass);
        }

        @Override // androidx.lifecycle.k0.c
        public j0 b(Class modelClass, x0.a extras) {
            kotlin.jvm.internal.m.e(modelClass, "modelClass");
            kotlin.jvm.internal.m.e(extras, "extras");
            return a(modelClass);
        }

        @Override // androidx.lifecycle.k0.c
        public j0 c(pd.c modelClass, x0.a extras) {
            kotlin.jvm.internal.m.e(modelClass, "modelClass");
            kotlin.jvm.internal.m.e(extras, "extras");
            return b(hd.a.a(modelClass), extras);
        }
    }

    /* loaded from: classes.dex */
    public static class e {
        public abstract void d(j0 j0Var);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public k0(l0 store, c factory) {
        this(store, factory, null, 4, null);
        kotlin.jvm.internal.m.e(store, "store");
        kotlin.jvm.internal.m.e(factory, "factory");
    }

    public j0 a(Class modelClass) {
        kotlin.jvm.internal.m.e(modelClass, "modelClass");
        return c(hd.a.c(modelClass));
    }

    public j0 b(String key, Class modelClass) {
        kotlin.jvm.internal.m.e(key, "key");
        kotlin.jvm.internal.m.e(modelClass, "modelClass");
        return this.f2985a.a(hd.a.c(modelClass), key);
    }

    public final j0 c(pd.c modelClass) {
        kotlin.jvm.internal.m.e(modelClass, "modelClass");
        return x0.d.b(this.f2985a, modelClass, null, 2, null);
    }

    /* loaded from: classes.dex */
    public static class a extends d {

        /* renamed from: g  reason: collision with root package name */
        private static a f2987g;

        /* renamed from: e  reason: collision with root package name */
        private final Application f2989e;

        /* renamed from: f  reason: collision with root package name */
        public static final b f2986f = new b(null);

        /* renamed from: h  reason: collision with root package name */
        public static final a.b f2988h = new C0047a();

        /* renamed from: androidx.lifecycle.k0$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0047a implements a.b {
            C0047a() {
            }
        }

        /* loaded from: classes.dex */
        public static final class b {
            private b() {
            }

            public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final a a(Application application) {
                kotlin.jvm.internal.m.e(application, "application");
                if (a.f2987g == null) {
                    a.f2987g = new a(application);
                }
                a aVar = a.f2987g;
                kotlin.jvm.internal.m.b(aVar);
                return aVar;
            }
        }

        private a(Application application, int i10) {
            this.f2989e = application;
        }

        private final j0 h(Class cls, Application application) {
            if (androidx.lifecycle.a.class.isAssignableFrom(cls)) {
                try {
                    j0 j0Var = (j0) cls.getConstructor(Application.class).newInstance(application);
                    kotlin.jvm.internal.m.d(j0Var, "{\n                try {\n…          }\n            }");
                    return j0Var;
                } catch (IllegalAccessException e10) {
                    throw new RuntimeException("Cannot create an instance of " + cls, e10);
                } catch (InstantiationException e11) {
                    throw new RuntimeException("Cannot create an instance of " + cls, e11);
                } catch (NoSuchMethodException e12) {
                    throw new RuntimeException("Cannot create an instance of " + cls, e12);
                } catch (InvocationTargetException e13) {
                    throw new RuntimeException("Cannot create an instance of " + cls, e13);
                }
            }
            return super.a(cls);
        }

        @Override // androidx.lifecycle.k0.d, androidx.lifecycle.k0.c
        public j0 a(Class modelClass) {
            kotlin.jvm.internal.m.e(modelClass, "modelClass");
            Application application = this.f2989e;
            if (application != null) {
                return h(modelClass, application);
            }
            throw new UnsupportedOperationException("AndroidViewModelFactory constructed with empty constructor works only with create(modelClass: Class<T>, extras: CreationExtras).");
        }

        @Override // androidx.lifecycle.k0.d, androidx.lifecycle.k0.c
        public j0 b(Class modelClass, x0.a extras) {
            kotlin.jvm.internal.m.e(modelClass, "modelClass");
            kotlin.jvm.internal.m.e(extras, "extras");
            if (this.f2989e != null) {
                return a(modelClass);
            }
            Application application = (Application) extras.a(f2988h);
            if (application != null) {
                return h(modelClass, application);
            }
            if (!androidx.lifecycle.a.class.isAssignableFrom(modelClass)) {
                return super.a(modelClass);
            }
            throw new IllegalArgumentException("CreationExtras must have an application by `APPLICATION_KEY`");
        }

        public a() {
            this(null, 0);
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public a(Application application) {
            this(application, 0);
            kotlin.jvm.internal.m.e(application, "application");
        }
    }

    private k0(x0.d dVar) {
        this.f2985a = dVar;
    }

    public /* synthetic */ k0(l0 l0Var, c cVar, x0.a aVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(l0Var, cVar, (i10 & 4) != 0 ? a.C0362a.f32165b : aVar);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public k0(l0 store, c factory, x0.a defaultCreationExtras) {
        this(new x0.d(store, factory, defaultCreationExtras));
        kotlin.jvm.internal.m.e(store, "store");
        kotlin.jvm.internal.m.e(factory, "factory");
        kotlin.jvm.internal.m.e(defaultCreationExtras, "defaultCreationExtras");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public k0(m0 owner, c factory) {
        this(owner.getViewModelStore(), factory, y0.d.f32813a.a(owner));
        kotlin.jvm.internal.m.e(owner, "owner");
        kotlin.jvm.internal.m.e(factory, "factory");
    }
}
