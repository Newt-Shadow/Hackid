package com.google.gson.internal.bind;

import c9.c;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.w;
import java.lang.Enum;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
class EnumTypeAdapter<T extends Enum<T>> extends TypeAdapter {

    /* renamed from: d  reason: collision with root package name */
    static final w f9164d = new w() { // from class: com.google.gson.internal.bind.EnumTypeAdapter.1
        @Override // com.google.gson.w
        public TypeAdapter create(Gson gson, com.google.gson.reflect.a aVar) {
            Class c10 = aVar.c();
            if (!Enum.class.isAssignableFrom(c10) || c10 == Enum.class) {
                return null;
            }
            if (!c10.isEnum()) {
                c10 = c10.getSuperclass();
            }
            return new EnumTypeAdapter(c10);
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final Map f9165a;

    /* renamed from: b  reason: collision with root package name */
    private final Map f9166b;

    /* renamed from: c  reason: collision with root package name */
    private final Map f9167c;

    @Override // com.google.gson.TypeAdapter
    /* renamed from: f */
    public Enum c(c9.a aVar) {
        if (aVar.X() == c9.b.NULL) {
            aVar.H();
            return null;
        }
        String C = aVar.C();
        Enum r02 = (Enum) this.f9165a.get(C);
        if (r02 == null) {
            return (Enum) this.f9166b.get(C);
        }
        return r02;
    }

    @Override // com.google.gson.TypeAdapter
    /* renamed from: g */
    public void e(c cVar, Enum r32) {
        String str;
        if (r32 == null) {
            str = null;
        } else {
            str = (String) this.f9167c.get(r32);
        }
        cVar.J0(str);
    }

    private EnumTypeAdapter(Class cls) {
        this.f9165a = new HashMap();
        this.f9166b = new HashMap();
        this.f9167c = new HashMap();
        try {
            Field[] declaredFields = cls.getDeclaredFields();
            int i10 = 0;
            for (Field field : declaredFields) {
                if (field.isEnumConstant()) {
                    declaredFields[i10] = field;
                    i10++;
                }
            }
            Field[] fieldArr = (Field[]) Arrays.copyOf(declaredFields, i10);
            AccessibleObject.setAccessible(fieldArr, true);
            for (Field field2 : fieldArr) {
                Enum r42 = (Enum) field2.get(null);
                String name = r42.name();
                String str = r42.toString();
                z8.c cVar = (z8.c) field2.getAnnotation(z8.c.class);
                if (cVar != null) {
                    name = cVar.value();
                    for (String str2 : cVar.alternate()) {
                        this.f9165a.put(str2, r42);
                    }
                }
                this.f9165a.put(name, r42);
                this.f9166b.put(str, r42);
                this.f9167c.put(r42, name);
            }
        } catch (IllegalAccessException e10) {
            throw new AssertionError(e10);
        }
    }
}
