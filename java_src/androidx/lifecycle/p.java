package androidx.lifecycle;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public final class p {

    /* renamed from: a  reason: collision with root package name */
    public static final p f3008a = new p();

    /* renamed from: b  reason: collision with root package name */
    private static final Map f3009b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    private static final Map f3010c = new HashMap();

    private p() {
    }

    private final f a(Constructor constructor, Object obj) {
        try {
            Object newInstance = constructor.newInstance(obj);
            kotlin.jvm.internal.m.d(newInstance, "{\n            constructo…tance(`object`)\n        }");
            android.support.v4.media.session.b.a(newInstance);
            return null;
        } catch (IllegalAccessException e10) {
            throw new RuntimeException(e10);
        } catch (InstantiationException e11) {
            throw new RuntimeException(e11);
        } catch (InvocationTargetException e12) {
            throw new RuntimeException(e12);
        }
    }

    private final Constructor b(Class cls) {
        String fullPackage;
        boolean z10;
        try {
            Package r02 = cls.getPackage();
            String name = cls.getCanonicalName();
            if (r02 != null) {
                fullPackage = r02.getName();
            } else {
                fullPackage = "";
            }
            kotlin.jvm.internal.m.d(fullPackage, "fullPackage");
            boolean z11 = false;
            if (fullPackage.length() == 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (!z10) {
                kotlin.jvm.internal.m.d(name, "name");
                name = name.substring(fullPackage.length() + 1);
                kotlin.jvm.internal.m.d(name, "this as java.lang.String).substring(startIndex)");
            }
            kotlin.jvm.internal.m.d(name, "if (fullPackage.isEmpty(…g(fullPackage.length + 1)");
            String c10 = c(name);
            if (fullPackage.length() == 0) {
                z11 = true;
            }
            if (!z11) {
                c10 = fullPackage + '.' + c10;
            }
            Class<?> cls2 = Class.forName(c10);
            kotlin.jvm.internal.m.c(cls2, "null cannot be cast to non-null type java.lang.Class<out androidx.lifecycle.GeneratedAdapter>");
            Constructor<?> declaredConstructor = cls2.getDeclaredConstructor(cls);
            if (!declaredConstructor.isAccessible()) {
                declaredConstructor.setAccessible(true);
                return declaredConstructor;
            }
            return declaredConstructor;
        } catch (ClassNotFoundException unused) {
            return null;
        } catch (NoSuchMethodException e10) {
            throw new RuntimeException(e10);
        }
    }

    public static final String c(String className) {
        String D;
        kotlin.jvm.internal.m.e(className, "className");
        StringBuilder sb2 = new StringBuilder();
        D = rd.y.D(className, ".", "_", false, 4, null);
        sb2.append(D);
        sb2.append("_LifecycleAdapter");
        return sb2.toString();
    }

    private final int d(Class cls) {
        Map map = f3009b;
        Integer num = (Integer) map.get(cls);
        if (num != null) {
            return num.intValue();
        }
        int g10 = g(cls);
        map.put(cls, Integer.valueOf(g10));
        return g10;
    }

    private final boolean e(Class cls) {
        if (cls != null && l.class.isAssignableFrom(cls)) {
            return true;
        }
        return false;
    }

    public static final k f(Object object) {
        kotlin.jvm.internal.m.e(object, "object");
        boolean z10 = object instanceof k;
        boolean z11 = object instanceof DefaultLifecycleObserver;
        if (z10 && z11) {
            return new d((DefaultLifecycleObserver) object, (k) object);
        }
        if (z11) {
            return new d((DefaultLifecycleObserver) object, null);
        }
        if (z10) {
            return (k) object;
        }
        Class<?> cls = object.getClass();
        p pVar = f3008a;
        if (pVar.d(cls) == 2) {
            Object obj = f3010c.get(cls);
            kotlin.jvm.internal.m.b(obj);
            List list = (List) obj;
            if (list.size() == 1) {
                pVar.a((Constructor) list.get(0), object);
                return new i0(null);
            }
            int size = list.size();
            f[] fVarArr = new f[size];
            for (int i10 = 0; i10 < size; i10++) {
                f3008a.a((Constructor) list.get(i10), object);
                fVarArr[i10] = null;
            }
            return new c(fVarArr);
        }
        return new w(object);
    }

    private final int g(Class cls) {
        ArrayList arrayList;
        List b10;
        if (cls.getCanonicalName() == null) {
            return 1;
        }
        Constructor b11 = b(cls);
        if (b11 != null) {
            Map map = f3010c;
            b10 = yc.n.b(b11);
            map.put(cls, b10);
            return 2;
        } else if (b.f2937c.d(cls)) {
            return 1;
        } else {
            Class superclass = cls.getSuperclass();
            if (e(superclass)) {
                kotlin.jvm.internal.m.d(superclass, "superclass");
                if (d(superclass) == 1) {
                    return 1;
                }
                Object obj = f3010c.get(superclass);
                kotlin.jvm.internal.m.b(obj);
                arrayList = new ArrayList((Collection) obj);
            } else {
                arrayList = null;
            }
            Class<?>[] interfaces = cls.getInterfaces();
            kotlin.jvm.internal.m.d(interfaces, "klass.interfaces");
            for (Class<?> intrface : interfaces) {
                if (e(intrface)) {
                    kotlin.jvm.internal.m.d(intrface, "intrface");
                    if (d(intrface) == 1) {
                        return 1;
                    }
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    Object obj2 = f3010c.get(intrface);
                    kotlin.jvm.internal.m.b(obj2);
                    arrayList.addAll((Collection) obj2);
                }
            }
            if (arrayList == null) {
                return 1;
            }
            f3010c.put(cls, arrayList);
            return 2;
        }
    }
}
