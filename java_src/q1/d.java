package q1;

import android.app.Activity;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import kotlin.jvm.internal.m;
import xc.t;
/* loaded from: classes.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private final ClassLoader f27949a;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a implements InvocationHandler {

        /* renamed from: a  reason: collision with root package name */
        private final pd.c f27950a;

        /* renamed from: b  reason: collision with root package name */
        private final id.l f27951b;

        public a(pd.c clazz, id.l consumer) {
            m.e(clazz, "clazz");
            m.e(consumer, "consumer");
            this.f27950a = clazz;
            this.f27951b = consumer;
        }

        private final boolean b(Method method, Object[] objArr) {
            boolean z10;
            if (!m.a(method.getName(), "accept")) {
                return false;
            }
            if (objArr != null && objArr.length == 1) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (!z10) {
                return false;
            }
            return true;
        }

        private final boolean c(Method method, Object[] objArr) {
            boolean z10;
            if (!m.a(method.getName(), "equals") || !method.getReturnType().equals(Boolean.TYPE)) {
                return false;
            }
            if (objArr != null && objArr.length == 1) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (!z10) {
                return false;
            }
            return true;
        }

        private final boolean d(Method method, Object[] objArr) {
            if (m.a(method.getName(), "hashCode") && method.getReturnType().equals(Integer.TYPE) && objArr == null) {
                return true;
            }
            return false;
        }

        private final boolean e(Method method, Object[] objArr) {
            if (m.a(method.getName(), "toString") && method.getReturnType().equals(String.class) && objArr == null) {
                return true;
            }
            return false;
        }

        public final void a(Object parameter) {
            m.e(parameter, "parameter");
            this.f27951b.invoke(parameter);
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) {
            m.e(obj, "obj");
            m.e(method, "method");
            Object obj2 = null;
            boolean z10 = false;
            if (b(method, objArr)) {
                pd.c cVar = this.f27950a;
                if (objArr != null) {
                    obj2 = objArr[0];
                }
                a(pd.d.a(cVar, obj2));
                return t.f32733a;
            } else if (c(method, objArr)) {
                if (objArr != null) {
                    obj2 = objArr[0];
                }
                if (obj == obj2) {
                    z10 = true;
                }
                return Boolean.valueOf(z10);
            } else if (d(method, objArr)) {
                return Integer.valueOf(this.f27951b.hashCode());
            } else {
                if (e(method, objArr)) {
                    return this.f27951b.toString();
                }
                throw new UnsupportedOperationException("Unexpected method call object:" + obj + ", method: " + method + ", args: " + objArr);
            }
        }
    }

    /* loaded from: classes.dex */
    public interface b {
        void dispose();
    }

    /* loaded from: classes.dex */
    public static final class c implements b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Method f27952a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Object f27953b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Object f27954c;

        c(Method method, Object obj, Object obj2) {
            this.f27952a = method;
            this.f27953b = obj;
            this.f27954c = obj2;
        }

        @Override // q1.d.b
        public void dispose() {
            this.f27952a.invoke(this.f27953b, this.f27954c);
        }
    }

    public d(ClassLoader loader) {
        m.e(loader, "loader");
        this.f27949a = loader;
    }

    private final Object a(pd.c cVar, id.l lVar) {
        Object newProxyInstance = Proxy.newProxyInstance(this.f27949a, new Class[]{d()}, new a(cVar, lVar));
        m.d(newProxyInstance, "newProxyInstance(loader,…onsumerClass()), handler)");
        return newProxyInstance;
    }

    private final Class d() {
        Class<?> loadClass = this.f27949a.loadClass("java.util.function.Consumer");
        m.d(loadClass, "loader.loadClass(\"java.util.function.Consumer\")");
        return loadClass;
    }

    public final Class b() {
        try {
            return d();
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    public final b c(Object obj, pd.c clazz, String addMethodName, String removeMethodName, Activity activity, id.l consumer) {
        m.e(obj, "obj");
        m.e(clazz, "clazz");
        m.e(addMethodName, "addMethodName");
        m.e(removeMethodName, "removeMethodName");
        m.e(activity, "activity");
        m.e(consumer, "consumer");
        Object a10 = a(clazz, consumer);
        obj.getClass().getMethod(addMethodName, Activity.class, d()).invoke(obj, activity, a10);
        return new c(obj.getClass().getMethod(removeMethodName, d()), obj, a10);
    }
}
