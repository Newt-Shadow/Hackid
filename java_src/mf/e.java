package mf;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.net.URL;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;
import java.util.Set;
import java.util.concurrent.LinkedBlockingQueue;
import of.i;
import of.l;
import of.m;
import of.o;
import of.q;
/* loaded from: classes2.dex */
public abstract class e {

    /* renamed from: a  reason: collision with root package name */
    static volatile int f26051a;

    /* renamed from: e  reason: collision with root package name */
    static volatile pf.b f26055e;

    /* renamed from: b  reason: collision with root package name */
    static final o f26052b = new o();

    /* renamed from: c  reason: collision with root package name */
    static final i f26053c = new i();

    /* renamed from: d  reason: collision with root package name */
    static boolean f26054d = q.d("slf4j.detectLoggerNameMismatch");

    /* renamed from: f  reason: collision with root package name */
    private static final String[] f26056f = {"2.0"};

    private static void A(List list, Iterator it) {
        try {
            list.add((pf.b) it.next());
        } catch (ServiceConfigurationError e10) {
            l.b("A service provider failed to instantiate:\n" + e10.getMessage());
        }
    }

    private static final void B() {
        try {
            String c10 = f26055e.c();
            boolean z10 = false;
            for (String str : f26056f) {
                if (c10.startsWith(str)) {
                    z10 = true;
                }
            }
            if (!z10) {
                l.i("The requested version " + c10 + " by your slf4j provider is not compatible with " + Arrays.asList(f26056f).toString());
                l.i("See https://www.slf4j.org/codes.html#version_mismatch for further details.");
            }
        } catch (Throwable th) {
            l.c("Unexpected problem occurred during version sanity check", th);
        }
    }

    private static final void b() {
        try {
            List i10 = i();
            z(i10);
            if (i10 != null && !i10.isEmpty()) {
                f26055e = (pf.b) i10.get(0);
                c();
                f26055e.initialize();
                f26051a = 3;
                x(i10);
            } else {
                f26051a = 4;
                l.i("No SLF4J providers were found.");
                l.i("Defaulting to no-operation (NOP) logger implementation");
                l.i("See https://www.slf4j.org/codes.html#noProviders for further details.");
                y(h());
            }
            u();
        } catch (Exception e10) {
            g(e10);
            throw new IllegalStateException("Unexpected initialization failure", e10);
        }
    }

    private static void c() {
        pf.a a10 = f26055e.a();
        if (a10 != null) {
            f.a(a10);
        }
    }

    private static void d(nf.d dVar, int i10) {
        if (dVar.c().C()) {
            e(i10);
        } else if (!dVar.c().D()) {
            f();
        }
    }

    private static void e(int i10) {
        l.i("A number (" + i10 + ") of logging calls during the initialization phase have been intercepted and are");
        l.i("now being replayed. These are subject to the filtering rules of the underlying logging system.");
        l.i("See also https://www.slf4j.org/codes.html#replay");
    }

    private static void f() {
        l.i("The following set of substitute loggers may have been accessed");
        l.i("during the initialization phase. Logging calls during this");
        l.i("phase were not honored. However, subsequent logging calls to these");
        l.i("loggers will work as normally expected.");
        l.i("See also https://www.slf4j.org/codes.html#substituteLogger");
    }

    static void g(Throwable th) {
        f26051a = 2;
        l.c("Failed to instantiate SLF4J LoggerFactory", th);
    }

    static Set h() {
        Enumeration<URL> resources;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        try {
            ClassLoader classLoader = e.class.getClassLoader();
            if (classLoader == null) {
                resources = ClassLoader.getSystemResources("org/slf4j/impl/StaticLoggerBinder.class");
            } else {
                resources = classLoader.getResources("org/slf4j/impl/StaticLoggerBinder.class");
            }
            while (resources.hasMoreElements()) {
                linkedHashSet.add(resources.nextElement());
            }
        } catch (IOException e10) {
            l.c("Error getting resources from path", e10);
        }
        return linkedHashSet;
    }

    static List i() {
        ArrayList arrayList = new ArrayList();
        ClassLoader classLoader = e.class.getClassLoader();
        pf.b r10 = r(classLoader);
        if (r10 != null) {
            arrayList.add(r10);
            return arrayList;
        }
        Iterator it = o(classLoader).iterator();
        while (it.hasNext()) {
            A(arrayList, it);
        }
        return arrayList;
    }

    private static void j() {
        o oVar = f26052b;
        synchronized (oVar) {
            oVar.d().e();
            for (m mVar : oVar.d().d()) {
                mVar.G(m(mVar.getName()));
            }
        }
    }

    public static a k() {
        return n().b();
    }

    public static c l(Class cls) {
        Class a10;
        c m10 = m(cls.getName());
        if (f26054d && (a10 = q.a()) != null && s(cls, a10)) {
            l.i(String.format("Detected logger name mismatch. Given name: \"%s\"; computed name: \"%s\".", m10.getName(), a10.getName()));
            l.i("See https://www.slf4j.org/codes.html#loggerNameMismatch for an explanation");
        }
        return m10;
    }

    public static c m(String str) {
        return k().a(str);
    }

    static pf.b n() {
        if (f26051a == 0) {
            synchronized (e.class) {
                if (f26051a == 0) {
                    f26051a = 1;
                    t();
                }
            }
        }
        int i10 = f26051a;
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 == 4) {
                        return f26053c;
                    }
                    throw new IllegalStateException("Unreachable code");
                }
                return f26055e;
            }
            throw new IllegalStateException("org.slf4j.LoggerFactory in failed state. Original exception was thrown EARLIER. See also https://www.slf4j.org/codes.html#unsuccessfulInit");
        }
        return f26052b;
    }

    private static ServiceLoader o(final ClassLoader classLoader) {
        if (System.getSecurityManager() == null) {
            return ServiceLoader.load(pf.b.class, classLoader);
        }
        return (ServiceLoader) AccessController.doPrivileged(new PrivilegedAction() { // from class: mf.d
            @Override // java.security.PrivilegedAction
            public final Object run() {
                ServiceLoader q10;
                q10 = e.q(classLoader);
                return q10;
            }
        });
    }

    private static boolean p(List list) {
        if (list.size() > 1) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ServiceLoader q(ClassLoader classLoader) {
        return ServiceLoader.load(pf.b.class, classLoader);
    }

    static pf.b r(ClassLoader classLoader) {
        String property = System.getProperty("slf4j.provider");
        if (property != null && !property.isEmpty()) {
            try {
                l.f(String.format("Attempting to load provider \"%s\" specified via \"%s\" system property", property, "slf4j.provider"));
                return (pf.b) classLoader.loadClass(property).getConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (ClassCastException e10) {
                l.c(String.format("Specified SLF4JServiceProvider (%s) does not implement SLF4JServiceProvider interface", property), e10);
                return null;
            } catch (ClassNotFoundException e11) {
                e = e11;
                l.c(String.format("Failed to instantiate the specified SLF4JServiceProvider (%s)", property), e);
                return null;
            } catch (IllegalAccessException e12) {
                e = e12;
                l.c(String.format("Failed to instantiate the specified SLF4JServiceProvider (%s)", property), e);
                return null;
            } catch (InstantiationException e13) {
                e = e13;
                l.c(String.format("Failed to instantiate the specified SLF4JServiceProvider (%s)", property), e);
                return null;
            } catch (NoSuchMethodException e14) {
                e = e14;
                l.c(String.format("Failed to instantiate the specified SLF4JServiceProvider (%s)", property), e);
                return null;
            } catch (InvocationTargetException e15) {
                e = e15;
                l.c(String.format("Failed to instantiate the specified SLF4JServiceProvider (%s)", property), e);
                return null;
            }
        }
        return null;
    }

    private static boolean s(Class cls, Class cls2) {
        return !cls2.isAssignableFrom(cls);
    }

    private static final void t() {
        b();
        if (f26051a == 3) {
            B();
        }
    }

    private static void u() {
        j();
        v();
        f26052b.d().b();
    }

    private static void v() {
        LinkedBlockingQueue c10 = f26052b.d().c();
        int size = c10.size();
        ArrayList<nf.d> arrayList = new ArrayList(128);
        int i10 = 0;
        while (c10.drainTo(arrayList, 128) != 0) {
            for (nf.d dVar : arrayList) {
                w(dVar);
                int i11 = i10 + 1;
                if (i10 == 0) {
                    d(dVar, size);
                }
                i10 = i11;
            }
            arrayList.clear();
        }
    }

    private static void w(nf.d dVar) {
        if (dVar == null) {
            return;
        }
        m c10 = dVar.c();
        String name = c10.getName();
        if (!c10.E()) {
            if (!c10.D()) {
                if (c10.C()) {
                    if (c10.s(dVar.b())) {
                        c10.F(dVar);
                        return;
                    }
                    return;
                }
                l.i(name);
                return;
            }
            return;
        }
        throw new IllegalStateException("Delegate logger cannot be null at this state.");
    }

    private static void x(List list) {
        if (!list.isEmpty()) {
            if (p(list)) {
                l.f("Actual provider is of type [" + list.get(0) + "]");
                return;
            }
            l.a("Connected with provider of type [" + ((pf.b) list.get(0)).getClass().getName() + "]");
            return;
        }
        throw new IllegalStateException("No providers were found which is impossible after successful initialization.");
    }

    private static void y(Set set) {
        if (set.isEmpty()) {
            return;
        }
        l.i("Class path contains SLF4J bindings targeting slf4j-api versions 1.7.x or earlier.");
        Iterator it = set.iterator();
        while (it.hasNext()) {
            l.i("Ignoring binding found at [" + ((URL) it.next()) + "]");
        }
        l.i("See https://www.slf4j.org/codes.html#ignoredBindings for an explanation.");
    }

    private static void z(List list) {
        if (p(list)) {
            l.i("Class path contains multiple SLF4J providers.");
            Iterator it = list.iterator();
            while (it.hasNext()) {
                l.i("Found provider [" + ((pf.b) it.next()) + "]");
            }
            l.i("See https://www.slf4j.org/codes.html#multiple_bindings for an explanation.");
        }
    }
}
