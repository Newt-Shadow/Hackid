package com.google.gson.internal.bind;

import c9.c;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.i;
import com.google.gson.internal.a0;
import com.google.gson.internal.e0;
import com.google.gson.internal.u;
import com.google.gson.n;
import com.google.gson.q;
import com.google.gson.w;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Map;
/* loaded from: classes.dex */
public final class MapTypeAdapterFactory implements w {

    /* renamed from: a  reason: collision with root package name */
    private final u f9174a;

    /* renamed from: b  reason: collision with root package name */
    final boolean f9175b;

    /* loaded from: classes.dex */
    private final class Adapter<K, V> extends TypeAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final TypeAdapter f9176a;

        /* renamed from: b  reason: collision with root package name */
        private final TypeAdapter f9177b;

        /* renamed from: c  reason: collision with root package name */
        private final a0 f9178c;

        public Adapter(Gson gson, Type type, TypeAdapter typeAdapter, Type type2, TypeAdapter typeAdapter2, a0 a0Var) {
            this.f9176a = new TypeAdapterRuntimeTypeWrapper(gson, typeAdapter, type);
            this.f9177b = new TypeAdapterRuntimeTypeWrapper(gson, typeAdapter2, type2);
            this.f9178c = a0Var;
        }

        private String f(i iVar) {
            if (iVar.s()) {
                n m10 = iVar.m();
                if (m10.G()) {
                    return String.valueOf(m10.C());
                }
                if (m10.D()) {
                    return Boolean.toString(m10.d());
                }
                if (m10.I()) {
                    return m10.n();
                }
                throw new AssertionError();
            } else if (iVar.p()) {
                return "null";
            } else {
                throw new AssertionError();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.gson.TypeAdapter
        /* renamed from: g */
        public Map c(c9.a aVar) {
            c9.b X = aVar.X();
            if (X == c9.b.NULL) {
                aVar.H();
                return null;
            }
            Map map = (Map) this.f9178c.a();
            if (X == c9.b.BEGIN_ARRAY) {
                aVar.b();
                while (aVar.u()) {
                    aVar.b();
                    Object c10 = this.f9176a.c(aVar);
                    if (map.put(c10, this.f9177b.c(aVar)) == null) {
                        aVar.g();
                    } else {
                        throw new q("duplicate key: " + c10);
                    }
                }
                aVar.g();
            } else {
                aVar.t();
                while (aVar.u()) {
                    com.google.gson.internal.w.f9321a.a(aVar);
                    Object c11 = this.f9176a.c(aVar);
                    if (map.put(c11, this.f9177b.c(aVar)) != null) {
                        throw new q("duplicate key: " + c11);
                    }
                }
                aVar.r();
            }
            return map;
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: h */
        public void e(c cVar, Map map) {
            boolean z10;
            if (map == null) {
                cVar.x();
            } else if (!MapTypeAdapterFactory.this.f9175b) {
                cVar.f();
                for (Map.Entry<K, V> entry : map.entrySet()) {
                    cVar.v(String.valueOf(entry.getKey()));
                    this.f9177b.e(cVar, entry.getValue());
                }
                cVar.j();
            } else {
                ArrayList arrayList = new ArrayList(map.size());
                ArrayList arrayList2 = new ArrayList(map.size());
                int i10 = 0;
                boolean z11 = false;
                for (Map.Entry<K, V> entry2 : map.entrySet()) {
                    i d10 = this.f9176a.d(entry2.getKey());
                    arrayList.add(d10);
                    arrayList2.add(entry2.getValue());
                    if (!d10.o() && !d10.r()) {
                        z10 = false;
                    } else {
                        z10 = true;
                    }
                    z11 |= z10;
                }
                if (z11) {
                    cVar.e();
                    int size = arrayList.size();
                    while (i10 < size) {
                        cVar.e();
                        e0.b((i) arrayList.get(i10), cVar);
                        this.f9177b.e(cVar, arrayList2.get(i10));
                        cVar.h();
                        i10++;
                    }
                    cVar.h();
                    return;
                }
                cVar.f();
                int size2 = arrayList.size();
                while (i10 < size2) {
                    cVar.v(f((i) arrayList.get(i10)));
                    this.f9177b.e(cVar, arrayList2.get(i10));
                    i10++;
                }
                cVar.j();
            }
        }
    }

    public MapTypeAdapterFactory(u uVar, boolean z10) {
        this.f9174a = uVar;
        this.f9175b = z10;
    }

    private TypeAdapter a(Gson gson, Type type) {
        if (type != Boolean.TYPE && type != Boolean.class) {
            return gson.o(com.google.gson.reflect.a.b(type));
        }
        return TypeAdapters.f9236f;
    }

    @Override // com.google.gson.w
    public TypeAdapter create(Gson gson, com.google.gson.reflect.a aVar) {
        Type d10 = aVar.d();
        Class c10 = aVar.c();
        if (!Map.class.isAssignableFrom(c10)) {
            return null;
        }
        Type[] j10 = com.google.gson.internal.b.j(d10, c10);
        return new Adapter(gson, j10[0], a(gson, j10[0]), j10[1], gson.o(com.google.gson.reflect.a.b(j10[1])), this.f9174a.t(aVar));
    }
}
