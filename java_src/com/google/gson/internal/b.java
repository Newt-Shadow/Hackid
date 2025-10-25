package com.google.gson.internal;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Properties;
/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a  reason: collision with root package name */
    static final Type[] f9146a = new Type[0];

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a implements GenericArrayType, Serializable {

        /* renamed from: a  reason: collision with root package name */
        private final Type f9147a;

        public a(Type type) {
            Objects.requireNonNull(type);
            this.f9147a = b.b(type);
        }

        public boolean equals(Object obj) {
            if ((obj instanceof GenericArrayType) && b.f(this, (GenericArrayType) obj)) {
                return true;
            }
            return false;
        }

        @Override // java.lang.reflect.GenericArrayType
        public Type getGenericComponentType() {
            return this.f9147a;
        }

        public int hashCode() {
            return this.f9147a.hashCode();
        }

        public String toString() {
            return b.u(this.f9147a) + "[]";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.gson.internal.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0111b implements ParameterizedType, Serializable {

        /* renamed from: a  reason: collision with root package name */
        private final Type f9148a;

        /* renamed from: b  reason: collision with root package name */
        private final Type f9149b;

        /* renamed from: c  reason: collision with root package name */
        private final Type[] f9150c;

        public C0111b(Type type, Class cls, Type... typeArr) {
            Type b10;
            Objects.requireNonNull(cls);
            if (type == null && b.o(cls)) {
                throw new IllegalArgumentException("Must specify owner type for " + cls);
            }
            if (type == null) {
                b10 = null;
            } else {
                b10 = b.b(type);
            }
            this.f9148a = b10;
            this.f9149b = b.b(cls);
            Type[] typeArr2 = (Type[]) typeArr.clone();
            this.f9150c = typeArr2;
            int length = typeArr2.length;
            for (int i10 = 0; i10 < length; i10++) {
                Objects.requireNonNull(this.f9150c[i10]);
                b.c(this.f9150c[i10]);
                Type[] typeArr3 = this.f9150c;
                typeArr3[i10] = b.b(typeArr3[i10]);
            }
        }

        private static int a(Object obj) {
            if (obj != null) {
                return obj.hashCode();
            }
            return 0;
        }

        public boolean equals(Object obj) {
            if ((obj instanceof ParameterizedType) && b.f(this, (ParameterizedType) obj)) {
                return true;
            }
            return false;
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type[] getActualTypeArguments() {
            return (Type[]) this.f9150c.clone();
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type getOwnerType() {
            return this.f9148a;
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type getRawType() {
            return this.f9149b;
        }

        public int hashCode() {
            return (Arrays.hashCode(this.f9150c) ^ this.f9149b.hashCode()) ^ a(this.f9148a);
        }

        public String toString() {
            int length = this.f9150c.length;
            if (length == 0) {
                return b.u(this.f9149b);
            }
            StringBuilder sb2 = new StringBuilder((length + 1) * 30);
            sb2.append(b.u(this.f9149b));
            sb2.append("<");
            sb2.append(b.u(this.f9150c[0]));
            for (int i10 = 1; i10 < length; i10++) {
                sb2.append(", ");
                sb2.append(b.u(this.f9150c[i10]));
            }
            sb2.append(">");
            return sb2.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class c implements WildcardType, Serializable {

        /* renamed from: a  reason: collision with root package name */
        private final Type f9151a;

        /* renamed from: b  reason: collision with root package name */
        private final Type f9152b;

        public c(Type[] typeArr, Type[] typeArr2) {
            boolean z10;
            boolean z11;
            if (typeArr2.length <= 1) {
                z10 = true;
            } else {
                z10 = false;
            }
            com.google.gson.internal.a.a(z10);
            if (typeArr.length == 1) {
                z11 = true;
            } else {
                z11 = false;
            }
            com.google.gson.internal.a.a(z11);
            if (typeArr2.length == 1) {
                Objects.requireNonNull(typeArr2[0]);
                b.c(typeArr2[0]);
                com.google.gson.internal.a.a(typeArr[0] == Object.class);
                this.f9152b = b.b(typeArr2[0]);
                this.f9151a = Object.class;
                return;
            }
            Objects.requireNonNull(typeArr[0]);
            b.c(typeArr[0]);
            this.f9152b = null;
            this.f9151a = b.b(typeArr[0]);
        }

        public boolean equals(Object obj) {
            if ((obj instanceof WildcardType) && b.f(this, (WildcardType) obj)) {
                return true;
            }
            return false;
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getLowerBounds() {
            Type type = this.f9152b;
            return type != null ? new Type[]{type} : b.f9146a;
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getUpperBounds() {
            return new Type[]{this.f9151a};
        }

        public int hashCode() {
            int i10;
            Type type = this.f9152b;
            if (type != null) {
                i10 = type.hashCode() + 31;
            } else {
                i10 = 1;
            }
            return i10 ^ (this.f9151a.hashCode() + 31);
        }

        public String toString() {
            if (this.f9152b != null) {
                return "? super " + b.u(this.f9152b);
            } else if (this.f9151a == Object.class) {
                return "?";
            } else {
                return "? extends " + b.u(this.f9151a);
            }
        }
    }

    public static GenericArrayType a(Type type) {
        return new a(type);
    }

    public static Type b(Type type) {
        if (type instanceof Class) {
            Class cls = (Class) type;
            if (cls.isArray()) {
                return new a(b(cls.getComponentType()));
            }
            return cls;
        } else if (type instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type;
            return new C0111b(parameterizedType.getOwnerType(), (Class) parameterizedType.getRawType(), parameterizedType.getActualTypeArguments());
        } else if (type instanceof GenericArrayType) {
            return new a(((GenericArrayType) type).getGenericComponentType());
        } else {
            if (type instanceof WildcardType) {
                WildcardType wildcardType = (WildcardType) type;
                return new c(wildcardType.getUpperBounds(), wildcardType.getLowerBounds());
            }
            return type;
        }
    }

    static void c(Type type) {
        boolean z10;
        if ((type instanceof Class) && ((Class) type).isPrimitive()) {
            z10 = false;
        } else {
            z10 = true;
        }
        com.google.gson.internal.a.a(z10);
    }

    private static Class d(TypeVariable typeVariable) {
        GenericDeclaration genericDeclaration = typeVariable.getGenericDeclaration();
        if (genericDeclaration instanceof Class) {
            return (Class) genericDeclaration;
        }
        return null;
    }

    private static boolean e(Object obj, Object obj2) {
        return Objects.equals(obj, obj2);
    }

    public static boolean f(Type type, Type type2) {
        if (type == type2) {
            return true;
        }
        if (type instanceof Class) {
            return type.equals(type2);
        }
        if (type instanceof ParameterizedType) {
            if (!(type2 instanceof ParameterizedType)) {
                return false;
            }
            ParameterizedType parameterizedType = (ParameterizedType) type;
            ParameterizedType parameterizedType2 = (ParameterizedType) type2;
            if (e(parameterizedType.getOwnerType(), parameterizedType2.getOwnerType()) && parameterizedType.getRawType().equals(parameterizedType2.getRawType()) && Arrays.equals(parameterizedType.getActualTypeArguments(), parameterizedType2.getActualTypeArguments())) {
                return true;
            }
            return false;
        } else if (type instanceof GenericArrayType) {
            if (!(type2 instanceof GenericArrayType)) {
                return false;
            }
            return f(((GenericArrayType) type).getGenericComponentType(), ((GenericArrayType) type2).getGenericComponentType());
        } else if (type instanceof WildcardType) {
            if (!(type2 instanceof WildcardType)) {
                return false;
            }
            WildcardType wildcardType = (WildcardType) type;
            WildcardType wildcardType2 = (WildcardType) type2;
            if (Arrays.equals(wildcardType.getUpperBounds(), wildcardType2.getUpperBounds()) && Arrays.equals(wildcardType.getLowerBounds(), wildcardType2.getLowerBounds())) {
                return true;
            }
            return false;
        } else if (!(type instanceof TypeVariable) || !(type2 instanceof TypeVariable)) {
            return false;
        } else {
            TypeVariable typeVariable = (TypeVariable) type;
            TypeVariable typeVariable2 = (TypeVariable) type2;
            if (Objects.equals(typeVariable.getGenericDeclaration(), typeVariable2.getGenericDeclaration()) && typeVariable.getName().equals(typeVariable2.getName())) {
                return true;
            }
            return false;
        }
    }

    public static Type g(Type type) {
        if (type instanceof GenericArrayType) {
            return ((GenericArrayType) type).getGenericComponentType();
        }
        return ((Class) type).getComponentType();
    }

    public static Type h(Type type, Class cls) {
        Type l10 = l(type, cls, Collection.class);
        if (l10 instanceof ParameterizedType) {
            return ((ParameterizedType) l10).getActualTypeArguments()[0];
        }
        return Object.class;
    }

    private static Type i(Type type, Class cls, Class cls2) {
        if (cls2 == cls) {
            return type;
        }
        if (cls2.isInterface()) {
            Class<?>[] interfaces = cls.getInterfaces();
            int length = interfaces.length;
            for (int i10 = 0; i10 < length; i10++) {
                Class<?> cls3 = interfaces[i10];
                if (cls3 == cls2) {
                    return cls.getGenericInterfaces()[i10];
                }
                if (cls2.isAssignableFrom(cls3)) {
                    return i(cls.getGenericInterfaces()[i10], interfaces[i10], cls2);
                }
            }
        }
        if (!cls.isInterface()) {
            while (cls != Object.class) {
                Class<?> superclass = cls.getSuperclass();
                if (superclass == cls2) {
                    return cls.getGenericSuperclass();
                }
                if (cls2.isAssignableFrom(superclass)) {
                    return i(cls.getGenericSuperclass(), superclass, cls2);
                }
                cls = superclass;
            }
        }
        return cls2;
    }

    public static Type[] j(Type type, Class cls) {
        if (Properties.class.isAssignableFrom(cls)) {
            return new Type[]{String.class, String.class};
        }
        Type l10 = l(type, cls, Map.class);
        return l10 instanceof ParameterizedType ? ((ParameterizedType) l10).getActualTypeArguments() : new Type[]{Object.class, Object.class};
    }

    public static Class k(Type type) {
        String name;
        if (type instanceof Class) {
            return (Class) type;
        }
        if (type instanceof ParameterizedType) {
            Type rawType = ((ParameterizedType) type).getRawType();
            com.google.gson.internal.a.a(rawType instanceof Class);
            return (Class) rawType;
        } else if (type instanceof GenericArrayType) {
            return Array.newInstance(k(((GenericArrayType) type).getGenericComponentType()), 0).getClass();
        } else {
            if (type instanceof TypeVariable) {
                return Object.class;
            }
            if (type instanceof WildcardType) {
                return k(((WildcardType) type).getUpperBounds()[0]);
            }
            if (type == null) {
                name = "null";
            } else {
                name = type.getClass().getName();
            }
            throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + type + "> is of type " + name);
        }
    }

    private static Type l(Type type, Class cls, Class cls2) {
        if (type instanceof WildcardType) {
            type = ((WildcardType) type).getUpperBounds()[0];
        }
        com.google.gson.internal.a.a(cls2.isAssignableFrom(cls));
        return p(type, cls, i(type, cls, cls2));
    }

    private static int m(Object[] objArr, Object obj) {
        int length = objArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (obj.equals(objArr[i10])) {
                return i10;
            }
        }
        throw new NoSuchElementException();
    }

    public static ParameterizedType n(Type type, Class cls, Type... typeArr) {
        return new C0111b(type, cls, typeArr);
    }

    public static boolean o(Type type) {
        if (!(type instanceof Class)) {
            return false;
        }
        Class cls = (Class) type;
        if (Modifier.isStatic(cls.getModifiers()) || cls.getDeclaringClass() == null) {
            return false;
        }
        return true;
    }

    public static Type p(Type type, Class cls, Type type2) {
        return q(type, cls, type2, new HashMap());
    }

    /* JADX WARN: Code restructure failed: missing block: B:58:0x00e2, code lost:
        if (r0 == null) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00e4, code lost:
        r13.put(r0, r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00e7, code lost:
        return r12;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v1, types: [java.lang.reflect.Type] */
    /* JADX WARN: Type inference failed for: r12v10, types: [java.lang.reflect.Type, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v13, types: [java.lang.reflect.Type] */
    /* JADX WARN: Type inference failed for: r12v14 */
    /* JADX WARN: Type inference failed for: r12v15 */
    /* JADX WARN: Type inference failed for: r12v2, types: [java.lang.reflect.WildcardType] */
    /* JADX WARN: Type inference failed for: r12v3, types: [java.lang.reflect.WildcardType] */
    /* JADX WARN: Type inference failed for: r12v4, types: [java.lang.reflect.WildcardType] */
    /* JADX WARN: Type inference failed for: r12v5, types: [java.lang.reflect.ParameterizedType] */
    /* JADX WARN: Type inference failed for: r12v6, types: [java.lang.reflect.GenericArrayType] */
    /* JADX WARN: Type inference failed for: r12v7 */
    /* JADX WARN: Type inference failed for: r12v9 */
    /* JADX WARN: Type inference failed for: r13v0, types: [java.util.Map] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.reflect.Type q(java.lang.reflect.Type r10, java.lang.Class r11, java.lang.reflect.Type r12, java.util.Map r13) {
        /*
            Method dump skipped, instructions count: 232
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.b.q(java.lang.reflect.Type, java.lang.Class, java.lang.reflect.Type, java.util.Map):java.lang.reflect.Type");
    }

    private static Type r(Type type, Class cls, TypeVariable typeVariable) {
        Class d10 = d(typeVariable);
        if (d10 == null) {
            return typeVariable;
        }
        Type i10 = i(type, cls, d10);
        if (i10 instanceof ParameterizedType) {
            return ((ParameterizedType) i10).getActualTypeArguments()[m(d10.getTypeParameters(), typeVariable)];
        }
        return typeVariable;
    }

    public static WildcardType s(Type type) {
        Type[] typeArr;
        if (type instanceof WildcardType) {
            typeArr = ((WildcardType) type).getUpperBounds();
        } else {
            typeArr = new Type[]{type};
        }
        return new c(typeArr, f9146a);
    }

    public static WildcardType t(Type type) {
        Type[] typeArr;
        if (type instanceof WildcardType) {
            typeArr = ((WildcardType) type).getLowerBounds();
        } else {
            typeArr = new Type[]{type};
        }
        return new c(new Type[]{Object.class}, typeArr);
    }

    public static String u(Type type) {
        if (type instanceof Class) {
            return ((Class) type).getName();
        }
        return type.toString();
    }
}
