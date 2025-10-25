package s6;

import e7.c0;
import e7.i0;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* loaded from: classes.dex */
public final class v {

    /* renamed from: a  reason: collision with root package name */
    private final ConcurrentMap f29444a;

    /* renamed from: b  reason: collision with root package name */
    private c f29445b;

    /* renamed from: c  reason: collision with root package name */
    private final Class f29446c;

    /* renamed from: d  reason: collision with root package name */
    private final c7.a f29447d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f29448e;

    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private final Class f29449a;

        /* renamed from: b  reason: collision with root package name */
        private ConcurrentMap f29450b;

        /* renamed from: c  reason: collision with root package name */
        private c f29451c;

        /* renamed from: d  reason: collision with root package name */
        private c7.a f29452d;

        private b c(Object obj, Object obj2, c0.c cVar, boolean z10) {
            if (this.f29450b != null) {
                if (obj == null && obj2 == null) {
                    throw new GeneralSecurityException("at least one of the `fullPrimitive` or `primitive` must be set");
                }
                if (cVar.c0() == e7.z.ENABLED) {
                    c b10 = v.b(obj, obj2, cVar, this.f29450b);
                    if (z10) {
                        if (this.f29451c == null) {
                            this.f29451c = b10;
                        } else {
                            throw new IllegalStateException("you cannot set two primary primitives");
                        }
                    }
                    return this;
                }
                throw new GeneralSecurityException("only ENABLED key is allowed");
            }
            throw new IllegalStateException("addPrimitive cannot be called after build");
        }

        public b a(Object obj, Object obj2, c0.c cVar) {
            return c(obj, obj2, cVar, false);
        }

        public b b(Object obj, Object obj2, c0.c cVar) {
            return c(obj, obj2, cVar, true);
        }

        public v d() {
            ConcurrentMap concurrentMap = this.f29450b;
            if (concurrentMap != null) {
                v vVar = new v(concurrentMap, this.f29451c, this.f29452d, this.f29449a);
                this.f29450b = null;
                return vVar;
            }
            throw new IllegalStateException("build cannot be called twice");
        }

        public b e(c7.a aVar) {
            if (this.f29450b != null) {
                this.f29452d = aVar;
                return this;
            }
            throw new IllegalStateException("setAnnotations cannot be called after build");
        }

        private b(Class cls) {
            this.f29450b = new ConcurrentHashMap();
            this.f29449a = cls;
            this.f29452d = c7.a.f5047b;
        }
    }

    /* loaded from: classes.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        private final Object f29453a;

        /* renamed from: b  reason: collision with root package name */
        private final Object f29454b;

        /* renamed from: c  reason: collision with root package name */
        private final byte[] f29455c;

        /* renamed from: d  reason: collision with root package name */
        private final e7.z f29456d;

        /* renamed from: e  reason: collision with root package name */
        private final i0 f29457e;

        /* renamed from: f  reason: collision with root package name */
        private final int f29458f;

        /* renamed from: g  reason: collision with root package name */
        private final String f29459g;

        /* renamed from: h  reason: collision with root package name */
        private final g f29460h;

        c(Object obj, Object obj2, byte[] bArr, e7.z zVar, i0 i0Var, int i10, String str, g gVar) {
            this.f29453a = obj;
            this.f29454b = obj2;
            this.f29455c = Arrays.copyOf(bArr, bArr.length);
            this.f29456d = zVar;
            this.f29457e = i0Var;
            this.f29458f = i10;
            this.f29459g = str;
            this.f29460h = gVar;
        }

        public Object a() {
            return this.f29453a;
        }

        public final byte[] b() {
            byte[] bArr = this.f29455c;
            if (bArr == null) {
                return null;
            }
            return Arrays.copyOf(bArr, bArr.length);
        }

        public g c() {
            return this.f29460h;
        }

        public int d() {
            return this.f29458f;
        }

        public String e() {
            return this.f29459g;
        }

        public i0 f() {
            return this.f29457e;
        }

        public Object g() {
            return this.f29454b;
        }

        public e7.z h() {
            return this.f29456d;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class d implements Comparable {

        /* renamed from: a  reason: collision with root package name */
        private final byte[] f29461a;

        @Override // java.lang.Comparable
        /* renamed from: a */
        public int compareTo(d dVar) {
            byte[] bArr = this.f29461a;
            int length = bArr.length;
            byte[] bArr2 = dVar.f29461a;
            if (length != bArr2.length) {
                return bArr.length - bArr2.length;
            }
            int i10 = 0;
            while (true) {
                byte[] bArr3 = this.f29461a;
                if (i10 >= bArr3.length) {
                    return 0;
                }
                byte b10 = bArr3[i10];
                byte b11 = dVar.f29461a[i10];
                if (b10 != b11) {
                    return b10 - b11;
                }
                i10++;
            }
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof d)) {
                return false;
            }
            return Arrays.equals(this.f29461a, ((d) obj).f29461a);
        }

        public int hashCode() {
            return Arrays.hashCode(this.f29461a);
        }

        public String toString() {
            return f7.k.b(this.f29461a);
        }

        private d(byte[] bArr) {
            this.f29461a = Arrays.copyOf(bArr, bArr.length);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static c b(Object obj, Object obj2, c0.c cVar, ConcurrentMap concurrentMap) {
        Integer valueOf = Integer.valueOf(cVar.a0());
        if (cVar.b0() == i0.RAW) {
            valueOf = null;
        }
        c cVar2 = new c(obj, obj2, s6.d.a(cVar), cVar.c0(), cVar.b0(), cVar.a0(), cVar.Z().a0(), com.google.crypto.tink.internal.i.a().d(com.google.crypto.tink.internal.o.b(cVar.Z().a0(), cVar.Z().b0(), cVar.Z().Z(), cVar.b0(), valueOf), f.a()));
        ArrayList arrayList = new ArrayList();
        arrayList.add(cVar2);
        d dVar = new d(cVar2.b());
        List list = (List) concurrentMap.put(dVar, Collections.unmodifiableList(arrayList));
        if (list != null) {
            ArrayList arrayList2 = new ArrayList();
            arrayList2.addAll(list);
            arrayList2.add(cVar2);
            concurrentMap.put(dVar, Collections.unmodifiableList(arrayList2));
        }
        return cVar2;
    }

    public static b j(Class cls) {
        return new b(cls);
    }

    public Collection c() {
        return this.f29444a.values();
    }

    public c7.a d() {
        return this.f29447d;
    }

    public c e() {
        return this.f29445b;
    }

    public List f(byte[] bArr) {
        List list = (List) this.f29444a.get(new d(bArr));
        if (list == null) {
            return Collections.emptyList();
        }
        return list;
    }

    public Class g() {
        return this.f29446c;
    }

    public List h() {
        return f(s6.d.f29414a);
    }

    public boolean i() {
        return !this.f29447d.b().isEmpty();
    }

    private v(ConcurrentMap concurrentMap, c cVar, c7.a aVar, Class cls) {
        this.f29444a = concurrentMap;
        this.f29445b = cVar;
        this.f29446c = cls;
        this.f29447d = aVar;
        this.f29448e = false;
    }
}
