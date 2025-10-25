package com.google.gson.internal.bind;

import c9.c;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.internal.bind.ReflectiveTypeAdapterFactory;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class TypeAdapterRuntimeTypeWrapper<T> extends TypeAdapter {

    /* renamed from: a  reason: collision with root package name */
    private final Gson f9228a;

    /* renamed from: b  reason: collision with root package name */
    private final TypeAdapter f9229b;

    /* renamed from: c  reason: collision with root package name */
    private final Type f9230c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TypeAdapterRuntimeTypeWrapper(Gson gson, TypeAdapter typeAdapter, Type type) {
        this.f9228a = gson;
        this.f9229b = typeAdapter;
        this.f9230c = type;
    }

    private static Type f(Type type, Object obj) {
        if (obj != null) {
            if ((type instanceof Class) || (type instanceof TypeVariable)) {
                return obj.getClass();
            }
            return type;
        }
        return type;
    }

    private static boolean g(TypeAdapter typeAdapter) {
        TypeAdapter f10;
        while ((typeAdapter instanceof SerializationDelegatingTypeAdapter) && (f10 = ((SerializationDelegatingTypeAdapter) typeAdapter).f()) != typeAdapter) {
            typeAdapter = f10;
        }
        return typeAdapter instanceof ReflectiveTypeAdapterFactory.Adapter;
    }

    @Override // com.google.gson.TypeAdapter
    public Object c(c9.a aVar) {
        return this.f9229b.c(aVar);
    }

    @Override // com.google.gson.TypeAdapter
    public void e(c cVar, Object obj) {
        TypeAdapter typeAdapter = this.f9229b;
        Type f10 = f(this.f9230c, obj);
        if (f10 != this.f9230c) {
            typeAdapter = this.f9228a.o(com.google.gson.reflect.a.b(f10));
            if ((typeAdapter instanceof ReflectiveTypeAdapterFactory.Adapter) && !g(this.f9229b)) {
                typeAdapter = this.f9229b;
            }
        }
        typeAdapter.e(cVar, obj);
    }
}
