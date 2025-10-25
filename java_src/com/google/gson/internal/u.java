package com.google.gson.internal;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ConcurrentNavigableMap;
import java.util.concurrent.ConcurrentSkipListMap;
/* loaded from: classes.dex */
public final class u {

    /* renamed from: a  reason: collision with root package name */
    private final Map f9317a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f9318b;

    /* renamed from: c  reason: collision with root package name */
    private final List f9319c;

    public u(Map map, boolean z10, List list) {
        this.f9317a = map;
        this.f9318b = z10;
        this.f9319c = list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object A() {
        return new ArrayDeque();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object B() {
        return new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object C() {
        return new ConcurrentSkipListMap();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object D() {
        return new ConcurrentHashMap();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object E() {
        return new TreeMap();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object F() {
        return new LinkedHashMap();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object G() {
        return new y();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object H() {
        return new TreeSet();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object I(Type type) {
        if (type instanceof ParameterizedType) {
            Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
            if (type2 instanceof Class) {
                return EnumSet.noneOf((Class) type2);
            }
            throw new com.google.gson.j("Invalid EnumSet type: " + type.toString());
        }
        throw new com.google.gson.j("Invalid EnumSet type: " + type.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object J(Type type) {
        if (type instanceof ParameterizedType) {
            Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
            if (type2 instanceof Class) {
                return new EnumMap((Class) type2);
            }
            throw new com.google.gson.j("Invalid EnumMap type: " + type.toString());
        }
        throw new com.google.gson.j("Invalid EnumMap type: " + type.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object K(Class cls) {
        try {
            return g0.f9294a.d(cls);
        } catch (Exception e10) {
            throw new RuntimeException("Unable to create instance of " + cls + ". Registering an InstanceCreator or a TypeAdapter for this type, or adding a no-args constructor may fix this problem.", e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object L(String str) {
        throw new com.google.gson.j(str);
    }

    private static a0 M(Class cls, com.google.gson.s sVar) {
        final String p10;
        if (Modifier.isAbstract(cls.getModifiers())) {
            return null;
        }
        boolean z10 = false;
        try {
            final Constructor declaredConstructor = cls.getDeclaredConstructor(new Class[0]);
            com.google.gson.s sVar2 = com.google.gson.s.ALLOW;
            if (sVar == sVar2 || (d0.a(declaredConstructor, null) && (sVar != com.google.gson.s.BLOCK_ALL || Modifier.isPublic(declaredConstructor.getModifiers())))) {
                z10 = true;
            }
            if (!z10) {
                final String str = "Unable to invoke no-args constructor of " + cls + "; constructor is not accessible and ReflectionAccessFilter does not permit making it accessible. Register an InstanceCreator or a TypeAdapter for this type, change the visibility of the constructor or adjust the access filter.";
                return new a0() { // from class: com.google.gson.internal.i
                    @Override // com.google.gson.internal.a0
                    public final Object a() {
                        Object w10;
                        w10 = u.w(str);
                        return w10;
                    }
                };
            } else if (sVar == sVar2 && (p10 = b9.a.p(declaredConstructor)) != null) {
                return new a0() { // from class: com.google.gson.internal.j
                    @Override // com.google.gson.internal.a0
                    public final Object a() {
                        Object x10;
                        x10 = u.x(p10);
                        return x10;
                    }
                };
            } else {
                return new a0() { // from class: com.google.gson.internal.k
                    @Override // com.google.gson.internal.a0
                    public final Object a() {
                        Object y10;
                        y10 = u.y(declaredConstructor);
                        return y10;
                    }
                };
            }
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    private static a0 N(Type type, Class cls) {
        if (Collection.class.isAssignableFrom(cls)) {
            if (SortedSet.class.isAssignableFrom(cls)) {
                return new a0() { // from class: com.google.gson.internal.m
                    @Override // com.google.gson.internal.a0
                    public final Object a() {
                        Object H;
                        H = u.H();
                        return H;
                    }
                };
            }
            if (Set.class.isAssignableFrom(cls)) {
                return new a0() { // from class: com.google.gson.internal.n
                    @Override // com.google.gson.internal.a0
                    public final Object a() {
                        Object z10;
                        z10 = u.z();
                        return z10;
                    }
                };
            }
            if (Queue.class.isAssignableFrom(cls)) {
                return new a0() { // from class: com.google.gson.internal.o
                    @Override // com.google.gson.internal.a0
                    public final Object a() {
                        Object A;
                        A = u.A();
                        return A;
                    }
                };
            }
            return new a0() { // from class: com.google.gson.internal.p
                @Override // com.google.gson.internal.a0
                public final Object a() {
                    Object B;
                    B = u.B();
                    return B;
                }
            };
        } else if (Map.class.isAssignableFrom(cls)) {
            if (ConcurrentNavigableMap.class.isAssignableFrom(cls)) {
                return new a0() { // from class: com.google.gson.internal.q
                    @Override // com.google.gson.internal.a0
                    public final Object a() {
                        Object C;
                        C = u.C();
                        return C;
                    }
                };
            }
            if (ConcurrentMap.class.isAssignableFrom(cls)) {
                return new a0() { // from class: com.google.gson.internal.r
                    @Override // com.google.gson.internal.a0
                    public final Object a() {
                        Object D;
                        D = u.D();
                        return D;
                    }
                };
            }
            if (SortedMap.class.isAssignableFrom(cls)) {
                return new a0() { // from class: com.google.gson.internal.s
                    @Override // com.google.gson.internal.a0
                    public final Object a() {
                        Object E;
                        E = u.E();
                        return E;
                    }
                };
            }
            if ((type instanceof ParameterizedType) && !String.class.isAssignableFrom(com.google.gson.reflect.a.b(((ParameterizedType) type).getActualTypeArguments()[0]).c())) {
                return new a0() { // from class: com.google.gson.internal.t
                    @Override // com.google.gson.internal.a0
                    public final Object a() {
                        Object F;
                        F = u.F();
                        return F;
                    }
                };
            }
            return new a0() { // from class: com.google.gson.internal.d
                @Override // com.google.gson.internal.a0
                public final Object a() {
                    Object G;
                    G = u.G();
                    return G;
                }
            };
        } else {
            return null;
        }
    }

    private static a0 O(final Type type, Class cls) {
        if (EnumSet.class.isAssignableFrom(cls)) {
            return new a0() { // from class: com.google.gson.internal.g
                @Override // com.google.gson.internal.a0
                public final Object a() {
                    Object I;
                    I = u.I(type);
                    return I;
                }
            };
        }
        if (cls == EnumMap.class) {
            return new a0() { // from class: com.google.gson.internal.h
                @Override // com.google.gson.internal.a0
                public final Object a() {
                    Object J;
                    J = u.J(type);
                    return J;
                }
            };
        }
        return null;
    }

    private a0 P(final Class cls) {
        if (this.f9318b) {
            return new a0() { // from class: com.google.gson.internal.e
                @Override // com.google.gson.internal.a0
                public final Object a() {
                    Object K;
                    K = u.K(cls);
                    return K;
                }
            };
        }
        final String str = "Unable to create instance of " + cls + "; usage of JDK Unsafe is disabled. Registering an InstanceCreator or a TypeAdapter for this type, adding a no-args constructor, or enabling usage of JDK Unsafe may fix this problem.";
        if (cls.getDeclaredConstructors().length == 0) {
            str = str + " Or adjust your R8 configuration to keep the no-args constructor of the class.";
        }
        return new a0() { // from class: com.google.gson.internal.f
            @Override // com.google.gson.internal.a0
            public final Object a() {
                Object L;
                L = u.L(str);
                return L;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String s(Class cls) {
        int modifiers = cls.getModifiers();
        if (Modifier.isInterface(modifiers)) {
            return "Interfaces can't be instantiated! Register an InstanceCreator or a TypeAdapter for this type. Interface name: " + cls.getName();
        } else if (Modifier.isAbstract(modifiers)) {
            return "Abstract classes can't be instantiated! Adjust the R8 configuration or register an InstanceCreator or a TypeAdapter for this type. Class name: " + cls.getName() + "\nSee " + f0.a("r8-abstract-class");
        } else {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object u(String str) {
        throw new com.google.gson.j(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object v(String str) {
        throw new com.google.gson.j(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object w(String str) {
        throw new com.google.gson.j(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object x(String str) {
        throw new com.google.gson.j(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object y(Constructor constructor) {
        try {
            return constructor.newInstance(new Object[0]);
        } catch (IllegalAccessException e10) {
            throw b9.a.e(e10);
        } catch (InstantiationException e11) {
            throw new RuntimeException("Failed to invoke constructor '" + b9.a.c(constructor) + "' with no args", e11);
        } catch (InvocationTargetException e12) {
            throw new RuntimeException("Failed to invoke constructor '" + b9.a.c(constructor) + "' with no args", e12.getCause());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object z() {
        return new LinkedHashSet();
    }

    public a0 t(com.google.gson.reflect.a aVar) {
        Type d10 = aVar.d();
        Class c10 = aVar.c();
        android.support.v4.media.session.b.a(this.f9317a.get(d10));
        android.support.v4.media.session.b.a(this.f9317a.get(c10));
        a0 O = O(d10, c10);
        if (O != null) {
            return O;
        }
        com.google.gson.s b10 = d0.b(this.f9319c, c10);
        a0 M = M(c10, b10);
        if (M != null) {
            return M;
        }
        a0 N = N(d10, c10);
        if (N != null) {
            return N;
        }
        final String s10 = s(c10);
        if (s10 != null) {
            return new a0() { // from class: com.google.gson.internal.c
                @Override // com.google.gson.internal.a0
                public final Object a() {
                    Object u10;
                    u10 = u.u(s10);
                    return u10;
                }
            };
        }
        if (b10 == com.google.gson.s.ALLOW) {
            return P(c10);
        }
        final String str = "Unable to create instance of " + c10 + "; ReflectionAccessFilter does not permit using reflection or Unsafe. Register an InstanceCreator or a TypeAdapter for this type or adjust the access filter to allow using reflection.";
        return new a0() { // from class: com.google.gson.internal.l
            @Override // com.google.gson.internal.a0
            public final Object a() {
                Object v10;
                v10 = u.v(str);
                return v10;
            }
        };
    }

    public String toString() {
        return this.f9317a.toString();
    }
}
