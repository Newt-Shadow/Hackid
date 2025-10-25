package com.dexterous.flutterlocalnotifications;

import androidx.annotation.Keep;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import java.util.LinkedHashMap;
import java.util.Map;
@Keep
/* loaded from: classes.dex */
public final class RuntimeTypeAdapterFactory<T> implements com.google.gson.w {
    private final Class<?> baseType;
    private final Map<String, Class<?>> labelToSubtype = new LinkedHashMap();
    private final Map<Class<?>, String> subtypeToLabel = new LinkedHashMap();
    private final String typeFieldName;

    private RuntimeTypeAdapterFactory(Class<?> cls, String str) {
        if (str != null && cls != null) {
            this.baseType = cls;
            this.typeFieldName = str;
            return;
        }
        throw null;
    }

    public static <T> RuntimeTypeAdapterFactory<T> of(Class<T> cls, String str) {
        return new RuntimeTypeAdapterFactory<>(cls, str);
    }

    @Override // com.google.gson.w
    public <R> TypeAdapter create(Gson gson, com.google.gson.reflect.a<R> aVar) {
        if (aVar.c() != this.baseType) {
            return null;
        }
        final LinkedHashMap linkedHashMap = new LinkedHashMap();
        final LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        for (Map.Entry<String, Class<?>> entry : this.labelToSubtype.entrySet()) {
            TypeAdapter q10 = gson.q(this, com.google.gson.reflect.a.a(entry.getValue()));
            linkedHashMap.put(entry.getKey(), q10);
            linkedHashMap2.put(entry.getValue(), q10);
        }
        return new TypeAdapter() { // from class: com.dexterous.flutterlocalnotifications.RuntimeTypeAdapterFactory.1
            @Override // com.google.gson.TypeAdapter
            public Object c(c9.a aVar2) {
                com.google.gson.i a10 = com.google.gson.internal.e0.a(aVar2);
                com.google.gson.i C = a10.l().C(RuntimeTypeAdapterFactory.this.typeFieldName);
                if (C != null) {
                    String n10 = C.n();
                    TypeAdapter typeAdapter = (TypeAdapter) linkedHashMap.get(n10);
                    if (typeAdapter != null) {
                        return typeAdapter.a(a10);
                    }
                    throw new com.google.gson.m("cannot deserialize " + RuntimeTypeAdapterFactory.this.baseType + " subtype named " + n10 + "; did you forget to register a subtype?");
                }
                throw new com.google.gson.m("cannot deserialize " + RuntimeTypeAdapterFactory.this.baseType + " because it does not define a field named " + RuntimeTypeAdapterFactory.this.typeFieldName);
            }

            @Override // com.google.gson.TypeAdapter
            public void e(c9.c cVar, Object obj) {
                Class<?> cls = obj.getClass();
                String str = (String) RuntimeTypeAdapterFactory.this.subtypeToLabel.get(cls);
                TypeAdapter typeAdapter = (TypeAdapter) linkedHashMap2.get(cls);
                if (typeAdapter != null) {
                    com.google.gson.l l10 = typeAdapter.d(obj).l();
                    if (!l10.B(RuntimeTypeAdapterFactory.this.typeFieldName)) {
                        com.google.gson.l lVar = new com.google.gson.l();
                        lVar.t(RuntimeTypeAdapterFactory.this.typeFieldName, new com.google.gson.n(str));
                        for (Map.Entry entry2 : l10.y()) {
                            lVar.t((String) entry2.getKey(), (com.google.gson.i) entry2.getValue());
                        }
                        com.google.gson.internal.e0.b(lVar, cVar);
                        return;
                    }
                    throw new com.google.gson.m("cannot serialize " + cls.getName() + " because it already defines a field named " + RuntimeTypeAdapterFactory.this.typeFieldName);
                }
                throw new com.google.gson.m("cannot serialize " + cls.getName() + "; did you forget to register a subtype?");
            }
        }.b();
    }

    public RuntimeTypeAdapterFactory<T> registerSubtype(Class<? extends T> cls, String str) {
        if (cls != null && str != null) {
            if (!this.subtypeToLabel.containsKey(cls) && !this.labelToSubtype.containsKey(str)) {
                this.labelToSubtype.put(str, cls);
                this.subtypeToLabel.put(cls, str);
                return this;
            }
            throw new IllegalArgumentException("types and labels must be unique");
        }
        throw null;
    }

    public static <T> RuntimeTypeAdapterFactory<T> of(Class<T> cls) {
        return new RuntimeTypeAdapterFactory<>(cls, "type");
    }

    public RuntimeTypeAdapterFactory<T> registerSubtype(Class<? extends T> cls) {
        return registerSubtype(cls, cls.getSimpleName());
    }
}
