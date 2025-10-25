package com.google.gson.internal.bind;

import c9.c;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.w;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.util.ArrayList;
/* loaded from: classes.dex */
public final class ArrayTypeAdapter<E> extends TypeAdapter {

    /* renamed from: c  reason: collision with root package name */
    public static final w f9153c = new w() { // from class: com.google.gson.internal.bind.ArrayTypeAdapter.1
        @Override // com.google.gson.w
        public TypeAdapter create(Gson gson, com.google.gson.reflect.a aVar) {
            Type d10 = aVar.d();
            if (!(d10 instanceof GenericArrayType) && (!(d10 instanceof Class) || !((Class) d10).isArray())) {
                return null;
            }
            Type g10 = com.google.gson.internal.b.g(d10);
            return new ArrayTypeAdapter(gson, gson.o(com.google.gson.reflect.a.b(g10)), com.google.gson.internal.b.k(g10));
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final Class f9154a;

    /* renamed from: b  reason: collision with root package name */
    private final TypeAdapter f9155b;

    public ArrayTypeAdapter(Gson gson, TypeAdapter typeAdapter, Class cls) {
        this.f9155b = new TypeAdapterRuntimeTypeWrapper(gson, typeAdapter, cls);
        this.f9154a = cls;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.gson.TypeAdapter
    public Object c(c9.a aVar) {
        if (aVar.X() == c9.b.NULL) {
            aVar.H();
            return null;
        }
        ArrayList arrayList = new ArrayList();
        aVar.b();
        while (aVar.u()) {
            arrayList.add(this.f9155b.c(aVar));
        }
        aVar.g();
        int size = arrayList.size();
        if (this.f9154a.isPrimitive()) {
            Object newInstance = Array.newInstance(this.f9154a, size);
            for (int i10 = 0; i10 < size; i10++) {
                Array.set(newInstance, i10, arrayList.get(i10));
            }
            return newInstance;
        }
        return arrayList.toArray((Object[]) Array.newInstance(this.f9154a, size));
    }

    @Override // com.google.gson.TypeAdapter
    public void e(c cVar, Object obj) {
        if (obj == null) {
            cVar.x();
            return;
        }
        cVar.e();
        int length = Array.getLength(obj);
        for (int i10 = 0; i10 < length; i10++) {
            this.f9155b.e(cVar, Array.get(obj, i10));
        }
        cVar.h();
    }
}
