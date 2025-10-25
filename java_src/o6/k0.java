package o6;

import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Map;
import java.util.Objects;
import o6.r;
import org.apache.tika.fork.ForkServer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class k0 extends r {

    /* renamed from: h  reason: collision with root package name */
    static final r f27441h = new k0(null, new Object[0], 0);

    /* renamed from: e  reason: collision with root package name */
    private final transient Object f27442e;

    /* renamed from: f  reason: collision with root package name */
    final transient Object[] f27443f;

    /* renamed from: g  reason: collision with root package name */
    private final transient int f27444g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class a extends s {

        /* renamed from: c  reason: collision with root package name */
        private final transient r f27445c;

        /* renamed from: d  reason: collision with root package name */
        private final transient Object[] f27446d;

        /* renamed from: e  reason: collision with root package name */
        private final transient int f27447e;

        /* renamed from: f  reason: collision with root package name */
        private final transient int f27448f;

        /* renamed from: o6.k0$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        class C0275a extends q {
            C0275a() {
            }

            @Override // java.util.List
            /* renamed from: O */
            public Map.Entry get(int i10) {
                n6.m.g(i10, a.this.f27448f);
                int i11 = i10 * 2;
                Object obj = a.this.f27446d[a.this.f27447e + i11];
                Objects.requireNonNull(obj);
                Object obj2 = a.this.f27446d[i11 + (a.this.f27447e ^ 1)];
                Objects.requireNonNull(obj2);
                return new AbstractMap.SimpleImmutableEntry(obj, obj2);
            }

            @Override // o6.o
            public boolean n() {
                return true;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                return a.this.f27448f;
            }
        }

        a(r rVar, Object[] objArr, int i10, int i11) {
            this.f27445c = rVar;
            this.f27446d = objArr;
            this.f27447e = i10;
            this.f27448f = i11;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* renamed from: A */
        public r0 iterator() {
            return d().iterator();
        }

        @Override // o6.o, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            if (value == null || !value.equals(this.f27445c.get(key))) {
                return false;
            }
            return true;
        }

        @Override // o6.o
        int g(Object[] objArr, int i10) {
            return d().g(objArr, i10);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // o6.o
        public boolean n() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.f27448f;
        }

        @Override // o6.s
        q t() {
            return new C0275a();
        }
    }

    /* loaded from: classes.dex */
    static final class b extends s {

        /* renamed from: c  reason: collision with root package name */
        private final transient r f27450c;

        /* renamed from: d  reason: collision with root package name */
        private final transient q f27451d;

        b(r rVar, q qVar) {
            this.f27450c = rVar;
            this.f27451d = qVar;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* renamed from: A */
        public r0 iterator() {
            return d().iterator();
        }

        @Override // o6.o, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            if (this.f27450c.get(obj) != null) {
                return true;
            }
            return false;
        }

        @Override // o6.s, o6.o
        public q d() {
            return this.f27451d;
        }

        @Override // o6.o
        int g(Object[] objArr, int i10) {
            return d().g(objArr, i10);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // o6.o
        public boolean n() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.f27450c.size();
        }
    }

    /* loaded from: classes.dex */
    static final class c extends q {

        /* renamed from: c  reason: collision with root package name */
        private final transient Object[] f27452c;

        /* renamed from: d  reason: collision with root package name */
        private final transient int f27453d;

        /* renamed from: e  reason: collision with root package name */
        private final transient int f27454e;

        c(Object[] objArr, int i10, int i11) {
            this.f27452c = objArr;
            this.f27453d = i10;
            this.f27454e = i11;
        }

        @Override // java.util.List
        public Object get(int i10) {
            n6.m.g(i10, this.f27454e);
            Object obj = this.f27452c[(i10 * 2) + this.f27453d];
            Objects.requireNonNull(obj);
            return obj;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // o6.o
        public boolean n() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f27454e;
        }
    }

    private k0(Object obj, Object[] objArr, int i10) {
        this.f27442e = obj;
        this.f27443f = objArr;
        this.f27444g = i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static k0 p(int i10, Object[] objArr) {
        return q(i10, objArr, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static k0 q(int i10, Object[] objArr, r.a aVar) {
        if (i10 == 0) {
            return (k0) f27441h;
        }
        if (i10 == 1) {
            Object obj = objArr[0];
            Objects.requireNonNull(obj);
            Object obj2 = objArr[1];
            Objects.requireNonNull(obj2);
            h.a(obj, obj2);
            return new k0(null, objArr, 1);
        }
        n6.m.k(i10, objArr.length >> 1);
        Object r10 = r(objArr, i10, s.o(i10), 0);
        if (r10 instanceof Object[]) {
            Object[] objArr2 = (Object[]) r10;
            r.a.C0277a c0277a = (r.a.C0277a) objArr2[2];
            if (aVar != null) {
                aVar.f27494e = c0277a;
                Object obj3 = objArr2[0];
                int intValue = ((Integer) objArr2[1]).intValue();
                objArr = Arrays.copyOf(objArr, intValue * 2);
                r10 = obj3;
                i10 = intValue;
            } else {
                throw c0277a.a();
            }
        }
        return new k0(r10, objArr, i10);
    }

    private static Object r(Object[] objArr, int i10, int i11, int i12) {
        r.a.C0277a c0277a = null;
        if (i10 == 1) {
            Object obj = objArr[i12];
            Objects.requireNonNull(obj);
            Object obj2 = objArr[i12 ^ 1];
            Objects.requireNonNull(obj2);
            h.a(obj, obj2);
            return null;
        }
        int i13 = i11 - 1;
        int i14 = 0;
        if (i11 <= 128) {
            byte[] bArr = new byte[i11];
            Arrays.fill(bArr, (byte) -1);
            int i15 = 0;
            while (i14 < i10) {
                int i16 = (i14 * 2) + i12;
                int i17 = (i15 * 2) + i12;
                Object obj3 = objArr[i16];
                Objects.requireNonNull(obj3);
                Object obj4 = objArr[i16 ^ 1];
                Objects.requireNonNull(obj4);
                h.a(obj3, obj4);
                int a10 = n.a(obj3.hashCode());
                while (true) {
                    int i18 = a10 & i13;
                    int i19 = bArr[i18] & ForkServer.ERROR;
                    if (i19 == 255) {
                        bArr[i18] = (byte) i17;
                        if (i15 < i14) {
                            objArr[i17] = obj3;
                            objArr[i17 ^ 1] = obj4;
                        }
                        i15++;
                    } else if (obj3.equals(objArr[i19])) {
                        int i20 = i19 ^ 1;
                        Object obj5 = objArr[i20];
                        Objects.requireNonNull(obj5);
                        c0277a = new r.a.C0277a(obj3, obj4, obj5);
                        objArr[i20] = obj4;
                        break;
                    } else {
                        a10 = i18 + 1;
                    }
                }
                i14++;
            }
            if (i15 != i10) {
                return new Object[]{bArr, Integer.valueOf(i15), c0277a};
            }
            return bArr;
        } else if (i11 <= 32768) {
            short[] sArr = new short[i11];
            Arrays.fill(sArr, (short) -1);
            int i21 = 0;
            while (i14 < i10) {
                int i22 = (i14 * 2) + i12;
                int i23 = (i21 * 2) + i12;
                Object obj6 = objArr[i22];
                Objects.requireNonNull(obj6);
                Object obj7 = objArr[i22 ^ 1];
                Objects.requireNonNull(obj7);
                h.a(obj6, obj7);
                int a11 = n.a(obj6.hashCode());
                while (true) {
                    int i24 = a11 & i13;
                    int i25 = sArr[i24] & 65535;
                    if (i25 == 65535) {
                        sArr[i24] = (short) i23;
                        if (i21 < i14) {
                            objArr[i23] = obj6;
                            objArr[i23 ^ 1] = obj7;
                        }
                        i21++;
                    } else if (obj6.equals(objArr[i25])) {
                        int i26 = i25 ^ 1;
                        Object obj8 = objArr[i26];
                        Objects.requireNonNull(obj8);
                        c0277a = new r.a.C0277a(obj6, obj7, obj8);
                        objArr[i26] = obj7;
                        break;
                    } else {
                        a11 = i24 + 1;
                    }
                }
                i14++;
            }
            if (i21 != i10) {
                return new Object[]{sArr, Integer.valueOf(i21), c0277a};
            }
            return sArr;
        } else {
            int[] iArr = new int[i11];
            Arrays.fill(iArr, -1);
            int i27 = 0;
            while (i14 < i10) {
                int i28 = (i14 * 2) + i12;
                int i29 = (i27 * 2) + i12;
                Object obj9 = objArr[i28];
                Objects.requireNonNull(obj9);
                Object obj10 = objArr[i28 ^ 1];
                Objects.requireNonNull(obj10);
                h.a(obj9, obj10);
                int a12 = n.a(obj9.hashCode());
                while (true) {
                    int i30 = a12 & i13;
                    int i31 = iArr[i30];
                    if (i31 == -1) {
                        iArr[i30] = i29;
                        if (i27 < i14) {
                            objArr[i29] = obj9;
                            objArr[i29 ^ 1] = obj10;
                        }
                        i27++;
                    } else if (obj9.equals(objArr[i31])) {
                        int i32 = i31 ^ 1;
                        Object obj11 = objArr[i32];
                        Objects.requireNonNull(obj11);
                        c0277a = new r.a.C0277a(obj9, obj10, obj11);
                        objArr[i32] = obj10;
                        break;
                    } else {
                        a12 = i30 + 1;
                    }
                }
                i14++;
            }
            if (i27 != i10) {
                return new Object[]{iArr, Integer.valueOf(i27), c0277a};
            }
            return iArr;
        }
    }

    static Object s(Object obj, Object[] objArr, int i10, int i11, Object obj2) {
        if (obj2 == null) {
            return null;
        }
        if (i10 == 1) {
            Object obj3 = objArr[i11];
            Objects.requireNonNull(obj3);
            if (!obj3.equals(obj2)) {
                return null;
            }
            Object obj4 = objArr[i11 ^ 1];
            Objects.requireNonNull(obj4);
            return obj4;
        } else if (obj == null) {
            return null;
        } else {
            if (obj instanceof byte[]) {
                byte[] bArr = (byte[]) obj;
                int length = bArr.length - 1;
                int a10 = n.a(obj2.hashCode());
                while (true) {
                    int i12 = a10 & length;
                    int i13 = bArr[i12] & ForkServer.ERROR;
                    if (i13 == 255) {
                        return null;
                    }
                    if (obj2.equals(objArr[i13])) {
                        return objArr[i13 ^ 1];
                    }
                    a10 = i12 + 1;
                }
            } else if (obj instanceof short[]) {
                short[] sArr = (short[]) obj;
                int length2 = sArr.length - 1;
                int a11 = n.a(obj2.hashCode());
                while (true) {
                    int i14 = a11 & length2;
                    int i15 = sArr[i14] & 65535;
                    if (i15 == 65535) {
                        return null;
                    }
                    if (obj2.equals(objArr[i15])) {
                        return objArr[i15 ^ 1];
                    }
                    a11 = i14 + 1;
                }
            } else {
                int[] iArr = (int[]) obj;
                int length3 = iArr.length - 1;
                int a12 = n.a(obj2.hashCode());
                while (true) {
                    int i16 = a12 & length3;
                    int i17 = iArr[i16];
                    if (i17 == -1) {
                        return null;
                    }
                    if (obj2.equals(objArr[i17])) {
                        return objArr[i17 ^ 1];
                    }
                    a12 = i16 + 1;
                }
            }
        }
    }

    @Override // o6.r
    s e() {
        return new a(this, this.f27443f, 0, this.f27444g);
    }

    @Override // o6.r
    s f() {
        return new b(this, new c(this.f27443f, 0, this.f27444g));
    }

    @Override // o6.r
    o g() {
        return new c(this.f27443f, 1, this.f27444g);
    }

    @Override // o6.r, java.util.Map
    public Object get(Object obj) {
        Object s10 = s(this.f27442e, this.f27443f, this.f27444g, 0, obj);
        if (s10 == null) {
            return null;
        }
        return s10;
    }

    @Override // o6.r
    boolean i() {
        return false;
    }

    @Override // java.util.Map
    public int size() {
        return this.f27444g;
    }
}
