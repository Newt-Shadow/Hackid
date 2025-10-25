package kotlin.jvm.internal;

import id.Function2;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import yc.h0;
/* loaded from: classes2.dex */
public final class f implements pd.c, e {

    /* renamed from: b  reason: collision with root package name */
    public static final a f24975b = new a(null);

    /* renamed from: c  reason: collision with root package name */
    private static final Map f24976c;

    /* renamed from: d  reason: collision with root package name */
    private static final HashMap f24977d;

    /* renamed from: e  reason: collision with root package name */
    private static final HashMap f24978e;

    /* renamed from: f  reason: collision with root package name */
    private static final HashMap f24979f;

    /* renamed from: g  reason: collision with root package name */
    private static final Map f24980g;

    /* renamed from: a  reason: collision with root package name */
    private final Class f24981a;

    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String a(Class jClass) {
            String str;
            m.e(jClass, "jClass");
            String str2 = null;
            if (jClass.isAnonymousClass() || jClass.isLocalClass()) {
                return null;
            }
            if (jClass.isArray()) {
                Class<?> componentType = jClass.getComponentType();
                if (componentType.isPrimitive() && (str = (String) f.f24979f.get(componentType.getName())) != null) {
                    str2 = str + "Array";
                }
                if (str2 == null) {
                    return "kotlin.Array";
                }
                return str2;
            }
            String str3 = (String) f.f24979f.get(jClass.getName());
            if (str3 == null) {
                return jClass.getCanonicalName();
            }
            return str3;
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x003b, code lost:
            if (r2 == null) goto L12;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.String b(java.lang.Class r7) {
            /*
                r6 = this;
                java.lang.String r0 = "jClass"
                kotlin.jvm.internal.m.e(r7, r0)
                boolean r0 = r7.isAnonymousClass()
                r1 = 0
                if (r0 == 0) goto Le
                goto Lb4
            Le:
                boolean r0 = r7.isLocalClass()
                if (r0 == 0) goto L6a
                java.lang.String r0 = r7.getSimpleName()
                java.lang.reflect.Method r2 = r7.getEnclosingMethod()
                r3 = 2
                r4 = 36
                if (r2 == 0) goto L41
                kotlin.jvm.internal.m.b(r0)
                java.lang.StringBuilder r5 = new java.lang.StringBuilder
                r5.<init>()
                java.lang.String r2 = r2.getName()
                r5.append(r2)
                r5.append(r4)
                java.lang.String r2 = r5.toString()
                java.lang.String r2 = rd.n.G0(r0, r2, r1, r3, r1)
                if (r2 != 0) goto L3e
                goto L41
            L3e:
                r1 = r2
                goto Lb4
            L41:
                java.lang.reflect.Constructor r7 = r7.getEnclosingConstructor()
                if (r7 == 0) goto L62
                kotlin.jvm.internal.m.b(r0)
                java.lang.StringBuilder r2 = new java.lang.StringBuilder
                r2.<init>()
                java.lang.String r7 = r7.getName()
                r2.append(r7)
                r2.append(r4)
                java.lang.String r7 = r2.toString()
                java.lang.String r1 = rd.n.G0(r0, r7, r1, r3, r1)
                goto Lb4
            L62:
                kotlin.jvm.internal.m.b(r0)
                java.lang.String r1 = rd.n.F0(r0, r4, r1, r3, r1)
                goto Lb4
            L6a:
                boolean r0 = r7.isArray()
                if (r0 == 0) goto L9f
                java.lang.Class r7 = r7.getComponentType()
                boolean r0 = r7.isPrimitive()
                java.lang.String r2 = "Array"
                if (r0 == 0) goto L9c
                java.util.Map r0 = kotlin.jvm.internal.f.h()
                java.lang.String r7 = r7.getName()
                java.lang.Object r7 = r0.get(r7)
                java.lang.String r7 = (java.lang.String) r7
                if (r7 == 0) goto L9c
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r0.<init>()
                r0.append(r7)
                r0.append(r2)
                java.lang.String r7 = r0.toString()
                r1 = r7
            L9c:
                if (r1 != 0) goto Lb4
                goto L3e
            L9f:
                java.util.Map r0 = kotlin.jvm.internal.f.h()
                java.lang.String r1 = r7.getName()
                java.lang.Object r0 = r0.get(r1)
                r1 = r0
                java.lang.String r1 = (java.lang.String) r1
                if (r1 != 0) goto Lb4
                java.lang.String r1 = r7.getSimpleName()
            Lb4:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.jvm.internal.f.a.b(java.lang.Class):java.lang.String");
        }

        public final boolean c(Object obj, Class jClass) {
            m.e(jClass, "jClass");
            Map map = f.f24976c;
            m.c(map, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.MapsKt__MapsKt.get, V of kotlin.collections.MapsKt__MapsKt.get>");
            Integer num = (Integer) map.get(jClass);
            if (num != null) {
                return g0.g(obj, num.intValue());
            }
            if (jClass.isPrimitive()) {
                jClass = hd.a.b(hd.a.c(jClass));
            }
            return jClass.isInstance(obj);
        }
    }

    static {
        List k10;
        int r10;
        Map o10;
        int b10;
        String I0;
        String I02;
        k10 = yc.o.k(id.a.class, id.l.class, Function2.class, id.p.class, id.q.class, id.r.class, id.s.class, id.t.class, id.u.class, id.v.class, id.b.class, id.c.class, id.d.class, id.e.class, id.f.class, id.g.class, id.h.class, id.i.class, id.j.class, id.k.class, id.m.class, id.n.class, id.o.class);
        List list = k10;
        r10 = yc.p.r(list, 10);
        ArrayList arrayList = new ArrayList(r10);
        int i10 = 0;
        for (Object obj : list) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                yc.o.q();
            }
            arrayList.add(xc.q.a((Class) obj, Integer.valueOf(i10)));
            i10 = i11;
        }
        o10 = h0.o(arrayList);
        f24976c = o10;
        HashMap hashMap = new HashMap();
        hashMap.put("boolean", "kotlin.Boolean");
        hashMap.put("char", "kotlin.Char");
        hashMap.put("byte", "kotlin.Byte");
        hashMap.put("short", "kotlin.Short");
        hashMap.put("int", "kotlin.Int");
        hashMap.put("float", "kotlin.Float");
        hashMap.put("long", "kotlin.Long");
        hashMap.put("double", "kotlin.Double");
        f24977d = hashMap;
        HashMap hashMap2 = new HashMap();
        hashMap2.put("java.lang.Boolean", "kotlin.Boolean");
        hashMap2.put("java.lang.Character", "kotlin.Char");
        hashMap2.put("java.lang.Byte", "kotlin.Byte");
        hashMap2.put("java.lang.Short", "kotlin.Short");
        hashMap2.put("java.lang.Integer", "kotlin.Int");
        hashMap2.put("java.lang.Float", "kotlin.Float");
        hashMap2.put("java.lang.Long", "kotlin.Long");
        hashMap2.put("java.lang.Double", "kotlin.Double");
        f24978e = hashMap2;
        HashMap hashMap3 = new HashMap();
        hashMap3.put("java.lang.Object", "kotlin.Any");
        hashMap3.put("java.lang.String", "kotlin.String");
        hashMap3.put("java.lang.CharSequence", "kotlin.CharSequence");
        hashMap3.put("java.lang.Throwable", "kotlin.Throwable");
        hashMap3.put("java.lang.Cloneable", "kotlin.Cloneable");
        hashMap3.put("java.lang.Number", "kotlin.Number");
        hashMap3.put("java.lang.Comparable", "kotlin.Comparable");
        hashMap3.put("java.lang.Enum", "kotlin.Enum");
        hashMap3.put("java.lang.annotation.Annotation", "kotlin.Annotation");
        hashMap3.put("java.lang.Iterable", "kotlin.collections.Iterable");
        hashMap3.put("java.util.Iterator", "kotlin.collections.Iterator");
        hashMap3.put("java.util.Collection", "kotlin.collections.Collection");
        hashMap3.put("java.util.List", "kotlin.collections.List");
        hashMap3.put("java.util.Set", "kotlin.collections.Set");
        hashMap3.put("java.util.ListIterator", "kotlin.collections.ListIterator");
        hashMap3.put("java.util.Map", "kotlin.collections.Map");
        hashMap3.put("java.util.Map$Entry", "kotlin.collections.Map.Entry");
        hashMap3.put("kotlin.jvm.internal.StringCompanionObject", "kotlin.String.Companion");
        hashMap3.put("kotlin.jvm.internal.EnumCompanionObject", "kotlin.Enum.Companion");
        hashMap3.putAll(hashMap);
        hashMap3.putAll(hashMap2);
        Collection<String> values = hashMap.values();
        m.d(values, "<get-values>(...)");
        for (String str : values) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("kotlin.jvm.internal.");
            m.b(str);
            I02 = rd.b0.I0(str, '.', null, 2, null);
            sb2.append(I02);
            sb2.append("CompanionObject");
            xc.k a10 = xc.q.a(sb2.toString(), str + ".Companion");
            hashMap3.put(a10.c(), a10.d());
        }
        for (Map.Entry entry : f24976c.entrySet()) {
            int intValue = ((Number) entry.getValue()).intValue();
            hashMap3.put(((Class) entry.getKey()).getName(), "kotlin.Function" + intValue);
        }
        f24979f = hashMap3;
        b10 = yc.g0.b(hashMap3.size());
        LinkedHashMap linkedHashMap = new LinkedHashMap(b10);
        for (Map.Entry entry2 : hashMap3.entrySet()) {
            Object key = entry2.getKey();
            String str2 = (String) entry2.getValue();
            m.b(str2);
            I0 = rd.b0.I0(str2, '.', null, 2, null);
            linkedHashMap.put(key, I0);
        }
        f24980g = linkedHashMap;
    }

    public f(Class jClass) {
        m.e(jClass, "jClass");
        this.f24981a = jClass;
    }

    @Override // pd.c
    public String a() {
        return f24975b.a(e());
    }

    @Override // pd.c
    public String b() {
        return f24975b.b(e());
    }

    @Override // pd.c
    public boolean d(Object obj) {
        return f24975b.c(obj, e());
    }

    @Override // kotlin.jvm.internal.e
    public Class e() {
        return this.f24981a;
    }

    public boolean equals(Object obj) {
        if ((obj instanceof f) && m.a(hd.a.b(this), hd.a.b((pd.c) obj))) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return hd.a.b(this).hashCode();
    }

    public String toString() {
        return e() + " (Kotlin reflection is not available)";
    }
}
