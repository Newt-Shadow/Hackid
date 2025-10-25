package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.internal.Excluder;
import com.google.gson.internal.a0;
import com.google.gson.internal.c0;
import com.google.gson.internal.d0;
import com.google.gson.internal.f0;
import com.google.gson.internal.u;
import com.google.gson.j;
import com.google.gson.m;
import com.google.gson.q;
import com.google.gson.s;
import com.google.gson.w;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public final class ReflectiveTypeAdapterFactory implements w {

    /* renamed from: a  reason: collision with root package name */
    private final u f9189a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.gson.c f9190b;

    /* renamed from: c  reason: collision with root package name */
    private final Excluder f9191c;

    /* renamed from: d  reason: collision with root package name */
    private final JsonAdapterAnnotationTypeAdapterFactory f9192d;

    /* renamed from: e  reason: collision with root package name */
    private final List f9193e;

    /* loaded from: classes.dex */
    public static abstract class Adapter<T, A> extends TypeAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final c f9195a;

        Adapter(c cVar) {
            this.f9195a = cVar;
        }

        @Override // com.google.gson.TypeAdapter
        public Object c(c9.a aVar) {
            if (aVar.X() == c9.b.NULL) {
                aVar.H();
                return null;
            }
            Object f10 = f();
            Map map = this.f9195a.f9212a;
            try {
                aVar.t();
                while (aVar.u()) {
                    b bVar = (b) map.get(aVar.f0());
                    if (bVar == null) {
                        aVar.G();
                    } else {
                        h(f10, aVar, bVar);
                    }
                }
                aVar.r();
                return g(f10);
            } catch (IllegalAccessException e10) {
                throw b9.a.e(e10);
            } catch (IllegalStateException e11) {
                throw new q(e11);
            }
        }

        @Override // com.google.gson.TypeAdapter
        public void e(c9.c cVar, Object obj) {
            if (obj == null) {
                cVar.x();
                return;
            }
            cVar.f();
            try {
                for (b bVar : this.f9195a.f9213b) {
                    bVar.c(cVar, obj);
                }
                cVar.j();
            } catch (IllegalAccessException e10) {
                throw b9.a.e(e10);
            }
        }

        abstract Object f();

        abstract Object g(Object obj);

        abstract void h(Object obj, c9.a aVar, b bVar);
    }

    /* loaded from: classes.dex */
    private static final class FieldReflectionAdapter<T> extends Adapter<T, T> {

        /* renamed from: b  reason: collision with root package name */
        private final a0 f9196b;

        FieldReflectionAdapter(a0 a0Var, c cVar) {
            super(cVar);
            this.f9196b = a0Var;
        }

        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.Adapter
        Object f() {
            return this.f9196b.a();
        }

        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.Adapter
        Object g(Object obj) {
            return obj;
        }

        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.Adapter
        void h(Object obj, c9.a aVar, b bVar) {
            bVar.b(aVar, obj);
        }
    }

    /* loaded from: classes.dex */
    private static final class RecordAdapter<T> extends Adapter<T, Object[]> {

        /* renamed from: e  reason: collision with root package name */
        static final Map f9197e = k();

        /* renamed from: b  reason: collision with root package name */
        private final Constructor f9198b;

        /* renamed from: c  reason: collision with root package name */
        private final Object[] f9199c;

        /* renamed from: d  reason: collision with root package name */
        private final Map f9200d;

        RecordAdapter(Class cls, c cVar, boolean z10) {
            super(cVar);
            this.f9200d = new HashMap();
            Constructor i10 = b9.a.i(cls);
            this.f9198b = i10;
            if (z10) {
                ReflectiveTypeAdapterFactory.b(null, i10);
            } else {
                b9.a.o(i10);
            }
            String[] k10 = b9.a.k(cls);
            for (int i11 = 0; i11 < k10.length; i11++) {
                this.f9200d.put(k10[i11], Integer.valueOf(i11));
            }
            Class<?>[] parameterTypes = this.f9198b.getParameterTypes();
            this.f9199c = new Object[parameterTypes.length];
            for (int i12 = 0; i12 < parameterTypes.length; i12++) {
                this.f9199c[i12] = f9197e.get(parameterTypes[i12]);
            }
        }

        private static Map k() {
            HashMap hashMap = new HashMap();
            hashMap.put(Byte.TYPE, (byte) 0);
            hashMap.put(Short.TYPE, (short) 0);
            hashMap.put(Integer.TYPE, 0);
            hashMap.put(Long.TYPE, 0L);
            hashMap.put(Float.TYPE, Float.valueOf(0.0f));
            hashMap.put(Double.TYPE, Double.valueOf(0.0d));
            hashMap.put(Character.TYPE, (char) 0);
            hashMap.put(Boolean.TYPE, Boolean.FALSE);
            return hashMap;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.Adapter
        /* renamed from: i */
        public Object[] f() {
            return (Object[]) this.f9199c.clone();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.Adapter
        /* renamed from: j */
        public Object g(Object[] objArr) {
            try {
                return this.f9198b.newInstance(objArr);
            } catch (IllegalAccessException e10) {
                throw b9.a.e(e10);
            } catch (IllegalArgumentException e11) {
                e = e11;
                throw new RuntimeException("Failed to invoke constructor '" + b9.a.c(this.f9198b) + "' with args " + Arrays.toString(objArr), e);
            } catch (InstantiationException e12) {
                e = e12;
                throw new RuntimeException("Failed to invoke constructor '" + b9.a.c(this.f9198b) + "' with args " + Arrays.toString(objArr), e);
            } catch (InvocationTargetException e13) {
                throw new RuntimeException("Failed to invoke constructor '" + b9.a.c(this.f9198b) + "' with args " + Arrays.toString(objArr), e13.getCause());
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.Adapter
        /* renamed from: l */
        public void h(Object[] objArr, c9.a aVar, b bVar) {
            Integer num = (Integer) this.f9200d.get(bVar.f9210c);
            if (num != null) {
                bVar.a(aVar, num.intValue(), objArr);
                return;
            }
            throw new IllegalStateException("Could not find the index in the constructor '" + b9.a.c(this.f9198b) + "' for field with name '" + bVar.f9210c + "', unable to determine which argument in the constructor the field corresponds to. This is unexpected behavior, as we expect the RecordComponents to have the same names as the fields in the Java class, and that the order of the RecordComponents is the same as the order of the canonical constructor parameters.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a extends b {

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ boolean f9201d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ Method f9202e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ TypeAdapter f9203f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ TypeAdapter f9204g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ boolean f9205h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ boolean f9206i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(String str, Field field, boolean z10, Method method, TypeAdapter typeAdapter, TypeAdapter typeAdapter2, boolean z11, boolean z12) {
            super(str, field);
            this.f9201d = z10;
            this.f9202e = method;
            this.f9203f = typeAdapter;
            this.f9204g = typeAdapter2;
            this.f9205h = z11;
            this.f9206i = z12;
        }

        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.b
        void a(c9.a aVar, int i10, Object[] objArr) {
            Object c10 = this.f9204g.c(aVar);
            if (c10 == null && this.f9205h) {
                throw new m("null is not allowed as value for record component '" + this.f9210c + "' of primitive type; at path " + aVar.j());
            }
            objArr[i10] = c10;
        }

        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.b
        void b(c9.a aVar, Object obj) {
            Object c10 = this.f9204g.c(aVar);
            if (c10 != null || !this.f9205h) {
                if (this.f9201d) {
                    ReflectiveTypeAdapterFactory.b(obj, this.f9209b);
                } else if (this.f9206i) {
                    String g10 = b9.a.g(this.f9209b, false);
                    throw new j("Cannot set value of 'static final' " + g10);
                }
                this.f9209b.set(obj, c10);
            }
        }

        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.b
        void c(c9.c cVar, Object obj) {
            Object obj2;
            if (this.f9201d) {
                Method method = this.f9202e;
                if (method == null) {
                    ReflectiveTypeAdapterFactory.b(obj, this.f9209b);
                } else {
                    ReflectiveTypeAdapterFactory.b(obj, method);
                }
            }
            Method method2 = this.f9202e;
            if (method2 != null) {
                try {
                    obj2 = method2.invoke(obj, new Object[0]);
                } catch (InvocationTargetException e10) {
                    String g10 = b9.a.g(this.f9202e, false);
                    throw new j("Accessor " + g10 + " threw exception", e10.getCause());
                }
            } else {
                obj2 = this.f9209b.get(obj);
            }
            if (obj2 == obj) {
                return;
            }
            cVar.v(this.f9208a);
            this.f9203f.e(cVar, obj2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static abstract class b {

        /* renamed from: a  reason: collision with root package name */
        final String f9208a;

        /* renamed from: b  reason: collision with root package name */
        final Field f9209b;

        /* renamed from: c  reason: collision with root package name */
        final String f9210c;

        protected b(String str, Field field) {
            this.f9208a = str;
            this.f9209b = field;
            this.f9210c = field.getName();
        }

        abstract void a(c9.a aVar, int i10, Object[] objArr);

        abstract void b(c9.a aVar, Object obj);

        abstract void c(c9.c cVar, Object obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class c {

        /* renamed from: c  reason: collision with root package name */
        public static final c f9211c = new c(Collections.emptyMap(), Collections.emptyList());

        /* renamed from: a  reason: collision with root package name */
        public final Map f9212a;

        /* renamed from: b  reason: collision with root package name */
        public final List f9213b;

        public c(Map map, List list) {
            this.f9212a = map;
            this.f9213b = list;
        }
    }

    public ReflectiveTypeAdapterFactory(u uVar, com.google.gson.c cVar, Excluder excluder, JsonAdapterAnnotationTypeAdapterFactory jsonAdapterAnnotationTypeAdapterFactory, List list) {
        this.f9189a = uVar;
        this.f9190b = cVar;
        this.f9191c = excluder;
        this.f9192d = jsonAdapterAnnotationTypeAdapterFactory;
        this.f9193e = list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Object obj, AccessibleObject accessibleObject) {
        if (Modifier.isStatic(((Member) accessibleObject).getModifiers())) {
            obj = null;
        }
        if (d0.a(accessibleObject, obj)) {
            return;
        }
        String g10 = b9.a.g(accessibleObject, true);
        throw new j(g10 + " is not accessible and ReflectionAccessFilter does not permit making it accessible. Register a TypeAdapter for the declaring type, adjust the access filter or increase the visibility of the element and its declaring type.");
    }

    private b c(Gson gson, Field field, Method method, String str, com.google.gson.reflect.a aVar, boolean z10, boolean z11) {
        boolean z12;
        TypeAdapter typeAdapter;
        TypeAdapter typeAdapter2;
        TypeAdapter typeAdapterRuntimeTypeWrapper;
        boolean a10 = c0.a(aVar.c());
        int modifiers = field.getModifiers();
        boolean z13 = true;
        if (Modifier.isStatic(modifiers) && Modifier.isFinal(modifiers)) {
            z12 = true;
        } else {
            z12 = false;
        }
        z8.b bVar = (z8.b) field.getAnnotation(z8.b.class);
        if (bVar != null) {
            typeAdapter = this.f9192d.c(this.f9189a, gson, aVar, bVar, false);
        } else {
            typeAdapter = null;
        }
        if (typeAdapter == null) {
            z13 = false;
        }
        if (typeAdapter == null) {
            typeAdapter = gson.o(aVar);
        }
        TypeAdapter typeAdapter3 = typeAdapter;
        if (z10) {
            if (z13) {
                typeAdapterRuntimeTypeWrapper = typeAdapter3;
            } else {
                typeAdapterRuntimeTypeWrapper = new TypeAdapterRuntimeTypeWrapper(gson, typeAdapter3, aVar.d());
            }
            typeAdapter2 = typeAdapterRuntimeTypeWrapper;
        } else {
            typeAdapter2 = typeAdapter3;
        }
        return new a(str, field, z11, method, typeAdapter2, typeAdapter3, a10, z12);
    }

    private static IllegalArgumentException d(Class cls, String str, Field field, Field field2) {
        throw new IllegalArgumentException("Class " + cls.getName() + " declares multiple JSON fields named '" + str + "'; conflict is caused by fields " + b9.a.f(field) + " and " + b9.a.f(field2) + "\nSee " + f0.a("duplicate-fields"));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0108  */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r7v3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.c e(com.google.gson.Gson r24, com.google.gson.reflect.a r25, java.lang.Class r26, boolean r27, boolean r28) {
        /*
            Method dump skipped, instructions count: 364
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.e(com.google.gson.Gson, com.google.gson.reflect.a, java.lang.Class, boolean, boolean):com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$c");
    }

    private List f(Field field) {
        z8.c cVar = (z8.c) field.getAnnotation(z8.c.class);
        if (cVar == null) {
            return Collections.singletonList(this.f9190b.a(field));
        }
        String value = cVar.value();
        String[] alternate = cVar.alternate();
        if (alternate.length == 0) {
            return Collections.singletonList(value);
        }
        ArrayList arrayList = new ArrayList(alternate.length + 1);
        arrayList.add(value);
        Collections.addAll(arrayList, alternate);
        return arrayList;
    }

    private boolean g(Field field, boolean z10) {
        return !this.f9191c.c(field, z10);
    }

    @Override // com.google.gson.w
    public TypeAdapter create(Gson gson, com.google.gson.reflect.a aVar) {
        boolean z10;
        Class c10 = aVar.c();
        if (!Object.class.isAssignableFrom(c10)) {
            return null;
        }
        if (b9.a.l(c10)) {
            return new TypeAdapter() { // from class: com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.1
                @Override // com.google.gson.TypeAdapter
                public Object c(c9.a aVar2) {
                    aVar2.G();
                    return null;
                }

                @Override // com.google.gson.TypeAdapter
                public void e(c9.c cVar, Object obj) {
                    cVar.x();
                }

                public String toString() {
                    return "AnonymousOrNonStaticLocalClassAdapter";
                }
            };
        }
        s b10 = d0.b(this.f9193e, c10);
        if (b10 != s.BLOCK_ALL) {
            if (b10 == s.BLOCK_INACCESSIBLE) {
                z10 = true;
            } else {
                z10 = false;
            }
            boolean z11 = z10;
            if (b9.a.m(c10)) {
                return new RecordAdapter(c10, e(gson, aVar, c10, z11, true), z11);
            }
            return new FieldReflectionAdapter(this.f9189a.t(aVar), e(gson, aVar, c10, z11, false));
        }
        throw new j("ReflectionAccessFilter does not permit using reflection for " + c10 + ". Register a TypeAdapter for this type or adjust the access filter.");
    }
}
