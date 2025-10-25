package o0;

import id.l;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import kotlin.jvm.internal.n;
import o0.f;
import yc.g0;
import yc.k;
import yc.p;
import yc.w;
/* loaded from: classes.dex */
public final class c extends f {

    /* renamed from: a  reason: collision with root package name */
    private final Map f26906a;

    /* renamed from: b  reason: collision with root package name */
    private final b f26907b;

    /* loaded from: classes.dex */
    static final class a extends n implements l {

        /* renamed from: e  reason: collision with root package name */
        public static final a f26908e = new a();

        a() {
            super(1);
        }

        @Override // id.l
        /* renamed from: a */
        public final CharSequence invoke(Map.Entry entry) {
            String valueOf;
            m.e(entry, "entry");
            Object value = entry.getValue();
            if (value instanceof byte[]) {
                valueOf = k.G((byte[]) value, ", ", "[", "]", 0, null, null, 56, null);
            } else {
                valueOf = String.valueOf(entry.getValue());
            }
            return "  " + ((f.a) entry.getKey()).a() + " = " + valueOf;
        }
    }

    public /* synthetic */ c(Map map, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? new LinkedHashMap() : map, (i10 & 2) != 0 ? true : z10);
    }

    @Override // o0.f
    public Map a() {
        int r10;
        int b10;
        xc.k kVar;
        Set<Map.Entry> entrySet = this.f26906a.entrySet();
        r10 = p.r(entrySet, 10);
        b10 = g0.b(r10);
        LinkedHashMap linkedHashMap = new LinkedHashMap(od.g.b(b10, 16));
        for (Map.Entry entry : entrySet) {
            Object value = entry.getValue();
            if (value instanceof byte[]) {
                Object key = entry.getKey();
                byte[] bArr = (byte[]) value;
                byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
                m.d(copyOf, "copyOf(this, size)");
                kVar = new xc.k(key, copyOf);
            } else {
                kVar = new xc.k(entry.getKey(), entry.getValue());
            }
            linkedHashMap.put(kVar.c(), kVar.d());
        }
        return o0.a.b(linkedHashMap);
    }

    @Override // o0.f
    public Object b(f.a key) {
        m.e(key, "key");
        Object obj = this.f26906a.get(key);
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
            m.d(copyOf, "copyOf(this, size)");
            return copyOf;
        }
        return obj;
    }

    public final void e() {
        if (!this.f26907b.a()) {
            return;
        }
        throw new IllegalStateException("Do mutate preferences once returned to DataStore.".toString());
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0067 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof o0.c
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            o0.c r6 = (o0.c) r6
            java.util.Map r0 = r6.f26906a
            java.util.Map r2 = r5.f26906a
            r3 = 1
            if (r0 != r2) goto L10
            return r3
        L10:
            int r0 = r0.size()
            java.util.Map r2 = r5.f26906a
            int r2 = r2.size()
            if (r0 == r2) goto L1d
            return r1
        L1d:
            java.util.Map r6 = r6.f26906a
            boolean r0 = r6.isEmpty()
            if (r0 == 0) goto L27
        L25:
            r1 = r3
            goto L67
        L27:
            java.util.Set r6 = r6.entrySet()
            java.util.Iterator r6 = r6.iterator()
        L2f:
            boolean r0 = r6.hasNext()
            if (r0 == 0) goto L25
            java.lang.Object r0 = r6.next()
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0
            java.util.Map r2 = r5.f26906a
            java.lang.Object r4 = r0.getKey()
            java.lang.Object r2 = r2.get(r4)
            if (r2 == 0) goto L64
            java.lang.Object r0 = r0.getValue()
            boolean r4 = r0 instanceof byte[]
            if (r4 == 0) goto L5f
            boolean r4 = r2 instanceof byte[]
            if (r4 == 0) goto L64
            byte[] r0 = (byte[]) r0
            byte[] r2 = (byte[]) r2
            boolean r0 = java.util.Arrays.equals(r0, r2)
            if (r0 == 0) goto L64
            r0 = r3
            goto L65
        L5f:
            boolean r0 = kotlin.jvm.internal.m.a(r0, r2)
            goto L65
        L64:
            r0 = r1
        L65:
            if (r0 != 0) goto L2f
        L67:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: o0.c.equals(java.lang.Object):boolean");
    }

    public final void f() {
        e();
        this.f26906a.clear();
    }

    public final void g() {
        this.f26907b.b(true);
    }

    public final void h(f.b... pairs) {
        m.e(pairs, "pairs");
        e();
        if (pairs.length <= 0) {
            return;
        }
        f.b bVar = pairs[0];
        throw null;
    }

    public int hashCode() {
        int hashCode;
        int i10 = 0;
        for (Map.Entry entry : this.f26906a.entrySet()) {
            Object value = entry.getValue();
            if (value instanceof byte[]) {
                hashCode = Arrays.hashCode((byte[]) value);
            } else {
                hashCode = value.hashCode();
            }
            i10 += hashCode;
        }
        return i10;
    }

    public final Object i(f.a key) {
        m.e(key, "key");
        e();
        return this.f26906a.remove(key);
    }

    public final void j(f.a key, Object obj) {
        m.e(key, "key");
        k(key, obj);
    }

    public final void k(f.a key, Object obj) {
        m.e(key, "key");
        e();
        if (obj == null) {
            i(key);
        } else if (obj instanceof Set) {
            this.f26906a.put(key, o0.a.a((Set) obj));
        } else if (obj instanceof byte[]) {
            Map map = this.f26906a;
            byte[] bArr = (byte[]) obj;
            byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
            m.d(copyOf, "copyOf(this, size)");
            map.put(key, copyOf);
        } else {
            this.f26906a.put(key, obj);
        }
    }

    public String toString() {
        String X;
        X = w.X(this.f26906a.entrySet(), ",\n", "{\n", "\n}", 0, null, a.f26908e, 24, null);
        return X;
    }

    public c(Map preferencesMap, boolean z10) {
        m.e(preferencesMap, "preferencesMap");
        this.f26906a = preferencesMap;
        this.f26907b = new b(z10);
    }
}
