package androidx.lifecycle;

import androidx.lifecycle.i;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
final class b {

    /* renamed from: c  reason: collision with root package name */
    static b f2937c = new b();

    /* renamed from: a  reason: collision with root package name */
    private final Map f2938a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private final Map f2939b = new HashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        final Map f2940a = new HashMap();

        /* renamed from: b  reason: collision with root package name */
        final Map f2941b;

        a(Map map) {
            this.f2941b = map;
            for (Map.Entry entry : map.entrySet()) {
                i.a aVar = (i.a) entry.getValue();
                List list = (List) this.f2940a.get(aVar);
                if (list == null) {
                    list = new ArrayList();
                    this.f2940a.put(aVar, list);
                }
                list.add((C0044b) entry.getKey());
            }
        }

        private static void b(List list, m mVar, i.a aVar, Object obj) {
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    ((C0044b) list.get(size)).a(mVar, aVar, obj);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void a(m mVar, i.a aVar, Object obj) {
            b((List) this.f2940a.get(aVar), mVar, aVar, obj);
            b((List) this.f2940a.get(i.a.ON_ANY), mVar, aVar, obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.lifecycle.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0044b {

        /* renamed from: a  reason: collision with root package name */
        final int f2942a;

        /* renamed from: b  reason: collision with root package name */
        final Method f2943b;

        C0044b(int i10, Method method) {
            this.f2942a = i10;
            this.f2943b = method;
            method.setAccessible(true);
        }

        void a(m mVar, i.a aVar, Object obj) {
            try {
                int i10 = this.f2942a;
                if (i10 != 0) {
                    if (i10 != 1) {
                        if (i10 == 2) {
                            this.f2943b.invoke(obj, mVar, aVar);
                            return;
                        }
                        return;
                    }
                    this.f2943b.invoke(obj, mVar);
                    return;
                }
                this.f2943b.invoke(obj, new Object[0]);
            } catch (IllegalAccessException e10) {
                throw new RuntimeException(e10);
            } catch (InvocationTargetException e11) {
                throw new RuntimeException("Failed to call observer method", e11.getCause());
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0044b)) {
                return false;
            }
            C0044b c0044b = (C0044b) obj;
            if (this.f2942a == c0044b.f2942a && this.f2943b.getName().equals(c0044b.f2943b.getName())) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (this.f2942a * 31) + this.f2943b.getName().hashCode();
        }
    }

    b() {
    }

    private a a(Class cls, Method[] methodArr) {
        int i10;
        a c10;
        Class superclass = cls.getSuperclass();
        HashMap hashMap = new HashMap();
        if (superclass != null && (c10 = c(superclass)) != null) {
            hashMap.putAll(c10.f2941b);
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            for (Map.Entry entry : c(cls2).f2941b.entrySet()) {
                e(hashMap, (C0044b) entry.getKey(), (i.a) entry.getValue(), cls);
            }
        }
        if (methodArr == null) {
            methodArr = b(cls);
        }
        boolean z10 = false;
        for (Method method : methodArr) {
            u uVar = (u) method.getAnnotation(u.class);
            if (uVar != null) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length > 0) {
                    if (m.class.isAssignableFrom(parameterTypes[0])) {
                        i10 = 1;
                    } else {
                        throw new IllegalArgumentException("invalid parameter type. Must be one and instanceof LifecycleOwner");
                    }
                } else {
                    i10 = 0;
                }
                i.a value = uVar.value();
                if (parameterTypes.length > 1) {
                    if (i.a.class.isAssignableFrom(parameterTypes[1])) {
                        if (value == i.a.ON_ANY) {
                            i10 = 2;
                        } else {
                            throw new IllegalArgumentException("Second arg is supported only for ON_ANY value");
                        }
                    } else {
                        throw new IllegalArgumentException("invalid parameter type. second arg must be an event");
                    }
                }
                if (parameterTypes.length <= 2) {
                    e(hashMap, new C0044b(i10, method), value, cls);
                    z10 = true;
                } else {
                    throw new IllegalArgumentException("cannot have more than 2 params");
                }
            }
        }
        a aVar = new a(hashMap);
        this.f2938a.put(cls, aVar);
        this.f2939b.put(cls, Boolean.valueOf(z10));
        return aVar;
    }

    private Method[] b(Class cls) {
        try {
            return cls.getDeclaredMethods();
        } catch (NoClassDefFoundError e10) {
            throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e10);
        }
    }

    private void e(Map map, C0044b c0044b, i.a aVar, Class cls) {
        i.a aVar2 = (i.a) map.get(c0044b);
        if (aVar2 != null && aVar != aVar2) {
            Method method = c0044b.f2943b;
            throw new IllegalArgumentException("Method " + method.getName() + " in " + cls.getName() + " already declared with different @OnLifecycleEvent value: previous value " + aVar2 + ", new value " + aVar);
        } else if (aVar2 == null) {
            map.put(c0044b, aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a c(Class cls) {
        a aVar = (a) this.f2938a.get(cls);
        if (aVar != null) {
            return aVar;
        }
        return a(cls, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean d(Class cls) {
        Boolean bool = (Boolean) this.f2939b.get(cls);
        if (bool != null) {
            return bool.booleanValue();
        }
        Method[] b10 = b(cls);
        for (Method method : b10) {
            if (((u) method.getAnnotation(u.class)) != null) {
                a(cls, b10);
                return true;
            }
        }
        this.f2939b.put(cls, Boolean.FALSE);
        return false;
    }
}
