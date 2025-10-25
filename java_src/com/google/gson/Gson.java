package com.google.gson;

import com.google.gson.internal.Excluder;
import com.google.gson.internal.bind.ArrayTypeAdapter;
import com.google.gson.internal.bind.CollectionTypeAdapterFactory;
import com.google.gson.internal.bind.DefaultDateTypeAdapter;
import com.google.gson.internal.bind.JsonAdapterAnnotationTypeAdapterFactory;
import com.google.gson.internal.bind.MapTypeAdapterFactory;
import com.google.gson.internal.bind.NumberTypeAdapter;
import com.google.gson.internal.bind.ObjectTypeAdapter;
import com.google.gson.internal.bind.ReflectiveTypeAdapterFactory;
import com.google.gson.internal.bind.SerializationDelegatingTypeAdapter;
import com.google.gson.internal.bind.TypeAdapters;
import com.google.gson.internal.c0;
import com.google.gson.internal.e0;
import com.google.gson.internal.x;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;
/* loaded from: classes.dex */
public final class Gson {
    static final d A = d.f9107d;
    static final String B = null;
    static final c C = b.f9099a;
    static final v D = u.f9367a;
    static final v E = u.f9368b;

    /* renamed from: z  reason: collision with root package name */
    static final t f9066z = null;

    /* renamed from: a  reason: collision with root package name */
    private final ThreadLocal f9067a = new ThreadLocal();

    /* renamed from: b  reason: collision with root package name */
    private final ConcurrentMap f9068b = new ConcurrentHashMap();

    /* renamed from: c  reason: collision with root package name */
    private final com.google.gson.internal.u f9069c;

    /* renamed from: d  reason: collision with root package name */
    private final JsonAdapterAnnotationTypeAdapterFactory f9070d;

    /* renamed from: e  reason: collision with root package name */
    final List f9071e;

    /* renamed from: f  reason: collision with root package name */
    final Excluder f9072f;

    /* renamed from: g  reason: collision with root package name */
    final c f9073g;

    /* renamed from: h  reason: collision with root package name */
    final Map f9074h;

    /* renamed from: i  reason: collision with root package name */
    final boolean f9075i;

    /* renamed from: j  reason: collision with root package name */
    final boolean f9076j;

    /* renamed from: k  reason: collision with root package name */
    final boolean f9077k;

    /* renamed from: l  reason: collision with root package name */
    final boolean f9078l;

    /* renamed from: m  reason: collision with root package name */
    final d f9079m;

    /* renamed from: n  reason: collision with root package name */
    final t f9080n;

    /* renamed from: o  reason: collision with root package name */
    final boolean f9081o;

    /* renamed from: p  reason: collision with root package name */
    final boolean f9082p;

    /* renamed from: q  reason: collision with root package name */
    final String f9083q;

    /* renamed from: r  reason: collision with root package name */
    final int f9084r;

    /* renamed from: s  reason: collision with root package name */
    final int f9085s;

    /* renamed from: t  reason: collision with root package name */
    final r f9086t;

    /* renamed from: u  reason: collision with root package name */
    final List f9087u;

    /* renamed from: v  reason: collision with root package name */
    final List f9088v;

    /* renamed from: w  reason: collision with root package name */
    final v f9089w;

    /* renamed from: x  reason: collision with root package name */
    final v f9090x;

    /* renamed from: y  reason: collision with root package name */
    final List f9091y;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class FutureTypeAdapter<T> extends SerializationDelegatingTypeAdapter<T> {

        /* renamed from: a  reason: collision with root package name */
        private TypeAdapter f9096a = null;

        FutureTypeAdapter() {
        }

        private TypeAdapter g() {
            TypeAdapter typeAdapter = this.f9096a;
            if (typeAdapter != null) {
                return typeAdapter;
            }
            throw new IllegalStateException("Adapter for type with cyclic dependency has been used before dependency has been resolved");
        }

        @Override // com.google.gson.TypeAdapter
        public Object c(c9.a aVar) {
            return g().c(aVar);
        }

        @Override // com.google.gson.TypeAdapter
        public void e(c9.c cVar, Object obj) {
            g().e(cVar, obj);
        }

        @Override // com.google.gson.internal.bind.SerializationDelegatingTypeAdapter
        public TypeAdapter f() {
            return g();
        }

        public void h(TypeAdapter typeAdapter) {
            if (this.f9096a == null) {
                this.f9096a = typeAdapter;
                return;
            }
            throw new AssertionError("Delegate is already set");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Gson(Excluder excluder, c cVar, Map map, boolean z10, boolean z11, boolean z12, boolean z13, d dVar, t tVar, boolean z14, boolean z15, r rVar, String str, int i10, int i11, List list, List list2, List list3, v vVar, v vVar2, List list4) {
        this.f9072f = excluder;
        this.f9073g = cVar;
        this.f9074h = map;
        com.google.gson.internal.u uVar = new com.google.gson.internal.u(map, z15, list4);
        this.f9069c = uVar;
        this.f9075i = z10;
        this.f9076j = z11;
        this.f9077k = z12;
        this.f9078l = z13;
        this.f9079m = dVar;
        this.f9080n = tVar;
        this.f9081o = z14;
        this.f9082p = z15;
        this.f9086t = rVar;
        this.f9083q = str;
        this.f9084r = i10;
        this.f9085s = i11;
        this.f9087u = list;
        this.f9088v = list2;
        this.f9089w = vVar;
        this.f9090x = vVar2;
        this.f9091y = list4;
        ArrayList arrayList = new ArrayList();
        arrayList.add(TypeAdapters.W);
        arrayList.add(ObjectTypeAdapter.f(vVar));
        arrayList.add(excluder);
        arrayList.addAll(list3);
        arrayList.add(TypeAdapters.C);
        arrayList.add(TypeAdapters.f9243m);
        arrayList.add(TypeAdapters.f9237g);
        arrayList.add(TypeAdapters.f9239i);
        arrayList.add(TypeAdapters.f9241k);
        TypeAdapter r10 = r(rVar);
        arrayList.add(TypeAdapters.c(Long.TYPE, Long.class, r10));
        arrayList.add(TypeAdapters.c(Double.TYPE, Double.class, e(z14)));
        arrayList.add(TypeAdapters.c(Float.TYPE, Float.class, f(z14)));
        arrayList.add(NumberTypeAdapter.f(vVar2));
        arrayList.add(TypeAdapters.f9245o);
        arrayList.add(TypeAdapters.f9247q);
        arrayList.add(TypeAdapters.b(AtomicLong.class, b(r10)));
        arrayList.add(TypeAdapters.b(AtomicLongArray.class, c(r10)));
        arrayList.add(TypeAdapters.f9249s);
        arrayList.add(TypeAdapters.f9254x);
        arrayList.add(TypeAdapters.E);
        arrayList.add(TypeAdapters.G);
        arrayList.add(TypeAdapters.b(BigDecimal.class, TypeAdapters.f9256z));
        arrayList.add(TypeAdapters.b(BigInteger.class, TypeAdapters.A));
        arrayList.add(TypeAdapters.b(x.class, TypeAdapters.B));
        arrayList.add(TypeAdapters.I);
        arrayList.add(TypeAdapters.K);
        arrayList.add(TypeAdapters.O);
        arrayList.add(TypeAdapters.Q);
        arrayList.add(TypeAdapters.U);
        arrayList.add(TypeAdapters.M);
        arrayList.add(TypeAdapters.f9234d);
        arrayList.add(DefaultDateTypeAdapter.f9159c);
        arrayList.add(TypeAdapters.S);
        if (com.google.gson.internal.sql.a.f9311a) {
            arrayList.add(com.google.gson.internal.sql.a.f9315e);
            arrayList.add(com.google.gson.internal.sql.a.f9314d);
            arrayList.add(com.google.gson.internal.sql.a.f9316f);
        }
        arrayList.add(ArrayTypeAdapter.f9153c);
        arrayList.add(TypeAdapters.f9232b);
        arrayList.add(new CollectionTypeAdapterFactory(uVar));
        arrayList.add(new MapTypeAdapterFactory(uVar, z11));
        JsonAdapterAnnotationTypeAdapterFactory jsonAdapterAnnotationTypeAdapterFactory = new JsonAdapterAnnotationTypeAdapterFactory(uVar);
        this.f9070d = jsonAdapterAnnotationTypeAdapterFactory;
        arrayList.add(jsonAdapterAnnotationTypeAdapterFactory);
        arrayList.add(TypeAdapters.X);
        arrayList.add(new ReflectiveTypeAdapterFactory(uVar, cVar, excluder, jsonAdapterAnnotationTypeAdapterFactory, list4));
        this.f9071e = Collections.unmodifiableList(arrayList);
    }

    private static void a(Object obj, c9.a aVar) {
        if (obj != null) {
            try {
                if (aVar.X() != c9.b.END_DOCUMENT) {
                    throw new q("JSON document was not fully consumed.");
                }
            } catch (c9.d e10) {
                throw new q(e10);
            } catch (IOException e11) {
                throw new j(e11);
            }
        }
    }

    private static TypeAdapter b(final TypeAdapter typeAdapter) {
        return new TypeAdapter() { // from class: com.google.gson.Gson.4
            @Override // com.google.gson.TypeAdapter
            /* renamed from: f */
            public AtomicLong c(c9.a aVar) {
                return new AtomicLong(((Number) TypeAdapter.this.c(aVar)).longValue());
            }

            @Override // com.google.gson.TypeAdapter
            /* renamed from: g */
            public void e(c9.c cVar, AtomicLong atomicLong) {
                TypeAdapter.this.e(cVar, Long.valueOf(atomicLong.get()));
            }
        }.b();
    }

    private static TypeAdapter c(final TypeAdapter typeAdapter) {
        return new TypeAdapter() { // from class: com.google.gson.Gson.5
            @Override // com.google.gson.TypeAdapter
            /* renamed from: f */
            public AtomicLongArray c(c9.a aVar) {
                ArrayList arrayList = new ArrayList();
                aVar.b();
                while (aVar.u()) {
                    arrayList.add(Long.valueOf(((Number) TypeAdapter.this.c(aVar)).longValue()));
                }
                aVar.g();
                int size = arrayList.size();
                AtomicLongArray atomicLongArray = new AtomicLongArray(size);
                for (int i10 = 0; i10 < size; i10++) {
                    atomicLongArray.set(i10, ((Long) arrayList.get(i10)).longValue());
                }
                return atomicLongArray;
            }

            @Override // com.google.gson.TypeAdapter
            /* renamed from: g */
            public void e(c9.c cVar, AtomicLongArray atomicLongArray) {
                cVar.e();
                int length = atomicLongArray.length();
                for (int i10 = 0; i10 < length; i10++) {
                    TypeAdapter.this.e(cVar, Long.valueOf(atomicLongArray.get(i10)));
                }
                cVar.h();
            }
        }.b();
    }

    static void d(double d10) {
        if (!Double.isNaN(d10) && !Double.isInfinite(d10)) {
            return;
        }
        throw new IllegalArgumentException(d10 + " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.");
    }

    private TypeAdapter e(boolean z10) {
        if (z10) {
            return TypeAdapters.f9252v;
        }
        return new TypeAdapter() { // from class: com.google.gson.Gson.1
            @Override // com.google.gson.TypeAdapter
            /* renamed from: f */
            public Double c(c9.a aVar) {
                if (aVar.X() == c9.b.NULL) {
                    aVar.H();
                    return null;
                }
                return Double.valueOf(aVar.S());
            }

            @Override // com.google.gson.TypeAdapter
            /* renamed from: g */
            public void e(c9.c cVar, Number number) {
                if (number == null) {
                    cVar.x();
                    return;
                }
                double doubleValue = number.doubleValue();
                Gson.d(doubleValue);
                cVar.q0(doubleValue);
            }
        };
    }

    private TypeAdapter f(boolean z10) {
        if (z10) {
            return TypeAdapters.f9251u;
        }
        return new TypeAdapter() { // from class: com.google.gson.Gson.2
            @Override // com.google.gson.TypeAdapter
            /* renamed from: f */
            public Float c(c9.a aVar) {
                if (aVar.X() == c9.b.NULL) {
                    aVar.H();
                    return null;
                }
                return Float.valueOf((float) aVar.S());
            }

            @Override // com.google.gson.TypeAdapter
            /* renamed from: g */
            public void e(c9.c cVar, Number number) {
                if (number == null) {
                    cVar.x();
                    return;
                }
                float floatValue = number.floatValue();
                Gson.d(floatValue);
                if (!(number instanceof Float)) {
                    number = Float.valueOf(floatValue);
                }
                cVar.D0(number);
            }
        };
    }

    private static TypeAdapter r(r rVar) {
        if (rVar == r.f9352a) {
            return TypeAdapters.f9250t;
        }
        return new TypeAdapter() { // from class: com.google.gson.Gson.3
            @Override // com.google.gson.TypeAdapter
            /* renamed from: f */
            public Number c(c9.a aVar) {
                if (aVar.X() == c9.b.NULL) {
                    aVar.H();
                    return null;
                }
                return Long.valueOf(aVar.E0());
            }

            @Override // com.google.gson.TypeAdapter
            /* renamed from: g */
            public void e(c9.c cVar, Number number) {
                if (number == null) {
                    cVar.x();
                } else {
                    cVar.J0(number.toString());
                }
            }
        };
    }

    public void A(Object obj, Type type, Appendable appendable) {
        try {
            z(obj, type, t(e0.c(appendable)));
        } catch (IOException e10) {
            throw new j(e10);
        }
    }

    public i B(Object obj) {
        if (obj == null) {
            return k.f9349a;
        }
        return C(obj, obj.getClass());
    }

    public i C(Object obj, Type type) {
        com.google.gson.internal.bind.b bVar = new com.google.gson.internal.bind.b();
        z(obj, type, bVar);
        return bVar.V0();
    }

    public Object g(c9.a aVar, com.google.gson.reflect.a aVar2) {
        boolean z10;
        t s10 = aVar.s();
        t tVar = this.f9080n;
        if (tVar != null) {
            aVar.t0(tVar);
        } else if (aVar.s() == t.LEGACY_STRICT) {
            aVar.t0(t.LENIENT);
        }
        try {
            try {
                try {
                    aVar.X();
                    z10 = false;
                    try {
                        return o(aVar2).c(aVar);
                    } catch (EOFException e10) {
                        e = e10;
                        if (z10) {
                            aVar.t0(s10);
                            return null;
                        }
                        throw new q(e);
                    }
                } finally {
                    aVar.t0(s10);
                }
            } catch (EOFException e11) {
                e = e11;
                z10 = true;
            }
        } catch (IOException e12) {
            throw new q(e12);
        } catch (AssertionError e13) {
            throw new AssertionError("AssertionError (GSON 2.12.0): " + e13.getMessage(), e13);
        } catch (IllegalStateException e14) {
            throw new q(e14);
        }
    }

    public Object h(i iVar, com.google.gson.reflect.a aVar) {
        if (iVar == null) {
            return null;
        }
        return g(new com.google.gson.internal.bind.a(iVar), aVar);
    }

    public Object i(i iVar, Type type) {
        return h(iVar, com.google.gson.reflect.a.b(type));
    }

    public Object j(Reader reader, com.google.gson.reflect.a aVar) {
        c9.a s10 = s(reader);
        Object g10 = g(s10, aVar);
        a(g10, s10);
        return g10;
    }

    public Object k(Reader reader, Type type) {
        return j(reader, com.google.gson.reflect.a.b(type));
    }

    public Object l(String str, com.google.gson.reflect.a aVar) {
        if (str == null) {
            return null;
        }
        return j(new StringReader(str), aVar);
    }

    public Object m(String str, Class cls) {
        return c0.b(cls).cast(l(str, com.google.gson.reflect.a.a(cls)));
    }

    public Object n(String str, Type type) {
        return l(str, com.google.gson.reflect.a.b(type));
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0051, code lost:
        r2.h(r4);
        r0.put(r7, r4);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.gson.TypeAdapter o(com.google.gson.reflect.a r7) {
        /*
            r6 = this;
            java.lang.String r0 = "type must not be null"
            java.util.Objects.requireNonNull(r7, r0)
            java.util.concurrent.ConcurrentMap r0 = r6.f9068b
            java.lang.Object r0 = r0.get(r7)
            com.google.gson.TypeAdapter r0 = (com.google.gson.TypeAdapter) r0
            if (r0 == 0) goto L10
            return r0
        L10:
            java.lang.ThreadLocal r0 = r6.f9067a
            java.lang.Object r0 = r0.get()
            java.util.Map r0 = (java.util.Map) r0
            if (r0 != 0) goto L26
            java.util.HashMap r0 = new java.util.HashMap
            r0.<init>()
            java.lang.ThreadLocal r1 = r6.f9067a
            r1.set(r0)
            r1 = 1
            goto L30
        L26:
            java.lang.Object r1 = r0.get(r7)
            com.google.gson.TypeAdapter r1 = (com.google.gson.TypeAdapter) r1
            if (r1 == 0) goto L2f
            return r1
        L2f:
            r1 = 0
        L30:
            com.google.gson.Gson$FutureTypeAdapter r2 = new com.google.gson.Gson$FutureTypeAdapter     // Catch: java.lang.Throwable -> L7f
            r2.<init>()     // Catch: java.lang.Throwable -> L7f
            r0.put(r7, r2)     // Catch: java.lang.Throwable -> L7f
            java.util.List r3 = r6.f9071e     // Catch: java.lang.Throwable -> L7f
            java.util.Iterator r3 = r3.iterator()     // Catch: java.lang.Throwable -> L7f
            r4 = 0
        L3f:
            boolean r5 = r3.hasNext()     // Catch: java.lang.Throwable -> L7f
            if (r5 == 0) goto L57
            java.lang.Object r4 = r3.next()     // Catch: java.lang.Throwable -> L7f
            com.google.gson.w r4 = (com.google.gson.w) r4     // Catch: java.lang.Throwable -> L7f
            com.google.gson.TypeAdapter r4 = r4.create(r6, r7)     // Catch: java.lang.Throwable -> L7f
            if (r4 == 0) goto L3f
            r2.h(r4)     // Catch: java.lang.Throwable -> L7f
            r0.put(r7, r4)     // Catch: java.lang.Throwable -> L7f
        L57:
            if (r1 == 0) goto L5e
            java.lang.ThreadLocal r2 = r6.f9067a
            r2.remove()
        L5e:
            if (r4 == 0) goto L68
            if (r1 == 0) goto L67
            java.util.concurrent.ConcurrentMap r7 = r6.f9068b
            r7.putAll(r0)
        L67:
            return r4
        L68:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "GSON (2.12.0) cannot handle "
            r1.append(r2)
            r1.append(r7)
            java.lang.String r7 = r1.toString()
            r0.<init>(r7)
            throw r0
        L7f:
            r7 = move-exception
            if (r1 == 0) goto L87
            java.lang.ThreadLocal r0 = r6.f9067a
            r0.remove()
        L87:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.Gson.o(com.google.gson.reflect.a):com.google.gson.TypeAdapter");
    }

    public TypeAdapter p(Class cls) {
        return o(com.google.gson.reflect.a.a(cls));
    }

    public TypeAdapter q(w wVar, com.google.gson.reflect.a aVar) {
        Objects.requireNonNull(wVar, "skipPast must not be null");
        Objects.requireNonNull(aVar, "type must not be null");
        if (this.f9070d.d(aVar, wVar)) {
            wVar = this.f9070d;
        }
        boolean z10 = false;
        for (w wVar2 : this.f9071e) {
            if (!z10) {
                if (wVar2 == wVar) {
                    z10 = true;
                }
            } else {
                TypeAdapter create = wVar2.create(this, aVar);
                if (create != null) {
                    return create;
                }
            }
        }
        if (!z10) {
            return o(aVar);
        }
        throw new IllegalArgumentException("GSON cannot serialize or deserialize " + aVar);
    }

    public c9.a s(Reader reader) {
        c9.a aVar = new c9.a(reader);
        t tVar = this.f9080n;
        if (tVar == null) {
            tVar = t.LEGACY_STRICT;
        }
        aVar.t0(tVar);
        return aVar;
    }

    public c9.c t(Writer writer) {
        if (this.f9077k) {
            writer.write(")]}'\n");
        }
        c9.c cVar = new c9.c(writer);
        cVar.W(this.f9079m);
        cVar.X(this.f9078l);
        t tVar = this.f9080n;
        if (tVar == null) {
            tVar = t.LEGACY_STRICT;
        }
        cVar.k0(tVar);
        cVar.d0(this.f9075i);
        return cVar;
    }

    public String toString() {
        return "{serializeNulls:" + this.f9075i + ",factories:" + this.f9071e + ",instanceCreators:" + this.f9069c + "}";
    }

    public String u(i iVar) {
        StringWriter stringWriter = new StringWriter();
        y(iVar, stringWriter);
        return stringWriter.toString();
    }

    public String v(Object obj) {
        if (obj == null) {
            return u(k.f9349a);
        }
        return w(obj, obj.getClass());
    }

    public String w(Object obj, Type type) {
        StringWriter stringWriter = new StringWriter();
        A(obj, type, stringWriter);
        return stringWriter.toString();
    }

    public void x(i iVar, c9.c cVar) {
        t q10 = cVar.q();
        boolean s10 = cVar.s();
        boolean k10 = cVar.k();
        cVar.X(this.f9078l);
        cVar.d0(this.f9075i);
        t tVar = this.f9080n;
        if (tVar != null) {
            cVar.k0(tVar);
        } else if (cVar.q() == t.LEGACY_STRICT) {
            cVar.k0(t.LENIENT);
        }
        try {
            try {
                e0.b(iVar, cVar);
            } catch (IOException e10) {
                throw new j(e10);
            } catch (AssertionError e11) {
                throw new AssertionError("AssertionError (GSON 2.12.0): " + e11.getMessage(), e11);
            }
        } finally {
            cVar.k0(q10);
            cVar.X(s10);
            cVar.d0(k10);
        }
    }

    public void y(i iVar, Appendable appendable) {
        try {
            x(iVar, t(e0.c(appendable)));
        } catch (IOException e10) {
            throw new j(e10);
        }
    }

    public void z(Object obj, Type type, c9.c cVar) {
        TypeAdapter o10 = o(com.google.gson.reflect.a.b(type));
        t q10 = cVar.q();
        t tVar = this.f9080n;
        if (tVar != null) {
            cVar.k0(tVar);
        } else if (cVar.q() == t.LEGACY_STRICT) {
            cVar.k0(t.LENIENT);
        }
        boolean s10 = cVar.s();
        boolean k10 = cVar.k();
        cVar.X(this.f9078l);
        cVar.d0(this.f9075i);
        try {
            try {
                try {
                    o10.e(cVar, obj);
                } catch (AssertionError e10) {
                    throw new AssertionError("AssertionError (GSON 2.12.0): " + e10.getMessage(), e10);
                }
            } catch (IOException e11) {
                throw new j(e11);
            }
        } finally {
            cVar.k0(q10);
            cVar.X(s10);
            cVar.d0(k10);
        }
    }
}
