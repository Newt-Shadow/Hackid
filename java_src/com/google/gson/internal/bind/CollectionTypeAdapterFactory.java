package com.google.gson.internal.bind;

import c9.c;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.internal.a0;
import com.google.gson.internal.u;
import com.google.gson.w;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.Iterator;
/* loaded from: classes.dex */
public final class CollectionTypeAdapterFactory implements w {

    /* renamed from: a  reason: collision with root package name */
    private final u f9156a;

    /* loaded from: classes.dex */
    private static final class Adapter<E> extends TypeAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final TypeAdapter f9157a;

        /* renamed from: b  reason: collision with root package name */
        private final a0 f9158b;

        public Adapter(Gson gson, Type type, TypeAdapter typeAdapter, a0 a0Var) {
            this.f9157a = new TypeAdapterRuntimeTypeWrapper(gson, typeAdapter, type);
            this.f9158b = a0Var;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.gson.TypeAdapter
        /* renamed from: f */
        public Collection c(c9.a aVar) {
            if (aVar.X() == c9.b.NULL) {
                aVar.H();
                return null;
            }
            Collection collection = (Collection) this.f9158b.a();
            aVar.b();
            while (aVar.u()) {
                collection.add(this.f9157a.c(aVar));
            }
            aVar.g();
            return collection;
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: g */
        public void e(c cVar, Collection collection) {
            if (collection == null) {
                cVar.x();
                return;
            }
            cVar.e();
            Iterator<E> it = collection.iterator();
            while (it.hasNext()) {
                this.f9157a.e(cVar, it.next());
            }
            cVar.h();
        }
    }

    public CollectionTypeAdapterFactory(u uVar) {
        this.f9156a = uVar;
    }

    @Override // com.google.gson.w
    public TypeAdapter create(Gson gson, com.google.gson.reflect.a aVar) {
        Type d10 = aVar.d();
        Class c10 = aVar.c();
        if (!Collection.class.isAssignableFrom(c10)) {
            return null;
        }
        Type h10 = com.google.gson.internal.b.h(d10, c10);
        return new Adapter(gson, h10, gson.o(com.google.gson.reflect.a.b(h10)), this.f9156a.t(aVar));
    }
}
