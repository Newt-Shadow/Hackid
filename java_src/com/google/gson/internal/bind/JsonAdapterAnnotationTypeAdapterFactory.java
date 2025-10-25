package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.h;
import com.google.gson.internal.u;
import com.google.gson.p;
import com.google.gson.w;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* loaded from: classes.dex */
public final class JsonAdapterAnnotationTypeAdapterFactory implements w {

    /* renamed from: c  reason: collision with root package name */
    private static final w f9168c = new DummyTypeAdapterFactory();

    /* renamed from: d  reason: collision with root package name */
    private static final w f9169d = new DummyTypeAdapterFactory();

    /* renamed from: a  reason: collision with root package name */
    private final u f9170a;

    /* renamed from: b  reason: collision with root package name */
    private final ConcurrentMap f9171b = new ConcurrentHashMap();

    /* loaded from: classes.dex */
    private static class DummyTypeAdapterFactory implements w {
        private DummyTypeAdapterFactory() {
        }

        @Override // com.google.gson.w
        public TypeAdapter create(Gson gson, com.google.gson.reflect.a aVar) {
            throw new AssertionError("Factory should not be used");
        }
    }

    public JsonAdapterAnnotationTypeAdapterFactory(u uVar) {
        this.f9170a = uVar;
    }

    private static Object a(u uVar, Class cls) {
        return uVar.t(com.google.gson.reflect.a.a(cls)).a();
    }

    private static z8.b b(Class cls) {
        return (z8.b) cls.getAnnotation(z8.b.class);
    }

    private w e(Class cls, w wVar) {
        w wVar2 = (w) this.f9171b.putIfAbsent(cls, wVar);
        if (wVar2 != null) {
            return wVar2;
        }
        return wVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public TypeAdapter c(u uVar, Gson gson, com.google.gson.reflect.a aVar, z8.b bVar, boolean z10) {
        p pVar;
        h hVar;
        w wVar;
        TypeAdapter treeTypeAdapter;
        Object a10 = a(uVar, bVar.value());
        boolean nullSafe = bVar.nullSafe();
        if (a10 instanceof TypeAdapter) {
            treeTypeAdapter = (TypeAdapter) a10;
        } else if (a10 instanceof w) {
            w wVar2 = (w) a10;
            if (z10) {
                wVar2 = e(aVar.c(), wVar2);
            }
            treeTypeAdapter = wVar2.create(gson, aVar);
        } else {
            boolean z11 = a10 instanceof p;
            if (!z11 && !(a10 instanceof h)) {
                throw new IllegalArgumentException("Invalid attempt to bind an instance of " + a10.getClass().getName() + " as a @JsonAdapter for " + aVar.toString() + ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer.");
            }
            if (z11) {
                pVar = (p) a10;
            } else {
                pVar = null;
            }
            if (a10 instanceof h) {
                hVar = (h) a10;
            } else {
                hVar = null;
            }
            if (z10) {
                wVar = f9168c;
            } else {
                wVar = f9169d;
            }
            treeTypeAdapter = new TreeTypeAdapter(pVar, hVar, gson, aVar, wVar, nullSafe);
            nullSafe = false;
        }
        if (treeTypeAdapter != null && nullSafe) {
            return treeTypeAdapter.b();
        }
        return treeTypeAdapter;
    }

    @Override // com.google.gson.w
    public TypeAdapter create(Gson gson, com.google.gson.reflect.a aVar) {
        z8.b b10 = b(aVar.c());
        if (b10 == null) {
            return null;
        }
        return c(this.f9170a, gson, aVar, b10, true);
    }

    public boolean d(com.google.gson.reflect.a aVar, w wVar) {
        Objects.requireNonNull(aVar);
        Objects.requireNonNull(wVar);
        if (wVar == f9168c) {
            return true;
        }
        Class c10 = aVar.c();
        w wVar2 = (w) this.f9171b.get(c10);
        if (wVar2 != null) {
            if (wVar2 == wVar) {
                return true;
            }
            return false;
        }
        z8.b b10 = b(c10);
        if (b10 == null) {
            return false;
        }
        Class value = b10.value();
        if (w.class.isAssignableFrom(value) && e(c10, (w) a(this.f9170a, value)) == wVar) {
            return true;
        }
        return false;
    }
}
