package com.google.gson.reflect;

import com.google.gson.internal.b;
import com.google.gson.internal.f0;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Objects;
/* loaded from: classes.dex */
public class a<T> {

    /* renamed from: a  reason: collision with root package name */
    private final Class f9355a;

    /* renamed from: b  reason: collision with root package name */
    private final Type f9356b;

    /* renamed from: c  reason: collision with root package name */
    private final int f9357c;

    /* JADX INFO: Access modifiers changed from: protected */
    public a() {
        Type e10 = e();
        this.f9356b = e10;
        this.f9355a = b.k(e10);
        this.f9357c = e10.hashCode();
    }

    public static a a(Class cls) {
        return new a(cls);
    }

    public static a b(Type type) {
        return new a(type);
    }

    private Type e() {
        Type genericSuperclass = getClass().getGenericSuperclass();
        if (genericSuperclass instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) genericSuperclass;
            if (parameterizedType.getRawType() == a.class) {
                Type b10 = b.b(parameterizedType.getActualTypeArguments()[0]);
                if (f()) {
                    g(b10);
                }
                return b10;
            }
        } else if (genericSuperclass == a.class) {
            throw new IllegalStateException("TypeToken must be created with a type argument: new TypeToken<...>() {}; When using code shrinkers (ProGuard, R8, ...) make sure that generic signatures are preserved.\nSee " + f0.a("type-token-raw"));
        }
        throw new IllegalStateException("Must only create direct subclasses of TypeToken");
    }

    private static boolean f() {
        return !Objects.equals(System.getProperty("gson.allowCapturingTypeVariables"), "true");
    }

    private static void g(Type type) {
        if (!(type instanceof TypeVariable)) {
            if (type instanceof GenericArrayType) {
                g(((GenericArrayType) type).getGenericComponentType());
                return;
            }
            int i10 = 0;
            if (type instanceof ParameterizedType) {
                ParameterizedType parameterizedType = (ParameterizedType) type;
                Type ownerType = parameterizedType.getOwnerType();
                if (ownerType != null) {
                    g(ownerType);
                }
                Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
                int length = actualTypeArguments.length;
                while (i10 < length) {
                    g(actualTypeArguments[i10]);
                    i10++;
                }
                return;
            } else if (type instanceof WildcardType) {
                WildcardType wildcardType = (WildcardType) type;
                for (Type type2 : wildcardType.getLowerBounds()) {
                    g(type2);
                }
                Type[] upperBounds = wildcardType.getUpperBounds();
                int length2 = upperBounds.length;
                while (i10 < length2) {
                    g(upperBounds[i10]);
                    i10++;
                }
                return;
            } else if (type != null) {
                return;
            } else {
                throw new IllegalArgumentException("TypeToken captured `null` as type argument; probably a compiler / runtime bug");
            }
        }
        TypeVariable typeVariable = (TypeVariable) type;
        throw new IllegalArgumentException("TypeToken type argument must not contain a type variable; captured type variable " + typeVariable.getName() + " declared by " + typeVariable.getGenericDeclaration() + "\nSee " + f0.a("typetoken-type-variable"));
    }

    public final Class c() {
        return this.f9355a;
    }

    public final Type d() {
        return this.f9356b;
    }

    public final boolean equals(Object obj) {
        if ((obj instanceof a) && b.f(this.f9356b, ((a) obj).f9356b)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.f9357c;
    }

    public final String toString() {
        return b.u(this.f9356b);
    }

    private a(Type type) {
        Objects.requireNonNull(type);
        Type b10 = b.b(type);
        this.f9356b = b10;
        this.f9355a = b.k(b10);
        this.f9357c = b10.hashCode();
    }
}
